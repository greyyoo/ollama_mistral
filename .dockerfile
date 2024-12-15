FROM ollama/ollama

# 시작 시 모델 다운로드를 위한 스크립트
COPY startup.sh /startup.sh
RUN chmod +x /startup.sh

EXPOSE 11434
ENV OLLAMA_HOST=0.0.0.0

# 시작 스크립트 실행
CMD ["/startup.sh"]