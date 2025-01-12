-- Copyright © 2023 Aigio1064 All Rights Reserved.
Package = {}
Package.application = {
 name = "com.ZipasGames.EventHorizon",
 versionName = "1.9.4",
 MaxVersion = 109400,
 MinVersion = 109100,
}
Package.version = "1.0.0"
Package.author = "Aigio1064"
Package.description = "Event Horizon by Aigio1064"
Package.baseAddress = 0
Package.APIVersion = "101.0"
function Package.initBaseAddress()
 gg.clearResults()
 gg.setRanges(gg.REGION_ANONYMOUS)
 gg.searchNumber("37;0;-1;0;0;1;-1;1::33", gg.TYPE_DWORD)
 gg.refineNumber("37", gg.TYPE_DWORD)
 local t = gg.getResults(100)
 gg.clearResults()
 if #t == 0 then
  return nil
 end
 t = t[#t]
 return t.address + 4
end
function Package.generateResultsTable(array)
 if array == nil then
  return {}
 end
 local baseAddress = Package.baseAddress + 0
 local results = {}
 for index = 1, #array do
  local item = array[index]
  if item == nil then
   break
  end
  if item.offset == nil and item.address == nil then
   break
  elseif item.address == nil then
   item.address = baseAddress + (item.offset * 16)
  end
  if item.flags == nil then
   item.flags = gg.TYPE_DWORD
  end
  results[index] = {}
  results[index].address = item.address
  results[index].flags = item.flags
  if item.value ~= nil then
   results[index].value = item.value
  end
 end
 return results
end
function Package.generateResultsArray(values, start, length, flags)
 local vot = false
 if type(values) == "table" then vot = true end
 if start == nil then start = 0 end
 if length == nil then
  if vot then
   length = #values
  else
   length = 1
  end
 end
 if flags == nil then
  flags = gg.TYPE_DWORD
 end
 local result = {}
 for i = 1, length do
  local item = {}
  item.offset = start + (i - 1)
  item.flags = flags
  if vot then
   if values[i] ~= nil then
    item.value = values[i]
   end
  else
   item.value = values
  end
  result[i] = item
 end
 return result
end
Funcitions = {}
function Funcitions.FullLevel()
 local maps = { 10, 10, 1, 10, 10, 20, 10, 10, 10, 6, 1, 10, 4, 0, 9, 11, 12, 12, 2, 6, 6, 10, 10 }
 local table = Package.generateResultsTable(Package.generateResultsArray(maps, 2))
end
function Funcitions.GodMode()
 local offsets = { 6, 8, 9, 10, 23, 24 }
 local table = {}
 for i = 1, #offsets do
  table[i] = {}
  table[i].offset = offsets[i]
  table[i].flags = gg.TYPE_DWORD
  table[i].value = 2139095040
 end
 table = Package.generateResultsTable(table)
end

function Funcitions.Spikes()
 local table = {
  {
   offset = 5,
   flags = gg.TYPE_DWORD,
   value = 2139095040
  }
 }
 table = Package.generateResultsTable(table)
end

function Funcitions.FreeFactory()
 local table = {
  {
   offset = 21,
   flags = gg.TYPE_DWORD,
   value = 25
  },
  {
   offset = 22,
   flags = gg.TYPE_DWORD,
   value = 100
  }
 }
 table = Package.generateResultsTable(table)
end

function Funcitions.InstantMaxLevel()
 local table = {
  {
   offset = 7,
   flags = gg.TYPE_DWORD,
   value = 2139095040
  }
 }
 table = Package.generateResultsTable(table)
end

function Funcitions.FullFlagship()
 local table = {
  {
   offset = 20,
   flags = gg.TYPE_DWORD,
   value = 12
  }
 }
 table = Package.generateResultsTable(table)
end

function Package.main()
 gg.require(Package.APIVersion)
 local app = gg.getTargetInfo()
 if app.packageName ~= Package.application.name then
  gg.alert("请正确选择游戏")
  os.exit(1)
 end
 if app.versionCode >= Package.application.MaxVersion or app.versionCode <= Package.application.MinVersion then
  local c = gg.alert(
   "此脚本已测试支持 " .. Package.application.versionName .. " 版本，当前运行的版本是 " .. app.versionName .. " ，这可能导致问题，要继续吗？",
   "继续",
   "取消")
  if c ~= 1 then
   os.exit(1)
  end
 end
 Package.baseAddress = Package.initBaseAddress()
 if Package.baseAddress == nil then
  gg.alert("请先开始游戏")
  return
 end
 local menu1 = gg.multiChoice({
  "满级",
  "伪无敌",
  "伪秒杀",
  "免费工厂",
  "快速升级",
  "全队旗舰"
 }, { [1] = true }, Package.description)
 if menu1[1] then
  Funcitions.FullLevel()
 end
 if menu1[2] then
  Funcitions.GodMode()
 end
 if menu1[3] then
  Funcitions.Spikes()
 end
 if menu1[4] then
  Funcitions.FreeFactory()
 end
 if menu1[5] then
  Funcitions.InstantMaxLevel()
 end
 if menu1[6] then
  Funcitions.FullFlagship()
 end
end
Package.main()