package controllers

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"

	beego "github.com/beego/beego/v2/server/web"
)

type MainController struct {
	beego.Controller
}

type Object struct {
	FirstName   string `json:"FirstName"`
	LastName    string `json:"LastName"`
	Phone       string `json:"Phone"`
	Email       string `json:"Email"`
	Password    string `json:"Password"`
	DateOfBrith string `json:"DateOfBrith"`
}

func (c *MainController) Get() {
	c.TplName = "index.tpl"
}

func (c *MainController) Post() {
	var obj Object
	firstName := c.GetString("firstName")
	lastName := c.GetString("lastName")
	email := c.GetString("email")
	phone := c.GetString("phone")
	dob := c.GetString("dob")
	password := c.GetString("password")
	obj.FirstName = firstName
	obj.LastName = lastName
	obj.Email = email
	obj.Phone = phone
	obj.DateOfBrith = dob
	obj.Password = password
	//fmt.Println(obj)

	postBody, _ := json.Marshal(map[string]string{
		"FirstName":   firstName,
		"LastName":    lastName,
		"Phone":       phone,
		"Email":       email,
		"Password":    password,
		"DateOfBrith": dob,
	})
	responseBody := bytes.NewBuffer(postBody)
	fmt.Println(responseBody)
	resp, err := http.Post("http://127.0.0.1:8080/v1/object", "application/json", responseBody)
	if err != nil {
		log.Fatalf("An Error Occured %v", err)
	}
	defer resp.Body.Close()
	body, err := ioutil.ReadAll(resp.Body)
	if err != nil {
		log.Fatalln(err)
	}
	sb := string(body)
	log.Printf(sb)
	//fmt.Println(postBody)

	c.TplName = "index.tpl"
}
