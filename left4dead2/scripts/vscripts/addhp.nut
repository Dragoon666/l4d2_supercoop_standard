//定义function功能脚本 名字为“q_health()”
//“xxx.xxx()”格式含义：点左边是对象，比如NICK，右边是操作

//function GiveHealth()  
::GiveHealth <- function()
{
activator.SetHealth(activator.GetHealth()+3000);
//Say(activator, "\"加血成功.", false);
}


//给触发者activator赋上生命值sethealth()，读取并调用触发者activator现有生命值gethealth()并加20
//VDC脚本文档：https://developer.valvesoftware.com/wiki/VScript
//松果语言文档：http://squirrel-lang.org/squirreldoc/