#include <sourcemod>
#include <sdktools>
#include <geoip>


public Plugin myinfo =
{
	name = "Data Base Query Center Menu",
	author = "SamaelXXX",
	description = "As Title",
	version = "1.0",
	url = "http://www.sourcemod.net/"
};

public void OnPluginStart()
{
	RegConsoleCmd("sm_info",Command_ShowInfoMenu);
	RegConsoleCmd("sm_i",Command_ShowInfoMenu);
}

public Action Command_ShowInfoMenu(int client,int args)
{
	if(client != 0) CreateMainMenu(client);
	return Plugin_Handled;
}

enum MenuItem
{
	MSelfRecord=1,
	MTeamRecord=2,
	MRanks=3
}

void CreateMainMenu(int client)
{	
	Menu menu=CreateMenu(MainMenuHandler,MENU_ACTIONS_DEFAULT);
	SetMenuTitle(menu,"统计信息菜单");
	AddMenuItem(menu,"1","个人统计");
	AddMenuItem(menu,"2","团队统计");
	AddMenuItem(menu,"3","排行榜");
		
	SetMenuExitButton(menu, true);
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

public int MainMenuHandler(Menu menu,MenuAction action,int param1,int param2)
{
	switch (action)
	{
		case MenuAction_End:
			delete menu;
			
		case MenuAction_Cancel:
		if (param2 == MenuCancel_ExitBack)
				CreateMainMenu(param1);
					
		case MenuAction_Select:
		{
			char info[16];
			
			if(menu.GetItem(param2, info, sizeof(info)))
			{
				MenuItem cmd = StringToInt(info);
				
				switch(cmd)
				{
					case MSelfRecord:
					{
						CreateSelfRecordMenu(param1);
					}
					case MTeamRecord:
					{
						CreateTeamRecordMenu(param1);
					}
					case MRanks:
					{
						CreateRanksMenu(param1);
					}
				}
			}
			
		}
	}	
}

void CreateSelfRecordMenu(int client)
{
	Menu menu=CreateMenu(SelfRecordMenuHandler);
	SetMenuTitle(menu,"个人统计数据");
	
	AddMenuItem(menu, "1", "个人时间统计");
	AddMenuItem(menu, "2", "个人击杀统计");
	
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

int SelfRecordMenuHandler(Menu menu,MenuAction action,int client,int param2)
{
	switch (action)
	{
		case MenuAction_End:
			delete menu;
			
		case MenuAction_Cancel:
			if (param2 == MenuCancel_ExitBack)
				CreateMainMenu(client);
					
		case MenuAction_Select:
		{
			char info[16];
			
			if(menu.GetItem(param2, info, sizeof(info)))
			{
				int target = StringToInt(info);
				switch(target)
				{
					case 1:
					{
						FakeClientCommand(client,"sm_mytimerecord");
					}
					case 2:
					{
						FakeClientCommand(client,"sm_mykillrecord");
					}
				}
			}
		}
	}
}

void CreateTeamRecordMenu(int client)
{
	Menu menu=CreateMenu(TeamRecordMenuHandler);
	SetMenuTitle(menu,"当前团队统计");
	
	AddMenuItem(menu, "1", "总游戏时间");
	AddMenuItem(menu, "2", "最大在线时间");
	AddMenuItem(menu, "3", "总特感击杀");
	
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

int TeamRecordMenuHandler(Menu menu,MenuAction action,int client,int param2)
{
	switch (action)
	{
		case MenuAction_End:
			delete menu;
			
		case MenuAction_Cancel:
			if (param2 == MenuCancel_ExitBack)
				CreateMainMenu(client);
					
		case MenuAction_Select:
		{
			char info[16];
			
			if(menu.GetItem(param2, info, sizeof(info)))
			{
				int target = StringToInt(info);
				switch(target)
				{
					case 1:
					{
						PrintToChat(client,"此功能正在开发！！！");
					}
					case 2:
					{
						PrintToChat(client,"此功能正在开发！！！");
					}
					case 3:
					{
						PrintToChat(client,"此功能正在开发！！！");
					}
				}
			}
		}
	}
}

void CreateRanksMenu(int client)
{
	Menu menu=CreateMenu(RanksMenuHandler);
	SetMenuTitle(menu,"排行榜");
	
	AddMenuItem(menu, "1", "总游戏时间");
	AddMenuItem(menu, "2", "单次游戏时长");
	AddMenuItem(menu, "3", "历史特感击杀");
	AddMenuItem(menu, "4", "单局特感击杀");
	
	DisplayMenu(menu, client, MENU_TIME_FOREVER);
}

int RanksMenuHandler(Menu menu,MenuAction action,int client,int param2)
{
	switch (action)
	{
		case MenuAction_End:
			delete menu;
			
		case MenuAction_Cancel:
			if (param2 == MenuCancel_ExitBack)
				CreateMainMenu(client);
					
		case MenuAction_Select:
		{
			char info[16];
			
			if(menu.GetItem(param2, info, sizeof(info)))
			{
				int target = StringToInt(info);
				switch(target)
				{
					case 1:
					{
						FakeClientCommand(client,"sm_total_time_ranks");
					}
					case 2:
					{
						FakeClientCommand(client,"sm_max_online_time_ranks");
					}
					case 3:
					{
						FakeClientCommand(client,"sm_total_special_killed_ranks");
					}
					case 4:
					{
						FakeClientCommand(client,"sm_max_special_killed_ranks");
					}
				}
			}
		}
	}
}
