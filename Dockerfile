FROM node:4-slim
RUN npm install -g textlint textlint-rule-preset-ja-technical-writing \
                   textlint-rule-spellcheck-tech-word \
                   textlint-filter-rule-comments textlint-rule-no-mix-dearu-desumasu \
                   textlint-rule-prh technical-word-rules \
                   textlint-rule-preset-japanese

#COPY .textlintrc /doc/
#
#WORKDIR /doc
#ENTRYPOINT ["textlint"]
#CMD ["-h"]

