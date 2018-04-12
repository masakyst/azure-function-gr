Groovyで、Azure Functions
============================

GroovyでAzure Functionsを動かすまで。


    $ gradle clean
    $ ./gradlew packageAzureFunction

これで、build/azure-functions/以下に成果物が配置されます。

ただ、HTTP trigger/bind 定義ファイル、function.jsonが無いので(このあたりはazure-maven-pluginは勝手に生成してくれる)
自分で用意しつつ、成果物の中に放り込みます。

    $ mkdir build/azure-functions/hello
    $ cp function.json ./build/azure-functions/hello
    $ cd build/azure-functions
    $ func host start

すると、azure functionが起動します！
(この辺はめんどいので、start_func.shファイルにしておく)



