MsgAll(system.GetCountry())
CreateConVar("3wb_lang","0",{FCVAR_SERVER_CAN_EXECUTE,FCVAR_ARCHIVE},"")local m=0
if GetConVar("3wb_lang")then
m=GetConVarNumber("3wb_lang")end
CreateClientConVar("wb3_lang",m,{FCVAR_ARCHIVE},"")
--如果你愿意帮我翻译一些语言，我会欢迎你的
--If you'd like to help me translate some of these languages, I'd be happy to have you
GAME308=0
local t={}
t.enable="Enable "
t.settings="Settings"
t.kalphy="Always keep HUD Transparency?"
t.infammo="INF AMMO?"
t.infammo1="0=disable,1=only ammo,2=only cilp,3=enable\nNOT include ANY weapons"
t.reloadp="Reloading Punish?"
t.reloadp1="0=Disable,1=Drop Clip,2=Enable"
t.clipremove="Ammo Delete Time"
t.clipremove1="How many time to remove ammo?(1=1 second)\n0=Do no ever Remove\nDon't think to remove?Why not consider your FPS and CPU?"
t.sprint="sprint?"
t.sprint1="if set,can't fire on sprinting"
t.ban="BAN HIGH PING WEAPONS?"
t.ban1="This can only be applied to multiplayer and some of the weapons that have been written"
t.oh="Weapon OverHeat?"
t.viewmodel="Viewmodel"
t.vmshake="Moving Shake?"
t.viewpunch="Moving Viewpunch?"
t.lan="Force Setting Language"
t.lan1="Not Completely Function"
t.lan2="Not Almost yet"
t.lan3="must restart,besides not always completely translate"

t.mg="Minigame"
t.mg_hg="Start Distance(Vec)"
t.mg_hg1="Example for gm_flatgrass, map length and width are almost 10000"
t.mg_zbhp="Zombie Basic Health"
t.mg_zb1="Don't set to high/low，otherwise, you know"
t.mg_zbre="Zombie Revival Time(Sec.)"
t.mg_cs="Round Time"
t.mg_cs1="Bomb Explosion Time"

t.clear="Clear Deaths and Decals(can increase FPS)"
t.clear1="sorry it is administrator only"
t.update="Check my more addons"
t.ALL="well, i must say something to everyone.\nnow this base is still testing phase, i guess you saw, some bugs still appear, or it maybe ever can't fixed\n\nso...please talk to me(Because I didn't find some bugs), i'll try my best to fix it.\nanyways, thank for you subscribed!"

t.n_talk="NPC Dialogue(NPC to NPC)?"
t.n_talk1="ready your \"ai_ignoreplayers\" :R"
t.n_mcmdl="Minecraft SWEP Mob Model?(Only \'MC\' NextBots)"
t.n_mcmdl1="Oh! this require Minecraft SWEP! you maybe don't need to set it if you won't subscribe this mod a moment"
t.n_mcmdl2="click this to get Minecraft SWEP"
t.n_mdl="Apply your current player model to MC NPCs?"
t.n_mdl1="REQUIRE you DISABLE the top option of this option.\nRemind:Model must have a corresponding skeleton, and some models may have problems when posing..."
t.n_mode="Relationship Net Mode"
t.n_mode1="Free For All-Deathmatch"
t.n_mode2="Army Mode"
t.n_mode3="Player's Nightmare"
t.n_mode_="Free For All:you know\nArmy Mode:NPC is only friendly to the creator and the NPC he generates\nPlayer's Nightmare:All NPCs will ONLY attack players"
t.n_inf="Turn others to a given class when they killed by a set NPC.\nBy \"Default\", it means off"
t.n_inf0="Infection"
t.n_inf1="1 - Only NPCs and NextBots"
t.n_inf2="2 - Only Players"
t.n_inf3="3 - All Creatures"
--Other
t.ut_ruins="oh...i delete somethings on your gaming map...if you mind it you can...disable my base(sorry dude this map sometimes really...)"
--Improved Object Render--
t.ImprovedObjectRender="Ohh! look like you installed Improved Object Render!"
t.ImprovedObjectRender1="Maybe this is good to you useful, but...Now, probably those NPCs will cause problem when they dead, and i guess others same, They all had no problem until you install this"
t.ImprovedObjectRender2="So i hope you don't give my mod(and others mod) a negative comment, thanks"
t.credits="Creators and Other"
----
GAME308_LAN={
["mh"]="You recovery your pet",
["mh0"]="Toggle to Wander/Attack Mode\n  (Not too far from you)",
["mh1"]="Toggle to Following Mode",
["mh2"]="Toggle to Friendly",
["mh3"]="Toggle to Hostile",
["pet"]="You already have a valid pet",
["petkill"]="Pet has been killed",

["hg"]="TIP:Press E to use crate!",
["hg1"]="Attack other players and survival in the game!",
["fall"]="Don't fall off from platform",
["nosky"]="Please spawn under sky also sky top position at least enough space",
["nosky1"]="Need HIGHER sky[Too short!]",
["moret4"]="Max players more than 4!",
["gamemap"]="sorry the game only play at \"gm_flatgrass\"",
["hok"]="\"E+Ctrl\" to disconnect hook",
["hp"]="Survive this game by rob",
["mdl"]="Your model lacks a skeleton!",
["mdl1"]="This NPC require a model!\nPlease install a mod which called ",
["mdl2"]="This NPC can't directly spawn in multiplayer!\n(This server owner not subscribe a required mod)",
["mc"]="TIP:Press R to toogle block type",
["bed1"]="=================\nThe red team's bed was destroyed!\n=================",
["bed2"]="=================\nThe blue team's bed was destroyed!\n=================",
["bedw1"]="The red team win!",
["bedw2"]="The blue team win!",
["crash"]="this game maybe..will crash your game, but if you have a lot of spare time or...you can spawn it again",
["bedm"]="BedWars Buy Menu",
["bedm1"]="Which is you want to buy? All melee weapons attack range the SAME",
["bedp1"]="1  Next Event+pistol ammo refresh time HALVE",
["bedp2"]="2  Next Event+all ammo refresh time HALVE",
["bedp3"]="3  Next Event+one hit kill",
["bedp4"]="4  Next Event+DESTROY all team beds",
["bedp5"]="5  +all players will take 0.5 damage on every second",
["armor"]="Armor",
["storage"]="Storage",
["takeout"]="Take out",
["bedm2"]="Press E to use shop at pistol ammo spawnpoint",
["bedm3"]="please go to a pistol ammo spawnpoint to use shop",
["bedps"]="Speed Improved",
["bedpj"]="Jump Improved",
["camera"]="Camera",
["hud"]="Turning off a particular HUD will prevent you from knowing ammo of the gun in your right hand...but you can deal with, right?"
}
local a={
["rt"]="Remain Time:",
["rs"]="\nRemain Alive:",
["t"]=" will at ",
["t0"]="s start",
["t1"]="You will have 10 seconds to ready",
["cs"]="Some players no choose team!\nSend \"join ct\" or \"join t\"!",
["cs0"]="Spawn point or c4 point has no build!",
["cs1"]="Max 2 spawn point!",
["cs2"]="It's too far from the target!",
["cs3"]="Target has been destoryed!",
["r1"]="Round ",
["r2"]=" has started!",
["z1"]="Normal",
["z2"]="Fast",
["z3"]="Undead",
["z4"]="\nRemain Survivor:",
["P"]="Currently Phase:",
["r"]="The winner is ",
["gt1"]="Sky Hammer",
["gt2"]="Sky Fall Fire Balls",
["gt3"]="Zombie Infection",
["gt4"]="Counter-Strike",
["gt5"]="Madness Turret",
["gt6"]="Fallen Floor",
["gt7"]="Gravity Cannon Battle",
["gt9"]="Individuals Annihilate",
["gta"]="Sky Trial",
["gtb"]="Hunger Game",
["gtc"]="Hide and Seek[Z]",
["gtd"]="the Energy Shield",
["gte"]="Hunger and thirst",
["gtf"]="Endless Survival",
["gtg"]="]SpeedRun+Start",
["gtg0"]="]Checkpoint",
["bedwar"]="BedWars[BETA]",
["End1"]="You're all out of time!",
["End2"]="Multiple people win!",
["End3"]="Game was forced to stop",
["la"]="Shield will spawn in",
["la1"]="TAKE THEM NOW! YOU JUST HAVE",
["hp"]="Take those drinks",
["pi"]="Hint:you better to play in multiplayer\nsingleplayer may will changes some settings",
["adm"]="now you can send \"stopg\" to stop game!",
["adm1"]="you are not an super administrator...",
["ammo1"]="Empty!",
["ammo2"]="I've looked through it, just no ammo",
["ammo3"]="meaningful, Nothing inside.",
["navmiss"]="Nextbots need a navmesh to navigate around the map...Nextbots wouldn't move...\nYou can generate a navmesh using the command 'nav_generate' in the console.",
["navser"]="Sorry this map no a navmesh...Nextbots wouldn't move now. :|\nTalk to the server owner using the command 'nav_generate' in the console.",
["airdrop"]="Spawn Airdrop!",
["storynpc"]="You CAN'T spawn the npc!\nStory NPC can only one",
["ca"]="Campaign ",
["ca1"]="Still have remain alive NPC.",
["ca2"]="-Level Complete-\nAlive player can search item and weapons.\nwill start at 30 seconds",
["ca3"]="-The players are DEAD-",
["ca4"]="-All level are PASSED-\n-Will recovery Sandbox at 40 seconds...-",
["pubgc"]="Supplies",
["pubgc2"]="Super Supplies",
["ammo"]="Discard Ammo(Bullet)",
}
local l={
["poker"]="Master Poker",
["torch"]="Torch",
["grabhook"]="Grab hook",
["shammer"]="Sledgehammer",
["branch"]="Branch",
["boomer"]="Goodbye World",
["bh"]="Blackhole",
["autorpg"]="\"Pliot\"",
["autorpg2"]="\"Portable CVA\"",
["omeawa"]="You're already dead",
["toyknife"]="Worn Dagger",
["diamondsword"]="Diamond Sword",
["b_wb"]="Update Log",
["area"]="Forbidden Area",
["asgorewep"]="Asgore's Trident",
["slicktalk"]="Slick Talk",
["famasa"]="Famas-Berserker",
["currysword"]="Curry Sword",
["hugebaby"]="Huge Baby",
["guide"]="Guide",
["guide1"]="Keep your eyes on the spot you want to bomb,and then long hold left key(Must be under the sky)",
["laser"]="Laser Gun",
["laser2"]="Rainbow Laser Gun",
["double"]="Double ",
["sh"]="Soul Eater",
["sbullet"]="\"Air gun\"",
["fist"]="Fists",
["manhack"]="Pet \"Manhack\"",
["axe"]="Axe",
["ublade"]="Urge to update Blade",
["vamp"]="Vampire",
["parachute"]="Parachute",
["knife"]="Knife",
["simonb"]="Simon's Book",
["fthrower"]="Flamethrower",
["flowerf"]="Fire Flower",
["fragphy"]="Physics Grenade",
["fragphy2"]="Physics Grenade-Reverse",
["plasma"]="Plasma Launcher",
["pandora"]="Pandora's Gun",
["clearself"]="Surrender Your Weapons",
["dw"]="Death Roulette",
["shotguni"]="Endless Shotgun",
["lavam"]="Lava Machine Gun",
["pistolb"]="Borken Pistol",
["stunstick"]="Stunstick",
["opm"]="ONE PUNCH-MAN",
["up_p"]="Upgradable Pistol",
["r"]="Double Reflection",
["begg"]="Bridge egg",
["block"]="Block",
["epearl"]="Ender Pearl",
["bow"]="Bow",

["man"]="Man",
["manstr"]="Man(Strong)",
["mansum"]="Summoner",
["manboss"]="Man Boss",
["giant"]="Giant",
["target"]="Target",
["wa"]="Warrior",
["wafire"]="Fire Warrior",
["wasuper"]="Super Warrior",
["zb"]="Zombie",
["zbgiant"]="Giant Zombie",
["zbstr"]="Zombie(Strong)",
["zbboom"]="Zamikaze",
["zbfast"]="Faster Zombie",
["zbg"]="Zhost",
["zbheadless"]="Headless Zombie",
["zbminiboss"]="Zombie Miniboss",
["zbboss"]="Zombie Boss",
["crazy"]="Crazy",
["sk_kn"]="Soul Knight(BETA)",
["shield"]="Shield Solider",
["solider"]="Solider",
["zt"]="Zombie Torso",
["ztstr"]="Zombie Torso(Strong)",
["stranger"]="Stranger",
["wargiant"]="War Giant",
["sword"]="Swordman",
["creeper"]="Creeper",
["spider"]="Spider",
["zpig"]="Zombie Pigman",
["enderman"]="Enderman",
["spider2"]="Cave Spider",
["creeper2"]="Charged Creeper",
["zbmc"]="Zombie Villager",
["skeleton"]="Skeleton",
["skeleton2"]="Wither Skeleton",
--[""]="",
--[""]="",
["spawner"]="Spawner",

["faction"]="Faction Editor",
["faction1"]="Click LMB to replace that NPC faction",
["faction2"]="Click RMB to get that NPC faction",
["faction3"]="Press E to replace your faction -Faction system only apply to 308 Base",
["factionr"]="Press R to reset your faction",
["factionrf"]="Cannot be replaced. it may been influented by convar or so on.",
["factionrs"]="Replace success.",
["faction4"]="This entity haven't any faction",
["faction5"]="you cannot add the faction in non-NPC entities",

["entcheck"]="Entity Checker",
["distance"]="Distance Measurer",
["damget"]="Damage Giver",
["damcheck"]="Damage Checker",
["damget1"]="First aim at an entity, and then you can do the following:\"RMB\" to give entity fixed damage.\"LMB\" let entity suicide(sometimes may not happen).",
["damget2"]="Press E to enable retain damage,Press R to increase damage,Switch again will reset damage.",
["damget3"]="Retain Damage[1=Enable]:",
["damget4"]="Currently can cause damage:",
}
GAME308_LANMath=1
if(system.GetCountry()=="RU" and GetConVarNumber("wb3_lang")==0)||GetConVarNumber("wb3_lang")==3 then--Test->тест
l["torch"]="Torch\"факел\""
l["shammer"]="\"кувалда\""
GAME308_LANMath=3
end
if(system.GetCountry()=="FR" and GetConVarNumber("wb3_lang")==0)||GetConVarNumber("wb3_lang")==5 then--Test->?Test?
l["torch"]="Torch\"Torche\""
l["shammer"]="\"Marteau\""
GAME308_LANMath=5
end
if(system.GetCountry()=="DE" and GetConVarNumber("wb3_lang")==0)||GetConVarNumber("wb3_lang")==4 then--Test->?Test?
l["torch"]="Torch\"Fackel\""
l["shammer"]="\"Siebehammer\""
GAME308_LANMath=4
end
if((system.GetCountry()=="CN"||system.GetCountry()=="HK"||system.GetCountry()=="TW")and GetConVarNumber("wb3_lang")==0)||GetConVarNumber("wb3_lang")==2 then
GAME308_LANMath=2
a={
["rt"]="剩余时间:",
["rs"]="\n剩余存活:",
["t"]=" 在",
["t0"]="秒后开始",
["t1"]="你会有10秒准备时间",
["cs"]="一些玩家还未选择队伍!\n输入\"join ct\"或\"join t\"!",
["cs0"]="出生点或C4点未放置!",
["cs1"]="最多2个出生点!",
["cs2"]="距离爆破目标太远了！",
["cs3"]="目标被摧毁了!",
["r1"]="回合 ",
["r2"]="开始了!",
["z1"]="普通",
["z2"]="疾风",
["z3"]="不死",
["z4"]="\n剩余幸存者:",
["P"]="目前阶段:",
["r"]="获胜者是",
["gt1"]="天空之锤",
["gt2"]="天降正义-火山爆发",
["gt3"]="僵尸感染",
["gt4"]="反恐精英",
["gt5"]="疯狂炮塔",
["gt6"]="坠落的地板",
["gt7"]="重力枪大战",
["gt9"]="个人歼灭战",
["gta"]="天空审判",
["gtb"]="饥饿游戏",
["gtc"]="捉迷藏[Z]",
["gtd"]="能量盾",
["gte"]="饥渴",
["gtf"]="无尽生存",
["gtg"]="]跑酷(速跑)+起点",
["gtg0"]="]记录点",
["bedwar"]="起床战争(测试版)",
["End1"]="你们全都没时间了!",
["End2"]="多个人获得胜利!",
["End3"]="游戏被强制停止了",
["la"]="能量盾会生成于",
["la1"]="现在就捡起来! 你只有",
["hp"]="把饮料捡起来",
["pi"]="提示:你最好在多人游戏进行\n单人游戏时可能会改变一些设置",
["adm"]="现在你可以输入\"stopg\"来停止游戏!",
["adm1"]="你不是超级管理员啊...",
["ammo1"]="空的!",["ammo2"]="翻看了个遍，就没子弹。",["ammo3"]="有意思，没东西在里面。",
["navmiss"]="地图缺失navmesh(导航网),Nextbot现在不能移动了...\n请您在控制台输入命令“nav_generate”来生成navmesh",
["navser"]="对不起，这张地图没有navmesh(导航网)...Nextbot现在不能移动了 :|\n嘿，告诉服主在控制台输入命令“nav_generate”来生成navmesh",
["airdrop"]="空投已投放!",
["storynpc"]="你不能生成这个NPC!\n故事模式的NPC只能有一个",
["ca"]="战役",
["ca1"]="还有活着的NPC。",
["ca2"]="-关卡完成-\n存活的玩家可以搜刮物品和武器\n将在40秒后进入下一个关卡。",
["ca3"]="-全员死亡-",
["ca4"]="-战役所有的关卡已通过-\n-40秒后恢复沙盒...-",
["pubgc"]="补给品",
["pubgc2"]="超级补给品",
["ammo"]="废弃弹夹(子弹)",
}
l={
["poker"]="大师卡牌",
["torch"]="火把",
["grabhook"]="抓钩",
["shammer"]="大锤",
["branch"]="树枝",
["boomer"]="世界再见",
["bh"]="黑洞",
["autorpg"]="\"领航者号\"",
["autorpg2"]="\"便携式航母\"",
["omeawa"]="\"你已经死了\"",
["toyknife"]="玩具刀",
["diamondsword"]="钻石剑",
["b_wb"]="更新日志",
["area"]="禁区",
["asgorewep"]="Asgore的三叉戟",
["slicktalk"]="花言巧语",
["famasa"]="Famas-狂战士",
["currysword"]="咖喱剑",
["hugebaby"]="超级大宝贝",
["guide"]="引导器",
["guide1"]="盯着你想炸的地方，然后长住左键(必须在天空下)",
["laser"]="激光枪",
["laser2"]="彩虹激光枪",
["double"]="双持",
["sh"]="噬魂",
["sbullet"]="\"气枪\"",
["fist"]="拳头",
["manhack"]="宠物\"飞锯\"",
["axe"]="斧",
["ublade"]="催更刀片",
["vamp"]="血族",
["parachute"]="降落伞",
["knife"]="海豹短刀",
["simonb"]="西蒙之书",
["fthrower"]="火焰喷射器",
["flowerf"]="火焰花",
["fragphy"]="物理手雷",
["fragphy2"]="物理手雷-反向",
["plasma"]="等离子发射器",
["pandora"]="潘多拉的枪",
["clearself"]="交出你的武器",
["dw"]="死亡轮盘赌",
["shotguni"]="无尽霰弹枪",
["lavam"]="岩浆机枪",
["pistolb"]="破损的手枪",
["stunstick"]="电击棒",
["opm"]="一拳超人",
["up_p"]="可升级手枪",
["r"]="双倍反射",
["begg"]="搭桥蛋",
["block"]="方块",
["epearl"]="末影珍珠",
["bow"]="弓",

["man"]="人",
["manstr"]="人(强壮)",
["mansum"]="召唤师",
["manboss"]="Boss",
["giant"]="巨人",
["target"]="靶子",
["wa"]="战士",
["wafire"]="烈焰战士",
["wasuper"]="超级战士",
["zb"]="僵尸",
["zbgiant"]="僵尸巨人",
["zbstr"]="僵尸(强壮)",
["zbboom"]="僵风特工队",
["zbfast"]="迅捷僵尸",
["zbg"]="僵灵",
["zbheadless"]="无头僵尸",
["zbminiboss"]="僵尸头目",
["zbboss"]="僵尸Boss",
["crazy"]="疯狂",
["sk_kn"]="元气骑士(测试)",
["shield"]="盾兵",
["solider"]="士兵",
["zt"]="爬行者",
["ztstr"]="爬行者(强壮)",
["stranger"]="陌生人",
["wargiant"]="战争巨人",
["sword"]="剑士",
["creeper"]="爬行者",
["spider"]="蜘蛛",
["zpig"]="僵尸猪人",
["enderman"]="末影人",
["spider2"]="洞穴蜘蛛",
["creeper2"]="闪电爬行者",
["zbmc"]="僵尸村民",
["skeleton"]="骷髅",
["skeleton2"]="凋灵骷髅",
--[""]="",
--[""]="",
["spawner"]="生成点",

["faction"]="角色阵营编辑器",
["faction1"]="点击LMB覆盖一个NPC的阵营",
["faction2"]="点击RMB得到一个NPC的阵营 -阵营系统仅适用于308 Base",
["faction3"]="按下E来覆盖自己的阵营",
["factionr"]="按下R来重置自己的阵营",
["factionrf"]="无法覆盖，可能受到参数等限制",
["factionrs"]="覆盖成功。",
["faction4"]="这个实体没有任何派系",
["faction5"]="你不能将派系添加到非NPC实体",

["entcheck"]="实体查看器",
["distance"]="距离测量器",
["damget"]="伤害给予器",
["damcheck"]="伤害查看器",
["damget1"]="首先瞄准一个实体，然后可以进行下列操作：左键对该实体造成定值伤害.\n右键让实体自杀[秒杀但有时可能失效].",
["damget2"]="按E开启保留伤害,按R键增加伤害,重新切换会重置伤害.",
["damget3"]="伤害保存[1=开]:",
["damget4"]="目前左键可造成的伤害:",
}
GAME308_LAN={
["mh"]="你收回了你的宠物",
["mh0"]="切换到游荡/攻击模式\n     (不会离你太远)",
["mh1"]="切换到跟随模式",
["mh2"]="现在他对每个人都是友好的",
["mh3"]="现在他对敌人都是敌对的",
["pet"]="你已经拥有一个有效宠物了",
["petkill"]="宠物被杀害了",

["hg"]="TIP:按E键可使用箱子!",
["hg1"]=" ",
["fall"]="不要从平台上摔下来",
["nosky"]="请生成在天空下，且天空顶的位置至少有足够的空间",
["nosky1"]="需要更高的天空[这位置离天空盒空间太矮了]",
["moret4"]="最大玩家数大于4!",
["gamemap"]="抱歉这个游戏只能在\"gm_flatgrass\"进行",
["hok"]="按\"E+Ctrl\"来切断抓钩",
["hp"]="通过抢夺以生存于此游戏",
["mdl"]="你的模型缺少相应的骨架!",
["mdl1"]="这个NPC需要一个模型!\n请去创意工坊安装一个模组,就是在搜索栏里输入:",
["mdl2"]="这个NPC不能在不用Minecraft模型的情况下在多人游戏生成\n(服务器主人没有安装所需要的模型)",
["mc"]="TIP:按R切换方块类型",
["bed1"]="=================\n红队的床被摧毁了!\n=================",
["bed2"]="=================\n蓝队的床被摧毁了!\n=================",
["bedw1"]="红队获得了胜利",
["bedw2"]="蓝队获得了胜利",
["crash"]="这个小游戏貌似..会卡退你的游戏，如果你有太多空闲时间或者别的话，你可以再生成一次",
["bedm"]="起床战争购买菜单",
["bedm1"]="你想购买哪一个物品?提醒一下:所有近战武器的范围相同",
["bedp1"]="1 下阶段事件+pistol弹药刷新时间减半",
["bedp2"]="2 下阶段事件+所有物品刷新时间减半",
["bedp3"]="3 下阶段事件+一击必杀",
["bedp4"]="4 下阶段事件+破坏所有队的床",
["bedp5"]="5 下阶段事件+所有玩家受到每秒0.5伤害",
["armor"]="护甲",
["storage"]="储存",
["takeout"]="取出",
["bedm2"]="在pistol弹药生产点按E键来开启商店",
["bedm3"]="你离pistol弹药生产点太远了",
["bedps"]="速度增加",
["bedpj"]="跳跃增强",
["camera"]="照相机",
["hud"]="关闭特定的HUD会让你无法知晓右手拿的枪的剩余子弹...不过你应该能应付这个的对吧?"
}
t.enable="开启"
t.settings="设置"
t.kalphy="保持HUD的透明度?(仅限插件HUD)"
t.infammo="无限子弹?"
t.infammo1="0=关闭，1=仅限弹药，2=仅限弹夹，3=开启"
t.reloadp="换弹惩罚?"
t.reloadp1="0=关闭，1=掉落弹夹，2=开启(换弹癌2333)"
t.clipremove="弹夹(子弹)删除时间"
t.clipremove1="弹夹会在X秒后自然消失(1=1秒)\n0=永不删除\n不想删除?怎不考虑下你的FPS和CPU?"
t.sprint="冲刺?"
t.sprint1="将不能在冲刺状态下开火"
t.ban="禁止能导致卡顿的武器?"
t.ban1="这只能应用于多人游戏和已经写好的武器"
t.oh="武器过热?"
t.viewmodel="视图模型"
t.vmshake="步行抖动?"
t.viewpunch="移动屏幕抖动?"
t.lan="强制设置语言"
t.lan1="未完成功能"
t.lan2="还没搞好"
t.lan3="必须重新启动，而且不一定完全翻译"

t.mg="迷你游戏"
t.mg_hg="起始距离(Vec)"
t.mg_hg1="比如gm_flatgrass，地图的长和宽差不多是10000"
t.mg_zbhp="僵尸的基础血量"
t.mg_zb1="不要太 厚/低 就好，不然你懂的"
t.mg_zbre="僵尸重生时间(秒)"
t.mg_cs="回合时间"
t.mg_cs1="C4爆炸时间"

t.n_talk="NPC对话(NPC对NPC)?"
t.n_talk1="准备好英语听力了吗(除非你安装了我的中文语音包)"
t.n_mcmdl="Minecraft SWEP的模型?(仅限前缀加\'MC\'的NPC)"
t.n_mcmdl1="哦！这个选项你应该不用管的，除非你一会决定要去订阅Minecraft SWEP"
t.n_mcmdl2="你现在想去订阅MC SWEP吗?"
t.n_mdl="要将你目前的玩家模型应用于我的世界NPC?"
t.n_mdl1="这个选项要求是:\n你必须关闭这个选项的上面.\n提醒:你的模型必须具有对应骨骼，而且有部分模型摆姿势时可能。。"
t.n_mode="关系网模式"
t.n_mode1="死亡竞赛"
t.n_mode2="军团混战"
t.n_mode3="玩家的噩梦"
t.n_mode_="死亡竞赛:不分敌我,互相攻击对方\n军团混战:NPC只对生成者和他生成的NPC友好\n玩家的噩梦:所有NPC只会攻击玩家"
t.n_inf="当其它人被一个固定的NPC杀死时，他们将转向一个设定好的NextBot类型。\n当为 \"默认\"时,它是禁用的"
t.n_inf0="感染"
t.n_inf1="限NPC和NextBot"
t.n_inf2="限玩家"
t.n_inf3="所有人"

t.ut_ruins="哦...我删除了你现在这个地图上的一些东西...如果你介意的话，你可以...禁用我的Base(抱歉...但说实话，这张地图有时真的...)"
t.ImprovedObjectRender="你怎么安装\"提高的物体渲染\"(就是那个Improved开头的)了?"
t.ImprovedObjectRender1="也许对你来说好用，但是...现在吧，可能我这里的NPC会在死亡时出BUG，还有估计其它NPC也会，他们都是无辜的因为你安装了这个东西。"
t.ImprovedObjectRender2="希望倒赞不要牵连到我(还有别人)这的东西来啊伙计"
t.clear="清理死人和喷漆(可提高FPS)"
t.clear1="抱歉这是管理员专用的"
t.update="查看我的更多插件(模组?)"
t.ALL="好吧, 我得对大家说点什么了.\n现在这个Base仍然处于测试阶段,我猜你也看到了,一些BUG仍然出现,而且有些可能永远也修不好\n\n所以...请你告诉我(因为有些BUG我没找到),我会尽量修好它的.\n不管怎么样,谢谢你的订阅!"
t.credits="创作者们和杂项"
end
--GAME308_LANWEP[""]
GAME308_LANWEP=l
GAME308_LAN1=a

if util.IsValidModel("models/mcmodelpack/mobs/mob.mdl")then
MC_NoMissMDL=1
end
hook.Add("PlayerInitialSpawn","308wepbase_sett1",function(p)
if CLIENT then return end
if game.GetMap()=="gm_ruins_undertale" then
timer.Simple(2,function()if IsValid(p)then
p:ChatPrint(t.ut_ruins)end end)end
if file.Exists("autorun/centralentdrawopt_sh.lua","LUA")then
timer.Simple(3,function()if IsValid(p)then
p:ChatPrint(t.ImprovedObjectRender)end end)
timer.Simple(6,function()if IsValid(p)then
p:ChatPrint(t.ImprovedObjectRender1)end end)
timer.Simple(13,function()if IsValid(p)then
p:ChatPrint(t.ImprovedObjectRender2)end end)
end
end)
local function Bone(p)if SERVER||!p then return end
local vm=p:GetViewModel()if !vm:GetBoneCount()then return end
for i=0,vm:GetBoneCount()do
vm:ManipulateBoneScale(i,Vector(1,1,1))vm:ManipulateBoneAngles(i,Angle(0,0,0))vm:ManipulateBonePosition(i,Vector(0,0,0))end
end
hook.Add("PlayerSpawn","308wepbase_sett2",function(p)Bone(p)end)
hook.Add("PlayerDroppedWeapon","308wepbase_sett3",function(p)Bone(p)end)
if game.GetMap()=="gm_ruins_undertale" then
hook.Add("Think","undertaletheruins_clearonce",function()
if CLIENT then return end
if !UT_THERUINSCLEAR then
UT_THERUINSCLEAR=1
for _,e in pairs(ents.FindByClass("trigger_once"))do e:Remove()end
for _,e in pairs(ents.FindByClass("func_door"))do
local n=e:GetName()
if n=="preruinsdoor"||n=="torieldialaugedoor2"||n=="postruinsdoor" then
e:Remove()end
end
for _,e in pairs(ents.FindByClass("func_movelinear"))do
local n=e:GetName()
if n=="prussiayourjudge"||n=="prussia" then
e:Remove()end
end
end
end)
end
---------------------
--新浪微博：@戈登走过去
--我发现我很难统一代码风格，空格和空行太不统一了，还是用 Notepad++ 写的
--=======
--原代码By 戈登走过去
concommand.Add("wby_CLEANBODY_308",function(ply)--清理死人和喷漆
if ply:IsAdmin()||ply:IsSuperAdmin()then
RunConsoleCommand("g_ragdoll_fadespeed","9999")RunConsoleCommand("g_ragdoll_maxcount","0")for l,g in pairs(ents.FindByClass("gib"))do g:Remove()end
timer.Simple(1,function() game.RemoveRagdolls()
RunConsoleCommand("g_ragdoll_fadespeed","600") RunConsoleCommand("g_ragdoll_maxcount","30") end)
for l,g in pairs(ents.FindByClass("gib"))do g:Remove()end
RunConsoleCommand("r_cleardecals")else
ply:ChatPrint(t.clear..":"..t.clear1)end
end)
---------------------
hook.Add("PopulateToolMenu","wepbas308",function()
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base1",t.settings,"","",function(pn)
pn:ClearControls()
--[[local a={Options={},CVars={},Label="#Presets",MenuButton="1"}
a.Options["#Default"]={
wb3_hud="1",
wb3_hudt="0",
wb3_oh="1",
wb3_reloadpunish="0",
wb3_clipremove="60",
wb3_infammo="0",
}
pn:AddControl("ComboBox",a)--]]
pn:AddControl("CheckBox",{
	Label=t.enable.."HUD?",
	Command="wb3_hud"
})
pn:AddControl("CheckBox",{
	Label=t.kalphy,
	Command="wb3_hudt"
})
--pn:AddControl("CheckBox",{
--	Label=t.enable..t.sprint,
--	Command="wb3_sprint"
--})
--pn:AddControl("Label",{Text=t.sprint1})
pn:AddControl("CheckBox",{
	Label=t.ban,
	Command="wb3_ban"
})
pn:AddControl("Label",{Text=t.ban1})
pn:AddControl("CheckBox",{
	Label=t.enable..t.oh,
	Command="wb3_oh"
})
pn:AddControl("Slider",{
	Label=t.enable..t.reloadp,
	Command="wb3_reloadpunish",
	Min=0,
	Max=2
})
pn:AddControl("Label",{Text=t.reloadp1})
pn:AddControl("Slider",{
	Label=t.clipremove,
	Command="wb3_clipremove",
	Min=0,
	Max=600
})
pn:AddControl("Label",{Text=t.clipremove1})
pn:AddControl("Slider",{
	Label=t.enable..t.infammo,
	Command="wb3_infammo",
	--Type="Float",
	Min=0,
	Max=3
})
pn:AddControl("Label",{Text=t.infammo1})
end)
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base88","language Setting","","",function(pn)
pn:AddControl("Label",{Text="===WARN:"..t.lan1.."==="})
pn:AddControl("Label",{Text="===WARN:"..t.lan1.."==="})
pn:AddControl("Slider",{
	Label=t.lan,
	Command="wb3_lang",
	Min=0,
	Max=5
})
pn:AddControl("Label",{Text="1=English\n2=中文\n3=русский язык *\n4=Deutsch *\n5=Französisch *"})
pn:AddControl("Label",{Text="* = "..t.lan2})
pn:AddControl("Label",{Text=t.lan3})
pn:AddControl("Label",{Text="===WARN:"..t.lan1.."==="})
pn:AddControl("Label",{Text="===WARN:"..t.lan1.."==="})
end)
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base5","NextBot","","",function(pn)
pn:AddControl("CheckBox",{
	Label=t.enable..t.n_talk,
	Command="wb3_n_talk"
})
pn:AddControl("Label",{Text=t.n_talk1})
if game.SinglePlayer()then
pn:AddControl("Label",{Text="--==Minecraft SNPCs==--\n Minecraft SWEP, Thanks for your models"})
pn:AddControl("CheckBox",{
	Label=t.enable..t.n_mcmdl,
	Command="wb3_n_mcmdl"
})
if !util.IsValidModel("models/mcmodelpack/mobs/mob.mdl")then
pn:AddControl("Label",{Text=t.n_mcmdl1})
local u=vgui.Create("DButton")u:SetFont("TargetID")u:SetText(t.n_mcmdl2)u.DoClick=function(u)gui.OpenURL("https://steamcommunity.com/sharedfiles/filedetails/?id=116592647&searchtext=minecraft+swep")end
end
pn:AddControl("CheckBox",{
	Label=t.n_mdl,
	Command="wb3_n_mdl"
})
pn:AddControl("Label",{Text=t.n_mdl1})end
pn:AddControl("ComboBox",{
Label=t.n_mode,MenuButton="0",
Options={
["#Default"]={wb3_n_mode=0},
[t.n_mode1]={wb3_n_mode=1},
[t.n_mode2]={wb3_n_mode=2},
[t.n_mode3]={wb3_n_mode=3},
}
})
pn:AddControl("Label",{Text=t.n_mode_})
pn:AddControl("Label",{Text=t.n_inf})
pn:AddControl("ComboBox",{
Label=t.n_inf0,MenuButton="3",
Options={
["#Default"]={wb3_n_infection=0},
[t.n_inf1]={wb3_n_infection=1},
[t.n_inf2]={wb3_n_infection=2},
[t.n_inf3]={wb3_n_infection=3},
}
})
end)
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base2",t.credits,"","",function(pn)
pn:AddControl("Label",{Text="\n\nMOD BY QQ3088083421\nUploaded by 火花Speak\nand Insane Black Rock Shooter"})
pn:AddControl("Label",{Text="---=====---\nGarry's Mod Sharer - Starfish\n(ye if he don't lend me, my mod maybe won't appear)\n---=====---"})
pn:AddControl("Label",{Text="Tester who test with me\n- [TLK] 巧克力 [chocolate]"})
pn:AddControl("Label",{Text="AI Sound Code - https://steamcommunity.com/sharedfiles/filedetails/?id=1360233031"})
pn:AddControl("Label",{Text="INF AMMO Code - https://steamcommunity.com/sharedfiles/filedetails/?id=1875143628"})
pn:AddControl("Label",{Text="Inhibitable Menu Help\n - 淡定WackoD"})
pn:AddControl("Label",{Text="Baldi Original Textures\n - Dr. Bennett (or isn't him? currently i guess him was first to uploaded baldi npc)"})
pn:AddControl("Label",{Text="Gaster Blaster Original Code\n - Undertale Sans Abilities"})
pn:AddControl("Label",{Text="---=====---"})
pn:AddControl("Button",{Label=t.clear,Command="wby_CLEANBODY_308"})
pn:AddControl("Label",{Text=t.ALL})
local u=vgui.Create("DButton")u:SetFont("TargetID")u:SetText(t.update)u.DoClick=function(u)gui.OpenURL("https://steamcommunity.com/profiles/76561198853806932/myworkshopfiles/")end
pn:AddPanel(u)
end)
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base3",t.viewmodel,"","",function(pn)
pn:ClearControls()
pn:AddControl("CheckBox",{
	Label=t.enable..t.vmshake,
	Command="wb3_vmshake"
})
pn:AddControl("CheckBox",{
	Label=t.enable..t.viewpunch,
	Command="wb3_viewpunch"
})
end)
spawnmenu.AddToolMenuOption("Options","308..' Base","308..' Base4",t.mg,"","",function(pn)
pn:ClearControls()
pn:AddControl("Label",{Text=a.gtb})
pn:AddControl("Slider",{
	Label=t.mg_hg,
	Command="wb3_mg_hg",
	Min=5000,
	Max=50000
})
pn:AddControl("Label",{Text=t.mg_hg1})
pn:AddControl("Label",{Text=a.gt3})
pn:AddControl("Slider",{
	Label=t.mg_zbhp,
	Command="wb3_mg_zbhp",
	Min=500,
	Max=2000
})
pn:AddControl("Label",{Text=t.mg_zb1})
pn:AddControl("Slider",{
	Label=t.mg_zbre,
	Command="wb3_mg_zbre",
	Min=1,
	Max=10
})
pn:AddControl("Label",{Text=a.gt4})
pn:AddControl("Slider",{
	Label=t.mg_cs1,
	Command="wb3_c4",
	Min=5,
	Max=60
})
pn:AddControl("Slider",{
	Label=t.mg_cs,
	Command="wb3_mg_cs",
	Min=60,
	Max=240
})
end)
end)

--ply:SendLua("GAMEMODE:AddNotify(\"Cleaned Up Everything!\", NOTIFY_CLEANUP, 5)")