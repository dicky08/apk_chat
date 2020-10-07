const jwt = require('jsonwebtoken')
const { JWT_PRIVATE } = require('../helper/env')
const { failed } = require('./response')

module.exports = {
    authentication: (req, res, next) => {
        const token = req.headers.token
        if (token === undefined || token === '') {
            failed(res, [], 'Token is required ')
          } else {
            next()
          }
        },
        authorisazation: (req, res, next) => {
          const token = req.headers.token
          jwt.verify(token, JWT_PRIVATE, (err, decode) => {
            if (err && err.name === 'TokenExpiredError') {
              failed(res, [], 'Token Expired ')
            } else if (err && err.name === 'JsonWebTokenError') {
              failed(res, 'Unauthorized', [], 'Failed authentication')
            } else {
                next()
            }
        })
    }
    // admin: (req,res,next) => {
    //     const token = req.headers.token
    //     jwt.verify(token,JWT_PRIVATE, (err,decoded) => {
    //         if (err && err.name==='TokenExpiredError') {
    //             res.status(405).send({
    //               msg:'Expired Admin'
    //             })
    //         }else if(err&&err.name==='JsonWebTokenError'){
    //             res.status(401)
    //             tokenFailed(res, 'Unauthorized', [], 'Failed authentication')
    //         }else{
    //             const level = decoded.level
    //             const admin = 0
    //             if (level===admin) {
    //                 next()
    //             }else{
    //                 res.status(403)
    //                 res.json({
    //                    Message: 'Access denied/forbidden, only admin can access this page!',
    //                    Status: 'Denied',
    //                    Code: 403
    //                 })
    //             }         
    //         }
    //     })
    // }

}