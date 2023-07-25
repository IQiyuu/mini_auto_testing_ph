#!/bin/bash
make re
./philo 1 200 200 200 | grep "dead" > p1 #meurt
./philo 5 800 200 200 5 | grep "eating" | wc -l > p3 #25 lignes
./philo 4 310 200 200 | grep "dead" > p4 #meurt
./philo 4 500 200 1.2 > p5 #invalid argument
./philo 4 500 200 1.2 2> p5
./philo 4 0 200 200 > p6 #invallid argument
./philo 4 0 200 200 2> p6
./philo 4 -500 200 200 > p7 #invallid argument
./philo 4 -500 200 200 2> p7
./philo 4 500 200 2147483647 > p8 #mort a 500 ms
./philo 4 214748364732 200 200 > p9 #invalid arg
./philo 4 214748364732 200 200 2> p9
./philo 4 200 210 200 | grep "dead" > p10