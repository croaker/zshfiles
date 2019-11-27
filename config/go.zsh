export GOROOT=/usr/local/opt/go/libexec

if [ -d "$GOROOT" ]; then
  export GOPATH=$HOME
  export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
else 
  unset GOROOT
fi
