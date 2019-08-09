// 1.引入两个模块
const express = require('express');
const mysql = require('mysql');
// 2.创建连接池
var pool = mysql.createPool({
	host: "127.0.0.1",
	user: "root",
	port: "3306",
	password: "",
	database: "bj520",
	connectionLimit: 15
})
// 3.创建express对象
var server = express();
// 4.指定静态目录
server.use(express.static("public"));
// 5.处理跨域请求
const cors = require('cors');
server.use(cors({
	origin: ["http://127.0.0.1:8080", "http://localhost:8080"],
	// origin: [],
	credentials: true //验证
}));
// 6.添加session功能
const session = require('express-session');
server.use(session({
	secret: "eternalhouri",
	resave: true,
	saveUninitialized: true
}));
// 9.绑定监听端口
server.listen(3000);

// 功能一：请求客照欣赏照片
server.get("/photoShow", (req, res) => {
	// 1.接收脚手架参数
	var pname = req.query.pname == "" ? augfourth : req.query.pname;
	// var cid = req.query.cid //== "" ? 1 : req.query.cid;
	//SQL
	// var sql = "SELECT pics FROM customerPhoto WHERE pname=?";
	var sql = "SELECT pics,cid FROM customerPhoto WHERE pname=?";
	// var sql = "SELECT pics,ptime,pname FROM customerPhoto WHERE cid=?";
	pool.query(sql, [pname], (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: 'succeed',
			data: result
		});
	})
	// pool.query(sql, [cid], (err, result) => {
	//     if (err) throw err;
	//     res.send({ code: 1, msg: 'succeed', data: result });
	// })
})

//功能二：请求客照列表
server.get("/photoList", (req, res) => {
	var pno = req.query.pno;
	var psize = 9;
	if (!pno) {
		pno = 1
	}
	var start = parseInt((pno - 1) * psize);
	pool.query("SELECT cid,pics,ptime,pname FROM customerPhoto LIMIT ?,?", [start, psize], (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: "succeed",
			data: result
		});
	})
})

// 请求主页city轮播图片及文字
server.get("/city", (req, res) => {
	var sql = "SELECT did, nameEng,nameCHI,car_img FROM city_carousel";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: 'succeed',
			data: result
		});
	})
})
// 请求主页customer轮播图片及文字
server.get("/customerphoto", (req, res) => {
	var sql = "SELECT cid, pname,ptime,pics FROM customerphoto WHERE cid!=1";
	pool.query(sql, (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: 'succeed',
			data: result
		});
	})
})

//客户评价列表
server.get("/list", (req, res) => {
	console.log(req.query)
	var psize = req.query.psize;
	var pnum = req.query.pnum;
	if (!pnum) {
		pnum = 1
	};
	if (!psize) {
		psize = 6
	};
	psize = parseInt(psize);
	var start = parseInt((pnum - 1) * psize);
	var sql = "select id,title,subtitle,city,updateTime,img from customerList limit ?,?";

	pool.query(sql, [start, psize], (err, result) => {
		if (err) throw err;
		if (result.length > 0) {
			res.send({
				code: 1,
				msg: "查询成功",
				data: result
			})
		} else {
			res.send({
				code: -1,
				msg: "查询失败"
			})
		}
	})
});
//客户评价详情
server.get("/details", (req, res) => {
	var cid = req.query.cid;
	if (!cid) {
		cid = 1
	}
	var sql = "select classnav,title,subtitle,img,details from evaluation where cid=?"
	// var sql="select classnav,title,subtitle,img,details from evaluation "
	pool.query(sql, [cid], (err, result) => {
		if (err) throw err;
		if (result.length > 0) {
			res.send({
				code: 1,
				msg: "查询成功",
				data: result
			})
		} else {
			res.send({
				code: -1,
				msg: "查询失败"
			})
		}
	})
});
//details 右边列表图   查询当前页以及下两个
server.get("/li", (req, res) => {
	console.log(req.query)
	var cid = parseInt(req.query.cid)
	var sql = "select id ,title,subtitle,img from customerList where id in (?,?,?)";
	pool.query(sql, [cid, cid + 1, cid + 2], (err, result) => {
		if (err) throw err;
		if (result.length > 0) {
			res.send({
				code: 1,
				msg: "查询成功",
				data: result
			})
		} else {
			res.send({
				code: -1,
				msg: "查询失败"
			})
		}
	})
});



//旅拍城市
server.get("/travel", (req, res) => {
	console.log(req.query)
	var address = req.query.address == "" ? '厦门' : req.query.address;
	// console.log( del)
	// var sql="select tname,href,pics from travel_image where tname=?";
	var sql = "select del,address,href,pics from travel_image where address=?"
	pool.query(sql, [address], (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: "success",
			data: result
		})
		console.log(result)
	})
})
//客戶婚紗照
server.get("/travelList", (req, res) => {

	pool.query("SELECT del,address,href,pics FROM travel_image ", (err, result) => {
		if (err) throw err;
		res.send({
			code: 1,
			msg: "succeed",
			data: result
		});
		console.log(result)
	})
})