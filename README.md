# 環境構築方法

1. 任意のディレクトリで下記コマンドを実行して「laravel9_test」ディレクトリを作成してください。

    ```terminal
    $ mkdir laravel9_apache
    ```

1. laravel9_testディレクトリに移動して下記コマンドを実行してください。

    ```terminal
    $ git clone git@github.com:miriwo0104/laravel9_apache_docker.git docker
    $ git clone git@github.com:miriwo0104/laravel9_apache_project.git project
    ```

1. laravel9_test/dockerディレクトリに移動して下記コマンドを実行してください。

    ```terminal
    $ make install
    ```

1. 上記コマンド実行後[http://localhost:8080/](http://localhost:8080/)にアクセスするとlaravelのホーム画面が表示されていれば作業完了です。