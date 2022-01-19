# 使用するイメージ
FROM lambci/lambda:build-nodejs12.x

# エンコード設定
ENV LANG C.UTF-8
# リージョン設定
ENV AWS_DEFAULT_REGION us-east-2

COPY . .

# 依存パッケージのインストール
CMD npm install
# ZIPの作成
CMD ls && pwd && zip -r9 deploy_package.zip .