FROM node:4-slim
RUN npm install -g textlint textlint-rule-preset-ja-technical-writing \
                   textlint-rule-spellcheck-tech-word \
                   textlint-filter-rule-comments textlint-rule-no-mix-dearu-desumasu \
                   textlint-rule-prh technical-word-rules \
                   textlint-rule-preset-japanese

RUN mkdir -p /textlint/rules
COPY .textlintrc /textlint
COPY prh.yml /textlint
WORKDIR /textlint
ENTRYPOINT ["textlint"]
CMD ["--help"]
