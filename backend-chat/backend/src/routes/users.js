const express = require('express')
const router = express.Router()
const {authentication,authorisazation} = require('../helper/authentikasi')
const {
getAllUserController, registertUsersController,verify,updateUsersController,loginUsersController,refreshToken,getDetailUserController,deleteMessage
} = require('../controller/usersController')
// const { } = require('')

router
.get('/getAll',authentication,authorisazation, getAllUserController)
.get('/getDetail/:id', getDetailUserController)
.get('/verify/:token', verify)
.post('/register', registertUsersController)
.post('/login', loginUsersController)
.post('/refreshtoken', refreshToken)
.put('/update/:id', updateUsersController)
.delete('/deleteMessage/:id', deleteMessage)

module.exports = router