#!/bin/bash
read -rp "Enter target IP or domain: " target
nmap -F "$target"
