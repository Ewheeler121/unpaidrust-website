#!/bin/bash

cargo build --release

rsync -avz --delete -e "ssh -i unpaidrust-website-key.pem" target/release/unpaidrust-website admin@unpaidrust.dev:~ 
rsync -avz --delete -e "ssh -i unpaidrust-website-key.pem" run.sh admin@unpaidrust.dev:~ 
rsync -ravz --delete -e "ssh -i unpaidrust-website-key.pem" static admin@unpaidrust.dev:~ 
