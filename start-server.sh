#!/bin/zsh
PORT="${1:-5500}"
DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Portfolio running at http://127.0.0.1:${PORT}"
echo "Press Ctrl+C to stop."
ruby -r webrick -e "WEBrick::HTTPServer.new(Port: ${PORT}, DocumentRoot: '${DIR}').start"
