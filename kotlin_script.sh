#!/usr/bin/env kscript

@file:DependsOn("khttp:khttp:0.1.0")

@file:MavenRepository("central","http://jcenter.bintray.com" )
val response : Response = khttp.get("http://httpbin.org/get")
val obj : JSONObject = response.jsonObject
print(obj["url"])

println("Hello from Kotlin!")
for (arg in args) {
    println("arg: $arg")
}