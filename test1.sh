#!/bin/bash
game=('st' 'jd' 'bu')
num=$[RANDOM%3]
pc=${game[$num]}
echo $pc
