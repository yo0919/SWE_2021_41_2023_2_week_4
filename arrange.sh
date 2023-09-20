#!/bin/bash

for file in files/*; do
    # 첫 글자 가져오기
    first_char=$(basename "$file" | cut -c 1)
    
    # 첫 글자로 디렉토리 이름 (소문자로 변환)
    directory=$(echo $first_char | tr '[:upper:]' '[:lower:]')
    
    # 해당 디렉토리가 없으면 생성
    [ ! -d "$directory" ] && mkdir -p "$directory"
    
    # 해당 디렉토리로 파일을 이동
    mv "$file" "$directory/"
done
