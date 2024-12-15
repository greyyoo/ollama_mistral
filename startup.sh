#!/bin/bash

# Ollama 서버 백그라운드로 시작
ollama serve &

# 서버가 시작될 때까지 대기
sleep 10

# 원하는 모델 다운로드
ollama pull mistral:7b-q4_K_M
# 필요한 만큼 모델 추가

# 서버 프로세스를 포그라운드로 가져오기
wait