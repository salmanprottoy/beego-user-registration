package main

import (
	_ "beego-user-registration/routers"
	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	beego.Run()
}

