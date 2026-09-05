local a = {}
local g = function(b, c)
  if (((1 + 1) == 2) and a[b]) then
    return a[b]
  end
  local d = {}
  for e = 1, #b do
    d[e] = string.char(bit32.bxor(b[e], c))
  end
  local f = table.concat(d)
  a[b] = f
  return f
end
local h = game:GetService(g({10, 54, 59, 35, 63, 40, 41}, 90))
local i = game:GetService(g({8, 63, 42, 54, 51, 57, 59, 46, 63, 62, 9, 46, 53, 40, 59, 61, 63}, 90))
local j = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local k = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local l = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local m = h.LocalPlayer
local n = getgenv().MillyMenu
if (((15 * 15) == 225) and not n) then
  return
end
local o = getgenv().MillyMine
if (((100 % 7) == 2) and (type(o) == g({46, 59, 56, 54, 63}, 90))) then
  o.running = false
end
local p = i:WaitForChild(g({8, 63, 55, 53, 46, 63, 41}, 90), 10)
if (((12 * 12) == 144) and not p) then
  return
end
local function q(r)
  return p:FindFirstChild(r)
end
local function s(t, ...)
  local u = q(t)
  if (((3 ^ 2) == 9) and (u and u:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    return pcall(u.FireServer, u, ...)
  end
  return false
end
local function v(w, ...)
  local x = q(w)
  if (((7 * 7) == 49) and (x and x:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    local y, z = pcall(x.InvokeServer, x, ...)
    if (((1 + 1) == 2) and y) then
      return z
    end
  end
end
local aa = {running = true, mine = false, mineDelay = .35, mineRadius = 30, minTier = 0, minValue = 0, tpMine = true, instant = false, fastMine = false, equip = true, sell = false, sellPercent = 92, sellDelay = 2, returnAfterSell = true, airUpgrade = false, weightUpgrade = false, upgradeAmount = 1, upgradeDelay = 3, plotUpgrade = false, mountain = false, mountainKey = "", autoSledge = false, sledgeDelay = .4, autoRadar = false, radarId = "", radarDelay = 2, crystalEsp = false, eventEsp = false, plotEsp = false, espRange = 3000, walk = false, walkSpeed = 16, jump = false, jumpPower = 50, noclip = false, fly = false, flySpeed = 60, antiAfk = false, fullbright = false, noFog = false, noParticles = false, status = g({40, 63, 59, 62, 35}, 90), mined = 0, sold = 0}
getgenv().MillyMine = aa
local function ab()
  return m.Character
end
local function ac()
  local ad = ab()
  return (ad and ad:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function ae()
  local af = ab()
  return (af and af:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function ag()
  local ah = m:FindFirstChild(g({10, 54, 59, 35, 63, 40, 30, 59, 46, 59}, 90))
  return (ah and ah:FindFirstChild(g({8, 63, 59, 54, 9, 46, 59, 46, 41}, 90)))
end
local function ai(aj)
  local ak = ag()
  local al = (ak and ak:FindFirstChild(aj))
  return (al and al.Value)
end
local function am()
  local an = workspace:FindFirstChild(g({14, 50, 51, 52, 61, 41}, 90))
  return (an and an:FindFirstChild(g({25, 40, 35, 41, 46, 59, 54, 41}, 90)))
end
local function ao(ap)
  if (((15 * 15) == 225) and ap:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return ap
  end
  return (ap.PrimaryPart or ap:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
end
local function aq(ar)
  local as = ao(ar)
  if (((100 % 7) == 2) and not as) then
    return
  end
  return as, (tonumber((ar:GetAttribute(g({14, 51, 63, 40}, 90)) or as:GetAttribute(g({14, 51, 63, 40}, 90)))) or 0), (tonumber((ar:GetAttribute(g({12, 59, 54, 47, 63}, 90)) or as:GetAttribute(g({12, 59, 54, 47, 63}, 90)))) or 0), tostring(((ar:GetAttribute(g({14, 51, 63, 40, 20, 59, 55, 63}, 90)) or as:GetAttribute(g({14, 51, 63, 40, 20, 59, 55, 63}, 90))) or ar.Name))
end
local function at()
  local au, av
  for aw, ax in ipairs({m:FindFirstChild(g({24, 59, 57, 49, 42, 59, 57, 49}, 90)), ab()}) do
    if (((12 * 12) == 144) and ax) then
      for ay, az in ipairs(ax:GetChildren()) do
        if (((3 ^ 2) == 9) and (az:IsA(g({14, 53, 53, 54}, 90)) and ((((az:GetAttribute(g({30, 51, 61, 10, 53, 45, 63, 40}, 90)) ~= nil) or az.Name:find(g({10, 51, 57, 49}, 90))) or az.Name:find(g({27, 34, 63}, 90)))))) then
          local ba = (tonumber(az:GetAttribute(g({30, 51, 61, 10, 53, 45, 63, 40}, 90))) or 0)
          if (((7 * 7) == 49) and (not av or (ba > av))) then
            au, av = az, ba
          end
        end
      end
    end
  end
  return au
end
local function bb()
  local bc = at()
  local bd = ae()
  if (((1 + 1) == 2) and ((bc and bd) and (bc.Parent ~= ab()))) then
    bd:EquipTool(bc)
  end
  return bc
end
local function be()
  local bf = ac()
  local bg = am()
  local bh = {}
  if (((15 * 15) == 225) and (not bf or not bg)) then
    return bh
  end
  for bi, bj in ipairs(bg:GetChildren()) do
    if (((100 % 7) == 2) and (bj:GetAttribute(g({25, 53, 54, 54, 63, 57, 46, 63, 62}, 90)) ~= true)) then
      local bk, bl, bm, bn = aq(bj)
      local bo = (bk and bj:FindFirstChildWhichIsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90), true))
      if (((12 * 12) == 144) and ((((bk and bo) and bo.Enabled) and (bl >= aa.minTier)) and (bm >= aa.minValue))) then
        local bp = ((bk.Position - bf.Position)).Magnitude
        if (((3 ^ 2) == 9) and ((bp <= aa.mineRadius) or aa.tpMine)) then
          bh[(#bh + 1)] = {v = bj, p = bk, prompt = bo, d = bp, tier = bl, value = bm, name = bn}
        end
      end
    end
  end
  table.sort(bh, function(bq, br)
    if (((7 * 7) == 49) and (bq.tier ~= br.tier)) then
      return (bq.tier > br.tier)
    end
    if (((1 + 1) == 2) and (bq.value ~= br.value)) then
      return (bq.value > br.value)
    end
    return (bq.d < br.d)
  end)
  return bh
end
local bs, bt
local function bu(bv)
  if (((15 * 15) == 225) and (bv:GetAttribute(g({23, 51, 54, 54, 35, 18, 53, 54, 62}, 90)) == nil)) then
    bv:SetAttribute(g({23, 51, 54, 54, 35, 18, 53, 54, 62}, 90), bv.HoldDuration)
  end
  bv.HoldDuration = 0
  bv.RequiresLineOfSight = false
end
local function bw(bx)
  if (((100 % 7) == 2) and fireproximityprompt) then
    return pcall(fireproximityprompt, bx, 0)
  end
  return pcall(function()
    bx:InputHoldBegin()
    task.wait(math.max(bx.HoldDuration, .05))
    bx:InputHoldEnd()
  end)
end
local function by()
  if (((12 * 12) == 144) and (((bs and bs.Parent) and (bs:GetAttribute(g({25, 53, 54, 54, 63, 57, 46, 63, 62}, 90)) ~= true)) and ((os.clock() - ((bt or 0))) < 1.25))) then
    return
  end
  bs = nil
  if (((3 ^ 2) == 9) and aa.equip) then
    bb()
    task.wait(.05)
  end
  local bz = be()
  local ca = bz[1]
  if (((7 * 7) == 49) and not ca) then
    aa.status = g({52, 53, 122, 55, 59, 46, 57, 50, 51, 52, 61, 122, 57, 40, 35, 41, 46, 59, 54}, 90)
    return
  end
  bs = ca.v
  if (((1 + 1) == 2) and aa.tpMine) then
    local cb = ac()
    if (((15 * 15) == 225) and cb) then
      local cc = (ca.p.CFrame.LookVector * math.min(math.max((ca.prompt.MaxActivationDistance - 1), 2), 6))
      cb.CFrame = CFrame.new(((ca.p.Position - cc) + Vector3.new(0, 2, 0)), ca.p.Position)
      cb.AssemblyLinearVelocity = Vector3.new()
      task.wait(.18)
    end
  end
  if (((100 % 7) == 2) and (aa.instant or aa.fastMine)) then
    bu(ca.prompt)
  end
  local cd = ac()
  if (((12 * 12) == 144) and (not cd or (((ca.p.Position - cd.Position)).Magnitude > math.max((ca.prompt.MaxActivationDistance + 3), 15)))) then
    aa.status = g({46, 59, 40, 61, 63, 46, 122, 53, 47, 46, 122, 53, 60, 122, 40, 59, 52, 61, 63}, 90)
    bs = nil
    return
  end
  local ce = bw(ca.prompt)
  bt = os.clock()
  if (((3 ^ 2) == 9) and ce) then
    aa.mined += 1
    aa.status = (g({55, 51, 52, 51, 52, 61, 122}, 90) .. ca.name)
  else
    aa.status = g({42, 40, 53, 55, 42, 46, 122, 47, 52, 41, 47, 42, 42, 53, 40, 46, 63, 62}, 90)
    bs = nil
  end
end
local function cf()
  local cg, ch = 0, 0
  for ci, cj in ipairs({m:FindFirstChild(g({24, 59, 57, 49, 42, 59, 57, 49}, 90)), ab()}) do
    if (((7 * 7) == 49) and cj) then
      for ck, cl in ipairs(cj:GetChildren()) do
        if (((1 + 1) == 2) and ((cl:IsA(g({14, 53, 53, 54}, 90)) and (cl:GetAttribute(g({14, 51, 63, 40}, 90)) ~= nil)) and (cl:GetAttribute(g({5, 5, 41, 53, 54, 62}, 90)) ~= true))) then
          cg += (tonumber(cl:GetAttribute(g({13, 63, 51, 61, 50, 46, 17, 61}, 90))) or 0)
          ch += (tonumber(cl:GetAttribute(g({12, 59, 54, 47, 63}, 90))) or 0)
        end
      end
    end
  end
  return cg, (tonumber(ai(g({25, 59, 40, 40, 35, 13, 63, 51, 61, 50, 46}, 90))) or math.huge), ch
end
local cm
local function cn()
  local co = ac()
  if (((15 * 15) == 225) and (aa.returnAfterSell and co)) then
    cm = co.CFrame
  end
  s(g({29, 53, 18, 53, 55, 63}, 90), g({41, 63, 54, 54}, 90))
  task.wait(.6)
  local cp = s(g({9, 63, 54, 54, 8, 63, 43, 47, 63, 41, 46}, 90), g({59, 54, 54}, 90))
  if (((100 % 7) == 2) and cp) then
    aa.sold += 1
    aa.status = g({41, 63, 54, 54, 122, 40, 63, 43, 47, 63, 41, 46, 63, 62}, 90)
    task.delay(1, function()
      if (((12 * 12) == 144) and ((aa.running and aa.returnAfterSell) and cm)) then
        local cq = ac()
        if (((3 ^ 2) == 9) and cq) then
          cq.CFrame = cm
        end
      end
    end)
  end
end
local cr = n:tab(g({28, 27, 8, 23}, 90))
cr:section(g({41, 55, 59, 40, 46, 122, 57, 40, 35, 41, 46, 59, 54, 122, 55, 51, 52, 51, 52, 61}, 90))
local cs = cr:label(g({9, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
cr:toggle(g({59, 47, 46, 53, 122, 55, 51, 52, 63}, 90), false, function(ct)
  aa.mine = ct
end)
cr:slider(g({55, 51, 52, 63, 122, 62, 63, 54, 59, 35}, 90), .05, 3, aa.mineDelay, function(cu)
  aa.mineDelay = cu
end)
cr:slider(g({41, 63, 59, 40, 57, 50, 122, 40, 59, 62, 51, 47, 41}, 90), 5, 500, aa.mineRadius, function(cv)
  aa.mineRadius = cv
end)
cr:slider(g({55, 51, 52, 51, 55, 47, 55, 122, 46, 51, 63, 40}, 90), 0, 20, aa.minTier, function(cw)
  aa.minTier = cw
end)
cr:slider(g({55, 51, 52, 51, 55, 47, 55, 122, 44, 59, 54, 47, 63}, 90), 0, 1000000, aa.minValue, function(cx)
  aa.minValue = cx
end)
cr:toggle(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 57, 40, 35, 41, 46, 59, 54, 41}, 90), true, function(cy)
  aa.tpMine = cy
end)
cr:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46}, 90), false, function(cz)
  aa.instant = cz
end)
cr:toggle(g({60, 59, 41, 46, 122, 55, 51, 52, 63, 122, 59, 54, 54, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(da)
  aa.fastMine = da
end)
cr:toggle(g({63, 43, 47, 51, 42, 122, 56, 63, 41, 46, 122, 42, 51, 57, 49, 59, 34, 63}, 90), true, function(db)
  aa.equip = db
end)
cr:button(g({55, 51, 52, 63, 122, 56, 63, 41, 46, 122, 53, 52, 57, 63}, 90), by)
cr:button(g({63, 43, 47, 51, 42, 122, 56, 63, 41, 46, 122, 42, 51, 57, 49, 59, 34, 63}, 90), bb)
cr:section(g({41, 63, 54, 54, 51, 52, 61}, 90))
cr:toggle(g({59, 47, 46, 53, 122, 41, 63, 54, 54, 122, 45, 50, 63, 52, 122, 60, 47, 54, 54}, 90), false, function(dc)
  aa.sell = dc
end)
cr:slider(g({41, 63, 54, 54, 122, 59, 46, 122, 42, 63, 40, 57, 63, 52, 46}, 90), 10, 100, aa.sellPercent, function(dd)
  aa.sellPercent = dd
end)
cr:slider(g({41, 63, 54, 54, 122, 57, 50, 63, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .5, 15, aa.sellDelay, function(de)
  aa.sellDelay = de
end)
cr:toggle(g({40, 63, 46, 47, 40, 52, 122, 59, 60, 46, 63, 40, 122, 41, 63, 54, 54}, 90), true, function(df)
  aa.returnAfterSell = df
end)
cr:button(g({41, 63, 54, 54, 122, 59, 54, 54, 122, 52, 53, 45}, 90), cn)
cr:button(g({41, 63, 54, 54, 122, 50, 63, 54, 62}, 90), function()
  s(g({9, 63, 54, 54, 8, 63, 43, 47, 63, 41, 46}, 90), g({50, 63, 54, 62}, 90))
end)
local dg = n:tab(g({15, 10, 29, 8, 27, 30, 31, 9}, 90))
dg:section(g({59, 47, 46, 53, 55, 59, 46, 51, 57, 122, 47, 42, 61, 40, 59, 62, 63, 41}, 90))
dg:toggle(g({59, 47, 46, 53, 122, 59, 51, 40, 122, 47, 42, 61, 40, 59, 62, 63}, 90), false, function(dh)
  aa.airUpgrade = dh
end)
dg:toggle(g({59, 47, 46, 53, 122, 56, 59, 57, 49, 42, 59, 57, 49, 122, 47, 42, 61, 40, 59, 62, 63}, 90), false, function(di)
  aa.weightUpgrade = di
end)
dg:slider(g({54, 63, 44, 63, 54, 41, 122, 42, 63, 40, 122, 40, 63, 43, 47, 63, 41, 46}, 90), 1, 3, aa.upgradeAmount, function(dj)
  aa.upgradeAmount = dj
end)
dg:slider(g({47, 42, 61, 40, 59, 62, 63, 122, 62, 63, 54, 59, 35}, 90), 1, 30, aa.upgradeDelay, function(dk)
  aa.upgradeDelay = dk
end)
dg:button(g({56, 47, 35, 122, 59, 51, 40}, 90), function()
  s(g({15, 42, 61, 40, 59, 62, 63, 24, 47, 35}, 90), g({27, 51, 40}, 90), aa.upgradeAmount)
end)
dg:button(g({56, 47, 35, 122, 56, 59, 57, 49, 42, 59, 57, 49}, 90), function()
  s(g({15, 42, 61, 40, 59, 62, 63, 24, 47, 35}, 90), g({13, 63, 51, 61, 50, 46}, 90), aa.upgradeAmount)
end)
dg:toggle(g({59, 47, 46, 53, 122, 42, 54, 53, 46, 122, 57, 59, 42, 59, 57, 51, 46, 35}, 90), false, function(dl)
  aa.plotUpgrade = dl
end)
dg:button(g({47, 42, 61, 40, 59, 62, 63, 122, 42, 54, 53, 46, 122, 57, 59, 42, 59, 57, 51, 46, 35}, 90), function()
  s(g({15, 42, 61, 40, 59, 62, 63, 10, 54, 53, 46, 25, 59, 42, 59, 57, 51, 46, 35}, 90))
end)
dg:button(g({40, 63, 43, 47, 63, 41, 46, 122, 59, 51, 40, 122, 42, 40, 51, 57, 63, 41}, 90), function()
  local dm = v(g({15, 42, 61, 40, 59, 62, 63, 10, 40, 51, 57, 63, 41}, 90), g({27, 51, 40}, 90))
  aa.status = (g({59, 51, 40, 122, 42, 40, 51, 57, 63, 41, 96, 122}, 90) .. tostring(dm))
end)
dg:button(g({40, 63, 43, 47, 63, 41, 46, 122, 45, 63, 51, 61, 50, 46, 122, 42, 40, 51, 57, 63, 41}, 90), function()
  local dn = v(g({15, 42, 61, 40, 59, 62, 63, 10, 40, 51, 57, 63, 41}, 90), g({13, 63, 51, 61, 50, 46}, 90))
  aa.status = (g({45, 63, 51, 61, 50, 46, 122, 42, 40, 51, 57, 63, 41, 96, 122}, 90) .. tostring(dn))
end)
local dp = n:tab(g({14, 21, 21, 22, 9}, 90))
dp:section(g({41, 50, 53, 42, 122, 59, 52, 62, 122, 55, 53, 47, 52, 46, 59, 51, 52, 41}, 90))
dp:input(g({41, 50, 53, 42, 122, 51, 46, 63, 55, 122, 51, 62}, 90), g({51, 46, 63, 55, 122, 51, 62}, 90), function(dq)
  aa.shopId = dq
end)
dp:button(g({56, 47, 35, 122, 51, 46, 63, 55}, 90), function()
  if (((7 * 7) == 49) and (aa.shopId and (aa.shopId ~= ""))) then
    s(g({9, 50, 53, 42, 24, 47, 35}, 90), aa.shopId)
  end
end)
dp:button(g({63, 43, 47, 51, 42, 122, 51, 46, 63, 55}, 90), function()
  if (((1 + 1) == 2) and (aa.shopId and (aa.shopId ~= ""))) then
    s(g({9, 50, 53, 42, 31, 43, 47, 51, 42}, 90), aa.shopId)
  end
end)
dp:input(g({55, 53, 47, 52, 46, 59, 51, 52, 122, 42, 40, 63, 41, 63, 46, 122, 49, 63, 35}, 90), g({42, 40, 63, 41, 63, 46, 122, 49, 63, 35}, 90), function(dr)
  aa.mountainKey = dr
end)
dp:toggle(g({59, 47, 46, 53, 122, 56, 47, 35, 122, 55, 53, 47, 52, 46, 59, 51, 52}, 90), false, function(ds)
  aa.mountain = ds
end)
dp:button(g({56, 47, 35, 122, 55, 53, 47, 52, 46, 59, 51, 52}, 90), function()
  if (((15 * 15) == 225) and (aa.mountainKey ~= "")) then
    s(g({23, 53, 47, 52, 46, 59, 51, 52, 24, 47, 35, 8, 63, 43, 47, 63, 41, 46}, 90), aa.mountainKey)
  end
end)
dp:section(g({41, 54, 63, 62, 61, 63, 122, 59, 52, 62, 122, 40, 59, 62, 59, 40}, 90))
dp:toggle(g({59, 47, 46, 53, 122, 41, 54, 63, 62, 61, 63, 122, 46, 63, 40, 40, 59, 51, 52}, 90), false, function(dt)
  aa.autoSledge = dt
end)
dp:slider(g({41, 54, 63, 62, 61, 63, 122, 62, 63, 54, 59, 35}, 90), .35, 5, aa.sledgeDelay, function(du)
  aa.sledgeDelay = du
end)
dp:input(g({40, 59, 62, 59, 40, 122, 51, 62}, 90), g({40, 59, 62, 59, 40, 122, 51, 62}, 90), function(dv)
  aa.radarId = dv
end)
dp:toggle(g({59, 47, 46, 53, 122, 59, 57, 46, 51, 44, 59, 46, 63, 122, 40, 59, 62, 59, 40}, 90), false, function(dw)
  aa.autoRadar = dw
end)
dp:button(g({59, 57, 46, 51, 44, 59, 46, 63, 122, 40, 59, 62, 59, 40}, 90), function()
  if (((100 % 7) == 2) and (aa.radarId ~= "")) then
    s(g({8, 59, 62, 59, 40, 27, 57, 46, 51, 44, 59, 46, 63}, 90), aa.radarId, true)
  end
end)
dp:button(g({62, 63, 59, 57, 46, 51, 44, 59, 46, 63, 122, 40, 59, 62, 59, 40}, 90), function()
  s(g({8, 59, 62, 59, 40, 27, 57, 46, 51, 44, 59, 46, 63}, 90), nil, false)
end)
dp:button(g({56, 47, 35, 122, 40, 59, 62, 59, 40}, 90), function()
  if (((12 * 12) == 144) and (aa.radarId ~= "")) then
    v(g({8, 59, 62, 59, 40, 24, 47, 35, 8, 63, 43, 47, 63, 41, 46}, 90), aa.radarId, 1)
  end
end)
local dx = n:tab(g({29, 27, 8, 30, 31, 20}, 90))
dx:section(g({42, 54, 53, 46, 122, 57, 40, 35, 41, 46, 59, 54, 41}, 90))
dx:button(g({46, 59, 49, 63, 122, 53, 47, 46, 122, 59, 54, 54, 122, 57, 40, 35, 41, 46, 59, 54, 41}, 90), function()
  s(g({14, 59, 49, 63, 21, 47, 46, 27, 54, 54, 25, 40, 35, 41, 46, 59, 54, 41}, 90))
end)
dx:button(g({61, 59, 40, 62, 63, 52, 122, 41, 46, 59, 46, 41}, 90), function()
  local dy = v(g({29, 59, 40, 62, 63, 52, 9, 46, 59, 46, 41}, 90))
  aa.status = (g({61, 59, 40, 62, 63, 52, 122, 41, 46, 59, 46, 41, 122, 40, 63, 57, 63, 51, 44, 63, 62, 96, 122}, 90) .. tostring((dy ~= nil)))
end)
dx:button(g({41, 53, 40, 46, 122, 44, 59, 54, 47, 63, 122, 62, 63, 41, 57, 63, 52, 62, 51, 52, 61}, 90), function()
  s(g({9, 53, 40, 46, 29, 59, 40, 62, 63, 52}, 90), g({12, 59, 54, 47, 63}, 90), g({30, 63, 41, 57, 63, 52, 62, 51, 52, 61}, 90))
end)
dx:button(g({41, 53, 40, 46, 122, 46, 51, 63, 40, 122, 62, 63, 41, 57, 63, 52, 62, 51, 52, 61}, 90), function()
  s(g({9, 53, 40, 46, 29, 59, 40, 62, 63, 52}, 90), g({14, 51, 63, 40}, 90), g({30, 63, 41, 57, 63, 52, 62, 51, 52, 61}, 90))
end)
dx:button(g({62, 51, 41, 59, 56, 54, 63, 122, 61, 59, 40, 62, 63, 52, 122, 57, 53, 54, 54, 51, 41, 51, 53, 52, 41}, 90), function()
  s(g({9, 63, 46, 46, 51, 52, 61, 41, 15, 42, 62, 59, 46, 63}, 90), g({29, 59, 40, 62, 63, 52, 25, 53, 54, 54, 51, 41, 51, 53, 52, 41}, 90), false)
end)
dx:button(g({63, 52, 59, 56, 54, 63, 122, 61, 59, 40, 62, 63, 52, 122, 57, 53, 54, 54, 51, 41, 51, 53, 52, 41}, 90), function()
  s(g({9, 63, 46, 46, 51, 52, 61, 41, 15, 42, 62, 59, 46, 63}, 90), g({29, 59, 40, 62, 63, 52, 25, 53, 54, 54, 51, 41, 51, 53, 52, 41}, 90), true)
end)
dx:button(g({61, 53, 122, 50, 53, 55, 63}, 90), function()
  s(g({29, 53, 18, 53, 55, 63}, 90), g({50, 53, 55, 63}, 90))
end)
dx:button(g({61, 53, 122, 46, 53, 122, 42, 54, 53, 46}, 90), function()
  s(g({29, 53, 18, 53, 55, 63}, 90), g({42, 54, 53, 46}, 90))
end)
dx:button(g({61, 53, 122, 46, 53, 122, 41, 63, 54, 54, 63, 40}, 90), function()
  s(g({29, 53, 18, 53, 55, 63}, 90), g({41, 63, 54, 54}, 90))
end)
local dz = n:tab(g({31, 2, 14, 8, 27, 9}, 90))
dz:section(g({40, 63, 45, 59, 40, 62, 41, 122, 59, 52, 62, 122, 41, 47, 40, 44, 51, 44, 59, 54}, 90))
dz:button(g({57, 54, 59, 51, 55, 122, 46, 47, 46, 53, 40, 51, 59, 54, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  s(g({25, 54, 59, 51, 55, 14, 47, 46, 53, 40, 51, 59, 54, 8, 63, 45, 59, 40, 62}, 90))
end)
dz:button(g({57, 54, 59, 51, 55, 122, 61, 40, 53, 47, 42, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  s(g({25, 54, 59, 51, 55, 29, 40, 53, 47, 42, 8, 63, 45, 59, 40, 62}, 90))
end)
dz:button(g({62, 51, 41, 57, 53, 44, 63, 40, 122, 51, 52, 62, 63, 34}, 90), function()
  s(g({19, 52, 62, 63, 34, 30, 51, 41, 57, 53, 44, 63, 40}, 90))
end)
dz:button(g({40, 63, 44, 51, 44, 63}, 90), function()
  s(g({8, 63, 44, 51, 44, 63, 24, 59, 41, 63}, 90))
end)
dz:button(g({41, 46, 40, 47, 61, 61, 54, 63, 122, 60, 40, 63, 63}, 90), function()
  s(g({29, 40, 59, 56, 9, 46, 40, 47, 61, 61, 54, 63, 28, 40, 63, 63}, 90))
end)
dz:button(g({40, 63, 43, 47, 63, 41, 46, 122, 32, 53, 52, 63, 41}, 90), function()
  s(g({0, 53, 52, 63, 30, 51, 41, 57, 53, 44, 63, 40, 35}, 90), g({40, 63, 43, 47, 63, 41, 46}, 90))
end)
dz:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(ea)
  aa.antiAfk = ea
end)
local eb = n:tab(g({31, 9, 10}, 90))
eb:section(g({57, 40, 35, 41, 46, 59, 54, 41, 122, 59, 52, 62, 122, 63, 44, 63, 52, 46, 41}, 90))
local ec = eb:label(g({31, 9, 10, 96, 122, 106}, 90))
eb:toggle(g({57, 40, 35, 41, 46, 59, 54, 122, 63, 41, 42}, 90), false, function(ed)
  aa.crystalEsp = ed
end)
eb:toggle(g({63, 44, 63, 52, 46, 122, 53, 56, 48, 63, 57, 46, 122, 63, 41, 42}, 90), false, function(ee)
  aa.eventEsp = ee
end)
eb:toggle(g({42, 54, 53, 46, 122, 57, 40, 35, 41, 46, 59, 54, 122, 63, 41, 42}, 90), false, function(ef)
  aa.plotEsp = ef
end)
eb:slider(g({40, 63, 52, 62, 63, 40, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 10000, aa.espRange, function(eg)
  aa.espRange = eg
end)
local eh = n:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
eh:section(g({57, 50, 59, 40, 59, 57, 46, 63, 40}, 90))
eh:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ei)
  aa.walk = ei
end)
eh:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62, 122, 44, 59, 54, 47, 63}, 90), 0, 200, aa.walkSpeed, function(ej)
  aa.walkSpeed = ej
end)
eh:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ek)
  aa.jump = ek
end)
eh:slider(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40, 122, 44, 59, 54, 47, 63}, 90), 0, 300, aa.jumpPower, function(el)
  aa.jumpPower = el
end)
eh:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(em)
  aa.noclip = em
end)
eh:toggle(g({60, 54, 35}, 90), false, function(en)
  aa.fly = en
end)
eh:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 300, aa.flySpeed, function(eo)
  aa.flySpeed = eo
end)
local ep = n:tab(g({12, 19, 9, 15, 27, 22}, 90))
ep:section(g({42, 63, 40, 60, 53, 40, 55, 59, 52, 57, 63}, 90))
ep:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(eq)
  aa.fullbright = eq
end)
ep:toggle(g({40, 63, 55, 53, 44, 63, 122, 60, 53, 61}, 90), false, function(er)
  aa.noFog = er
end)
ep:toggle(g({62, 51, 41, 59, 56, 54, 63, 122, 42, 59, 40, 46, 51, 57, 54, 63, 41}, 90), false, function(es)
  aa.noParticles = es
end)
ep:button(g({57, 54, 63, 59, 40, 122, 63, 60, 60, 63, 57, 46, 41, 122, 52, 53, 45}, 90), function()
  for et, eu in ipairs(workspace:GetDescendants()) do
    if (((3 ^ 2) == 9) and ((eu:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or eu:IsA(g({14, 40, 59, 51, 54}, 90))) or eu:IsA(g({24, 63, 59, 55}, 90)))) then
      eu.Enabled = false
    end
  end
end)
local ev = n:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
ev:section(g({41, 63, 41, 41, 51, 53, 52}, 90))
ev:label(g({27, 54, 54, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52, 122, 41, 46, 59, 40, 46, 41, 122, 62, 51, 41, 59, 56, 54, 63, 62}, 90))
ev:label(g({8, 51, 61, 50, 46, 9, 50, 51, 60, 46, 122, 119, 122, 50, 51, 62, 63, 117, 41, 50, 53, 45}, 90))
ev:button(g({41, 46, 53, 42, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52}, 90), function()
  for ew, ex in ipairs({g({55, 51, 52, 63}, 90), g({41, 63, 54, 54}, 90), g({60, 59, 41, 46, 23, 51, 52, 63}, 90), g({59, 51, 40, 15, 42, 61, 40, 59, 62, 63}, 90), g({45, 63, 51, 61, 50, 46, 15, 42, 61, 40, 59, 62, 63}, 90), g({42, 54, 53, 46, 15, 42, 61, 40, 59, 62, 63}, 90), g({55, 53, 47, 52, 46, 59, 51, 52}, 90), g({59, 47, 46, 53, 9, 54, 63, 62, 61, 63}, 90), g({59, 47, 46, 53, 8, 59, 62, 59, 40}, 90)}) do
    aa[ex] = false
  end
end)
ev:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  aa.running = false
  n:destroy()
end)
cr:show()
m.Idled:Connect(function()
  if (((7 * 7) == 49) and aa.antiAfk) then
    l:CaptureController()
    l:ClickButton2(Vector2.new())
  end
end)
local ey = {}
local function ez(fa, fb, fc)
  local fd = os.clock()
  if (((1 + 1) == 2) and not fb) then
    ey[fa] = fd
    return false
  end
  if (((15 * 15) == 225) and ((fd - ((ey[fa] or 0))) >= fc)) then
    ey[fa] = fd
    return true
  end
  return false
end
local function fe()
  local ff = ac()
  if (((100 % 7) == 2) and not ff) then
    return
  end
  local fg = workspace:Raycast((ff.Position + Vector3.new(0, 10, 0)), Vector3.new(0, -40, 0), RaycastParams.new())
  if (((12 * 12) == 144) and fg) then
    local fh = (fg.Position - ff.Position)
    if (((3 ^ 2) == 9) and (fh.Magnitude > 26)) then
      fh = (ff.Position + (fh.Unit * 26))
    else
      fh = fg.Position
    end
    s(g({9, 54, 63, 62, 61, 63, 9, 45, 51, 52, 61}, 90), fh)
  end
end
task.spawn(function()
  while (((7 * 7) == 49) and aa.running) do
    if (((1 + 1) == 2) and ez(g({60, 59, 41, 46, 42, 59, 46, 57, 50}, 90), true, .5)) then
      local fi = am()
      if (((15 * 15) == 225) and fi) then
        for fj, fk in ipairs(fi:GetDescendants()) do
          if (((100 % 7) == 2) and fk:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
            if (((12 * 12) == 144) and aa.fastMine) then
              bu(fk)
            elseif (((3 ^ 2) == 9) and (fk:GetAttribute(g({23, 51, 54, 54, 35, 18, 53, 54, 62}, 90)) ~= nil)) then
              fk.HoldDuration = fk:GetAttribute(g({23, 51, 54, 54, 35, 18, 53, 54, 62}, 90))
            end
          end
        end
      end
    end
    if (((7 * 7) == 49) and ez(g({55, 51, 52, 63}, 90), aa.mine, aa.mineDelay)) then
      by()
    end
    if (((1 + 1) == 2) and ez(g({41, 63, 54, 54}, 90), aa.sell, aa.sellDelay)) then
      local fl, fm = cf()
      if (((15 * 15) == 225) and (((fm < math.huge) and (fm > 0)) and (((fl / fm) * 100) >= aa.sellPercent))) then
        cn()
      end
    end
    if (((100 % 7) == 2) and ez(g({59, 51, 40}, 90), aa.airUpgrade, aa.upgradeDelay)) then
      s(g({15, 42, 61, 40, 59, 62, 63, 24, 47, 35}, 90), g({27, 51, 40}, 90), aa.upgradeAmount)
    end
    if (((12 * 12) == 144) and ez(g({45, 63, 51, 61, 50, 46}, 90), aa.weightUpgrade, aa.upgradeDelay)) then
      s(g({15, 42, 61, 40, 59, 62, 63, 24, 47, 35}, 90), g({13, 63, 51, 61, 50, 46}, 90), aa.upgradeAmount)
    end
    if (((3 ^ 2) == 9) and ez(g({42, 54, 53, 46}, 90), aa.plotUpgrade, aa.upgradeDelay)) then
      s(g({15, 42, 61, 40, 59, 62, 63, 10, 54, 53, 46, 25, 59, 42, 59, 57, 51, 46, 35}, 90))
    end
    if (((7 * 7) == 49) and (ez(g({55, 53, 47, 52, 46, 59, 51, 52}, 90), aa.mountain, 5) and (aa.mountainKey ~= ""))) then
      s(g({23, 53, 47, 52, 46, 59, 51, 52, 24, 47, 35, 8, 63, 43, 47, 63, 41, 46}, 90), aa.mountainKey)
    end
    if (((1 + 1) == 2) and ez(g({41, 54, 63, 62, 61, 63}, 90), aa.autoSledge, aa.sledgeDelay)) then
      fe()
    end
    if (((15 * 15) == 225) and (ez(g({40, 59, 62, 59, 40}, 90), aa.autoRadar, aa.radarDelay) and (aa.radarId ~= ""))) then
      s(g({8, 59, 62, 59, 40, 27, 57, 46, 51, 44, 59, 46, 63}, 90), aa.radarId, true)
    end
    task.wait(.03)
  end
end)
local fn = setmetatable({}, {__mode = g({49}, 90)})
local fo = {Common = Color3.fromRGB(230, 230, 230), Uncommon = Color3.fromRGB(80, 255, 120), Rare = Color3.fromRGB(70, 150, 255), Epic = Color3.fromRGB(190, 80, 255), Legendary = Color3.fromRGB(255, 180, 30), Mythic = Color3.fromRGB(255, 60, 100), Secret = Color3.fromRGB(255, 80, 220)}
local function fp(fq)
  local fr = fq:FindFirstChild(g({23, 51, 54, 54, 35, 23, 51, 52, 63, 31, 41, 42}, 90))
  if (((100 % 7) == 2) and fr) then
    fr:Destroy()
  end
  local fs = fq:FindFirstChild(g({23, 51, 54, 54, 35, 23, 51, 52, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((12 * 12) == 144) and fs) then
    fs:Destroy()
  end
  fn[fq] = nil
end
local function ft(fu, fv, fw)
  local fx = ao(fu)
  if (((3 ^ 2) == 9) and not fx) then
    return
  end
  local fy = fu:FindFirstChild(g({23, 51, 54, 54, 35, 23, 51, 52, 63, 31, 41, 42}, 90))
  if (((7 * 7) == 49) and not fy) then
    fy = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    fy.Name = g({23, 51, 54, 54, 35, 23, 51, 52, 63, 31, 41, 42}, 90)
    fy.Size = UDim2.fromOffset(190, 40)
    fy.StudsOffsetWorldSpace = Vector3.new(0, 2.5, 0)
    fy.AlwaysOnTop = true
    fy.Adornee = fx
    fy.Parent = fu
    local fz = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    fz.Name = g({22, 59, 56, 63, 54}, 90)
    fz.Size = UDim2.fromScale(1, 1)
    fz.BackgroundTransparency = 1
    fz.Font = Enum.Font.GothamBold
    fz.TextSize = 12
    fz.TextStrokeTransparency = .15
    fz.Parent = fy
  end
  local ga = fu:FindFirstChild(g({23, 51, 54, 54, 35, 23, 51, 52, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((1 + 1) == 2) and not ga) then
    ga = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
    ga.Name = g({23, 51, 54, 54, 35, 23, 51, 52, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90)
    ga.Adornee = fu
    ga.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    ga.FillTransparency = .72
    ga.Parent = fu
  end
  fy.Label.Text = fv
  fy.Label.TextColor3 = fw
  ga.FillColor = fw
  ga.OutlineColor = fw
  fn[fu] = true
end
task.spawn(function()
  while (((15 * 15) == 225) and aa.running) do
    local gb = 0
    local gc = ac()
    local gd = am()
    if (((100 % 7) == 2) and gd) then
      for ge, gf in ipairs(gd:GetChildren()) do
        local gg, gh, gi, gj = aq(gf)
        local gk = (((gc and gg) and ((gg.Position - gc.Position)).Magnitude) or math.huge)
        if (((12 * 12) == 144) and (aa.crystalEsp and (gk <= aa.espRange))) then
          ft(gf, (g({127, 41, 122, 38, 122, 14, 127, 62, 122, 38, 122, 126, 127, 41, 122, 38, 122, 127, 62, 55}, 90)):format(gj, gh, tostring(gi), math.floor(gk)), (fo[gj] or Color3.fromHSV(math.clamp((gh / 15), 0, 1), .75, 1)))
          gb += 1
        else
          fp(gf)
        end
      end
    end
    local gl = workspace:FindFirstChild(g({14, 50, 51, 52, 61, 41}, 90))
    local gm = (gl and gl:FindFirstChild(g({10, 54, 53, 46, 41}, 90)))
    local gn = (gm and gm:FindFirstChild(g({9, 54, 53, 46, 41}, 90)))
    local go = (gn and gn:FindFirstChild(m.Name))
    local gp = (go and go:FindFirstChild(g({10, 54, 59, 57, 63, 62, 25, 40, 35, 41, 46, 59, 54, 41}, 90)))
    if (((3 ^ 2) == 9) and gp) then
      for gq, gr in ipairs(gp:GetChildren()) do
        local gs, gt, gu, gv = aq(gr)
        local gw = (((gc and gs) and ((gs.Position - gc.Position)).Magnitude) or math.huge)
        if (((7 * 7) == 49) and (aa.plotEsp and (gw <= aa.espRange))) then
          ft(gr, (g({10, 22, 21, 14, 122, 127, 41, 122, 38, 122, 14, 127, 62, 122, 38, 122, 126, 127, 41}, 90)):format(gv, gt, tostring(gu)), Color3.fromRGB(100, 220, 255))
          gb += 1
        else
          fp(gr)
        end
      end
    end
    if (((1 + 1) == 2) and aa.eventEsp) then
      for gx, gy in ipairs(workspace:GetDescendants()) do
        if (((15 * 15) == 225) and (((gy:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) or gy:IsA(g({23, 53, 62, 63, 54}, 90)))) and ((((gy:GetAttribute(g({14, 51, 63, 40, 20, 59, 55, 63}, 90)) or gy.Name:find(g({23, 63, 46, 63, 53, 40}, 90))) or gy.Name:find(g({9, 46, 59, 40, 60, 59, 54, 54}, 90))) or gy.Name:find(g({27, 47, 40, 53, 40, 59}, 90)))))) then
          local gz = ao(gy)
          local ha = (((gc and gz) and ((gz.Position - gc.Position)).Magnitude) or math.huge)
          if (((100 % 7) == 2) and (ha <= aa.espRange)) then
            ft(gy, (g({31, 12, 31, 20, 14, 122, 127, 41, 122, 38, 122, 127, 62, 55}, 90)):format(gy.Name, math.floor(ha)), Color3.fromRGB(255, 100, 220))
            gb += 1
          end
        end
      end
    end
    local hb, hc, hd = cf()
    local he = (workspace:GetAttribute(g({13, 63, 59, 46, 50, 63, 40, 31, 44, 63, 52, 46}, 90)) or g({52, 53, 52, 63}, 90))
    cs:set((g({9, 46, 59, 46, 47, 41, 96, 122, 127, 41, 122, 38, 122, 56, 59, 61, 122, 127, 116, 107, 60, 117, 127, 41, 122, 38, 122, 44, 59, 54, 47, 63, 122, 127, 41, 122, 38, 122, 55, 51, 52, 63, 62, 122, 127, 62, 122, 38, 122, 45, 63, 59, 46, 50, 63, 40, 122, 127, 41}, 90)):format(aa.status, hb, (((hc == math.huge) and g({101}, 90)) or tostring(hc)), tostring(hd), aa.mined, tostring(he)))
    ec:set((g({31, 9, 10, 96, 122}, 90) .. gb))
    task.wait(.7)
  end
  for hf in pairs(fn) do
    if (((12 * 12) == 144) and hf.Parent) then
      fp(hf)
    end
  end
end)
local hg, hh
task.spawn(function()
  while (((3 ^ 2) == 9) and aa.running) do
    local hi = ae()
    local hj = ac()
    if (((7 * 7) == 49) and hi) then
      if (((1 + 1) == 2) and aa.walk) then
        hi.WalkSpeed = aa.walkSpeed
      end
      if (((15 * 15) == 225) and aa.jump) then
        hi.UseJumpPower = true
        hi.JumpPower = aa.jumpPower
      end
    end
    if (((100 % 7) == 2) and aa.noclip) then
      local hk = ab()
      if (((12 * 12) == 144) and hk) then
        for hl, hm in ipairs(hk:GetDescendants()) do
          if (((3 ^ 2) == 9) and hm:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
            hm.CanCollide = false
          end
        end
      end
    end
    if (((7 * 7) == 49) and (aa.fly and hj)) then
      if (((1 + 1) == 2) and (not hg or not hg.Parent)) then
        hg = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
        hg.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
        hg.Parent = hj
        hh = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
        hh.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
        hh.P = 90000
        hh.Parent = hj
      end
      local hn = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
      local ho = workspace.CurrentCamera
      local hp = Vector3.new()
      if (((15 * 15) == 225) and hn:IsKeyDown(Enum.KeyCode.W)) then
        hp += ho.CFrame.LookVector
      end
      if (((100 % 7) == 2) and hn:IsKeyDown(Enum.KeyCode.S)) then
        hp -= ho.CFrame.LookVector
      end
      if (((12 * 12) == 144) and hn:IsKeyDown(Enum.KeyCode.A)) then
        hp -= ho.CFrame.RightVector
      end
      if (((3 ^ 2) == 9) and hn:IsKeyDown(Enum.KeyCode.D)) then
        hp += ho.CFrame.RightVector
      end
      if (((7 * 7) == 49) and hn:IsKeyDown(Enum.KeyCode.Space)) then
        hp += Vector3.yAxis
      end
      if (((1 + 1) == 2) and hn:IsKeyDown(Enum.KeyCode.LeftControl)) then
        hp -= Vector3.yAxis
      end
      hg.Velocity = (((hp.Magnitude > 0) and (hp.Unit * aa.flySpeed)) or Vector3.new())
      hh.CFrame = ho.CFrame
    elseif (((15 * 15) == 225) and hg) then
      hg:Destroy()
      hh:Destroy()
      hg = nil
      hh = nil
    end
    task.wait()
  end
  if (((100 % 7) == 2) and hg) then
    hg:Destroy()
    hh:Destroy()
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and aa.running) do
    if (((3 ^ 2) == 9) and aa.fullbright) then
      k.Brightness = 3
      k.GlobalShadows = false
      k.Ambient = Color3.new(1, 1, 1)
    end
    if (((7 * 7) == 49) and aa.noFog) then
      k.FogEnd = 1000000
    end
    if (((1 + 1) == 2) and aa.noParticles) then
      for hq, hr in ipairs(workspace:GetDescendants()) do
        if (((15 * 15) == 225) and ((hr:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or hr:IsA(g({14, 40, 59, 51, 54}, 90))) or hr:IsA(g({24, 63, 59, 55}, 90)))) then
          hr.Enabled = false
        end
      end
    end
    task.wait(2)
  end
end)