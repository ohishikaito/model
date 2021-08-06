#!/bin/bash

function date_wrapper() {
    command="date --rfc-3339=$1"
    echo "$ ${command}"
    echo -e "`${command}`\n"
}


echo -e "--- date command output with RFC 2822 format ---"
command="date --rfc-2822"
echo "$ ${command}"
echo -e "`${command}`\n"


echo -e "--- date command output with RFC 3399 format ---"
for format in date seconds ns
do
    date_wrapper ${format}
done