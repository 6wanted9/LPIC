#!/bin/bash
ls --hide temp_list.txt > temp_list.txt
sort temp_list.txt list.txt | uniq -u > sort_list.txt
sort temp_list.txt sort_list.txt | uniq -D | uniq
rm temp_list.txt
rm sort_list.txt
