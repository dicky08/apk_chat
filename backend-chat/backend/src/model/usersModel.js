const db = require('../config/db_api_chat')

const userModel = {
getAllUsersModel: () => {
      return new Promise((resolve,reject) => {
        db.query(`SELECT * FROM users`, (err,result) =>{
          err?reject(new Error(err)) : resolve(result)
        })
      })
    },
getEmail: (data) => {
  return new Promise((resolve,reject) => {
    db.query(`SELECT * FROM users WHERE email='${data.email}'`, (err,result) => {
      err?reject(new Error(err)) : resolve(result)
    })
  })
},
getId: (id) => {
  return new Promise((resolve,reject) => {
    db.query(`SELECT * FROM users WHERE id=${id}`, (err,result) => {
      err?reject(new Error(err)) : resolve(result)
    })
  })
},
registerUsersModel: (data) => {
      return new Promise((resolve, reject) => {
          db.query(
              `INSERT INTO users (full_name,email,username,password,image,status) 
                VALUES('${data.full_name}','${data.email}','${data.username}','${data.password}','default.jpg',0)`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err));
                  } else {
                      resolve(result);
                  }
              }
          );
      });
  },
  // Login
  loginUsers: (data) => {
      return new Promise((resolve, reject) => {
          db.query(`SELECT * FROM users where email='${data.email}'`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
              })
      })
  },
  updateStatus: (email) => {
      return new Promise((resolve, reject) => {
          db.query(`UPDATE users SET status=1 WHERE email='${email}'`,
              (err, sukses) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(sukses)
                  }
              })
      })
  },
  getLevel: (level) => {
      return new Promise((resolve, reject) => {
          db.query(`SELECT * FROM users WHERE level='${level}'`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
              })
      })
  },
  UpdateRefreshToken: (token, id) => {
      return new Promise((resolve, reject) => {
          db.query(`UPDATE users SET refreshToken ='${token}' WHERE id = '${id}'`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
              })
      })
  },
  deleteModel: (id) => {
      return new Promise((resolve, reject) => {
          db.query(`DELETE FROM users WHERE id=${id}`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
            })
      })
  },
  updateUserToken: (token,id) => {
      return new Promise((resolve, reject) => {
          db.query(`UPDATE users SET token='${token}' WHERE  id ='${id}'`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
            })
      })
  },
  deleteModelToken: (id) => {
      return new Promise((resolve, reject) => {

          db.query(`UPDATE users SET refreshToken=null WHERE  id ='${id}'`,
              (err, result) => {
                  if (err) {
                      reject(new Error(err))
                  } else {
                      resolve(result)
                  }
            })
      })
  },
  updatePatchData: (data, id) => {
      return new Promise((resolve, reject) => {
          db.query(`UPDATE users SET ? WHERE id= ? `, [data, id], (err, result) => {
              if (err) {
                  reject(new Error(err))
              } else {
                  resolve(result)
              }
          })
      })
  },
  updateUsers:(data, id) => {
    return new Promise((resolve,reject) => {
    db.query(`UPDATE users SET 
    full_name='${data.full_name}',
    image='${data.image}',
    city='${data.city}',
    address='${data.address}',
    phone='${data.phone}',
    bio='${data.bio}'
    WHERE id = '${id}'`,
    (err,result) => {
      if (err) {
        reject(new Error(err))
      }else{
        resolve(result)
      }
    })
  })
},
deleteMsg: (id) => {
  return new Promise((resolve, reject) => {
    db.query(`DELETE FROM message WHERE id=${id}`, (err,result) => {
      err?reject(new Error(err.message)): resolve(result)
    })
  })
}
}

module.exports = userModel