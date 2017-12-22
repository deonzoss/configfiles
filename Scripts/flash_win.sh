#!/bin/bash

value=.1

transset-df -a --dec $value
sleep .075
transset-df -a --inc $value
sleep .075
transset-df -a --dec $value
sleep .075
transset-df -a --inc $value 
