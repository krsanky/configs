#!/usr/bin/env python3

import os
from time import sleep

def main():
	delay = 1.0 / 1200
	while True:
		byte = os.read(0, 1)
		if not byte:
			break
		os.write(1, byte)
		sleep(delay)

if __name__ == '__main__':
	main()

