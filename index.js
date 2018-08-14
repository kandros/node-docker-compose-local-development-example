const http = require('http')

const port = 4000

const server = http.createServer((req, res) => {
  if (req.url === '/uptime') {
    res.end(process.uptime().toString())
    return
  }

  res.end('ciaone')
})

server.listen(port, () => console.log(`listening on port ${port}`))
