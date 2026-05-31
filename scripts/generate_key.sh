#!/bin/bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/royal-hotel-dev-key -C royal-hotel-dev -N ''
chmod 400 ~/.ssh/royal-hotel-dev-key
