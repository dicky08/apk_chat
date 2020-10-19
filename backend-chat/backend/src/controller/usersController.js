const {getAllUsersModel,registerUsersModel,getEmail,updateUsers,updateStatus,getId,loginUsers,UpdateRefreshToken,deleteMsg} = require('../model/usersModel')
const bcrypt = require('bcrypt')
const { emailSend } = require('../helper/sendEmail')
const jwt = require('jsonwebtoken')
const { JWT_REGIS,JWT_PRIVATE,JWT_REFRESH } = require('../helper/env')
const {success,failed,error} = require('../helper/response')
const upload = require('../helper/upload')
const path = require('path')
const fs = require('fs')

const usersController = {
  getAllUserController: (req,res) => {
    getAllUsersModel()
    .then((result) => {
      res.json({
        msg: 'Success get All data',
        data: result
      })
    }).catch((err) => {
        error(res,[],err.message)
    });
  },
  getDetailUserController: (req,res) => {
    const id = req.params.id
    getId(id)
    .then((result) => {
      res.json({
        msg: 'Success get detail All data',
        data: result
      })
    }).catch((err) => {
        error(res,[],err.message)
    });
  },
  registertUsersController: async (req,res) => {
    const body = req.body
    const salt = await bcrypt.genSalt(10)
    const hashPassword = await bcrypt.hash(body.password, salt)
    const data = new Date()
    const hashUsername = data.getTime().toString()
    const generateFullname = body.full_name.split(' ')
    let hashUser = generateFullname[0].concat(hashUsername.slice(8,15))
    const dataUsers = {
      full_name:body.full_name,
      email: body.email,
      username: hashUser,
      password:hashPassword
    }
    try {
      const userDatabase = await getEmail (dataUsers)
      if (userDatabase.length > 0) {
        res.json({
          message: 'Email or Username already registered!'
        })
      }else{
        const result = await registerUsersModel(dataUsers)
        emailSend(dataUsers.email)
          res.json({
            message:'Success Registration',
            status:true,
            data: result
          })
      }
    } catch (error) {
          error(res,[],error.message)
    }
  },
  loginUsersController: async (req,res) => {
    const body = req.body
    try {
      const databaseUser = await loginUsers(body)
      if (databaseUser.length>0) {
        if (databaseUser[0].status===1) {
          
          const id =databaseUser[0].id
          const fullname =databaseUser[0].full_name
          const image =databaseUser[0].image
          const hashData = {
            id:id,
            email: body.email
          }
          const matchPass = await bcrypt.compare(body.password, databaseUser[0].password)
          const refresh =  jwt.sign(hashData,JWT_REFRESH)
          if (matchPass) {
            jwt.sign(hashData,JWT_PRIVATE, {expiresIn:'20s'}, async (err, geToken) => {
              if (err) {
                failed(res,[],'Error hash')
              }else{
                await UpdateRefreshToken(refresh,id)
                success(res,{id:hashData.id,fullname:fullname,image:image,refreshtoken: refresh,tokenaccess:geToken}, 'Success Login')
              }
            })
          }else{
            failed(res,[], 'Wrong password!')
          }
        }else{
          failed(res,[], 'Email has not been actived!')
        }
      }else{
          failed(res,[], 'Email has not been registered!')
      }
    } catch (error) {
          error(res,[],error.message)
    }
  },
  updateUsersController:(req,res) => {
    upload.single('image')(req,res,async (err)=> {
      if (err) {
        if (err.code==='LIMIT_FILE_SIZE') {
          res.json({
            message: 'File to large'
          })
        }else{
          success(res,[],'Type file must be jpg,jpeg or png')
        }
      }else{
        
        try {
          const body = req.body 
          const id = req.params.id
          const dataUser = await getId(id)
          const imgDatabase = dataUser[0].image
          body.image = !req.file?'':req.file.filename
          if (body.image) {
            if (imgDatabase==='default.jpg') {
              const updateImgDefault = await updateUsers(body,id)
              success(res,updateImgDefault,'Success update img default')
            }else{
              let oldPath = path.join(__dirname + `/../../src/img/${dataUser[0].image}`);
              fs.unlink(oldPath, function (err) {
              if (err) throw err;
              console.log('Deleted');
            })
            const result =  await updateUsers(body,id)
            success(res,result,'Success update user')
            }
          }else{
           body.image = dataUser[0].image
           const results = await updateUsers(body,id)
            success(res,results,'Update user success without image')
          }
        } catch (error) {
          error(res,[],error.message)
        }
      }
    }) 
  },
  verify:(req,res) => {
    const token  = req.params.token
    if (token) {
        jwt.verify(token,JWT_REGIS, async (err,decode) => {
          if (err) {
            failed(res,[],'Failed verify')
          }else{
            try {
              const verification = await updateStatus(decode.email)
              success(res,{verification:verification,email:decode.email},'Success verification')
            } catch (error) {
              error(res,[], error.message)
            }
          }
        })
    }else{
        res.json({
          message: 'Failed'
        })
    }
  },
  refreshToken:(req,res) => {
    const newToken  =req.body.token
    if (newToken) {
        jwt.verify(newToken,JWT_REFRESH,(err,result) => {
          if (err) {
            
          }else{
            jwt.sign({id:result.id,email:result.email},JWT_PRIVATE,{expiresIn:'30s'}, (err,results) => {
              if (err) {
                failed(res,[],'Reresh token failed')
              }else{
               success(res,{newToken:results}, 'Success refresh token')
              }
            })
          }
        })
    }else{
      failed(res,[],'Token null')
    }
  },
  deleteMessage: async (req,res) => {
    try {
      const id = req.params.id
      const deleteMessage = await deleteMsg(id)
      success(res,deleteMessage, 'Delete Message Success')
    } catch (err) {
      error(res,[],err.message)
    }
  }
  
}

module.exports = usersController