const response = {
  success: (res, data, message) => {
      const result = {
        success: true,
        code:200,
        status:'OK',
        message,
        data
      }
      res.json(result)
  },
  error: (res, data, message) => {
    const error = {
      success: false,
      code: 500,
      status: 'Error',
      message,
      data
    }
    res.status(500).json(error)
  },
  failed:(res,data, message) => {
    const failed = {
      success: false,
      code: 402,
      status: 'Bad request',
      message,
      data
    }
    res.json(failed)
  }
  
}

module.exports = response