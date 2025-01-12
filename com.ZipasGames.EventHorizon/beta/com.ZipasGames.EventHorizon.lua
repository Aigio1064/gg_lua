-- Copyright © 2023 Aigio1064 All Rights Reserved.
gg.require('101.0')
gg.clearResults()
gg.clearList()
app = {}
app.Version = gg.getTargetInfo().versionName
app.PackageName = gg.getTargetPackage()
local Aigio1064 = {}
Aigio1064.LUATITLE = "Event Horizon 1.9.1 Lua by Aigio1064"
Aigio1064.APPLICATION = "com.ZipasGames.EventHorizon"
Aigio1064.APPLICATION_VERSION = "1.9.1"
Aigio1064.LEVEL_MAP = {0,10,10,1,10,10,20,10,10,10,6,1,10,4,0,9,11,12,12,2,6,6,10,10}

function Aigio1064.getBaseAddress()
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("37;0;-1;0;0;1;-1;1::33",gg.TYPE_DWORD)
    t = gg.getResults(100)
    gg.clearResults()
    return t[#t - 7].address
end

Aigio1064.BASE_ADDRESS = Aigio1064.getBaseAddress()

function Aigio1064.FULL_LEVEL()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    y = {}
    for i=1,#Aigio1064.LEVEL_MAP do
        y[i] = {}
        y[i].address = u + 16
        y[i].flags = gg.TYPE_DWORD
        y[i].value = Aigio1064.LEVEL_MAP[i]
        u = u + 16
    end
    gg.addListItems(y)
    gg.loadResults(y)
    for i = 1,#Aigio1064.LEVEL_MAP do
        gg.getResults(1,i-1)
        gg.editAll(""..Aigio1064.LEVEL_MAP[i],gg.TYPE_DWORD)
    end
    print(z)
end

function Aigio1064.GODS()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    v = {6,8,9,10,23,24}
    y = {}
    for i=1,#v do
        y[i] = {}
        y[i].address = u + ( v[i] * 16 )
        y[i].flags = gg.TYPE_DWORD
    end
    gg.loadResults(y)
    z = gg.getResults(#v)
    gg.editAll("2139095040",gg.TYPE_DWORD)
    print(z)
end

function Aigio1064.LIGHTNING_DEALS()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    v = {5}
    y = {}
    for i=1,#v do
        y[i] = {}
        y[i].address = u + ( v[i] * 16 )
        y[i].flags = gg.TYPE_DWORD
    end
    gg.loadResults(y)
    z = gg.getResults(#v)
    gg.editAll("2139095040",gg.TYPE_DWORD)
    print(z)
end

function Aigio1064.GIGAFACTORY()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    v = {21,22}
    w = {25,100}
    y = {}
    for i=1,#v do
        y[i] = {}
        y[i].address = u + ( v[i] * 16 )
        y[i].flags = gg.TYPE_DWORD
    end
    gg.loadResults(y)
    for i = 1,#w do
        gg.getResults(1,i-1)
        gg.editAll(""..w[i],gg.TYPE_DWORD)
    end
    print(z)
end

function Aigio1064.SPEED_UP()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    v = {7}
    y = {}
    for i=1,#v do
        y[i] = {}
        y[i].address = u + ( v[i] * 16 )
        y[i].flags = gg.TYPE_DWORD
    end
    gg.loadResults(y)
    z = gg.getResults(#v)
    gg.editAll("2139095040",gg.TYPE_DWORD)
    print(z)
end

function Aigio1064.FULL_GRID_FLAGSHIP()
    gg.clearResults()
    u = Aigio1064.BASE_ADDRESS + 0
    v = {20}
    y = {}
    for i=1,#v do
        y[i] = {}
        y[i].address = u + ( v[i] * 16 )
        y[i].flags = gg.TYPE_DWORD
    end
    gg.loadResults(y)
    z = gg.getResults(#v)
    gg.editAll("12",gg.TYPE_DWORD)
    print(z)
end

function Main()
    menu1 = gg.multiChoice({
        "满级",
        "究级血条+超级三抗+超级护盾(伪无敌)",
        "超级伤害(伪秒杀)",
        "超级工厂",
        "飙速升级",
        "全格旗舰"
    },{[1]=true},Aigio1064.LUATITLE)
    print(Aigio1064)
    if menu1[1] then
        Aigio1064.FULL_LEVEL()
    end
    if menu1[2] then
        Aigio1064.GODS()
    end
    if menu1[3] then
        Aigio1064.LIGHTNING_DEALS()
    end
    if menu1[4] then
        Aigio1064.GIGAFACTORY()
    end
    if menu1[5] then
        Aigio1064.SPEED_UP()
    end
    if menu1[6] then
        Aigio1064.FULL_GRID_FLAGSHIP()
    end
end
if app.Version ~= Aigio1064.APPLICATION_VERSION then
    x = gg.alert("此脚本只适用于 "..Aigio1064.APPLICATION_VERSION.." 版本，当前运行的版本是 "..app.Version.." ，这可能导致问题，要继续吗？","继续","取消")
    if x == -1 then os.exit() end
    if x == 2 then os.exit() end
end
Main()