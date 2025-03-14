#!/bin/bash
echo "Running post-create setup..."

# Initialize Go workspace
mkdir -p /workspace/go/src /workspace/go/bin /workspace/go/pkg
export GOPATH=/workspace/go
export PATH=$PATH:$GOPATH/bin

# Install additional Go tools (optional)
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/bootdotdev/bootdev@latest

# Clone a Go project (optional)
git clone https://github.com/example/go-project.git /workspace/go/src/project