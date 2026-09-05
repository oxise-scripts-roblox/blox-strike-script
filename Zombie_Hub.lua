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
local k = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local l = h.LocalPlayer
local m = getgenv().MillyMenu
if (((15 * 15) == 225) and not m) then
  return
end
local n = getgenv().MillyZombie
if (((100 % 7) == 2) and (type(n) == g({46, 59, 56, 54, 63}, 90))) then
  n.running = false
end
local o
pcall(function()
  o = require(i:WaitForChild(g({18, 63, 54, 42, 63, 40, 23, 53, 62, 47, 54, 63}, 90), 5))
end)
local p = i:FindFirstChild(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46, 41}, 90))
local q = (p and p:FindFirstChild(g({25, 47, 40, 40, 63, 52, 57, 35, 10, 51, 57, 49, 47, 42}, 90)))
local r = (p and p:FindFirstChild(g({13, 63, 59, 42, 53, 52, 24, 53, 34, 24, 47, 35}, 90)))
local s = (p and p:FindFirstChild(g({13, 63, 59, 42, 53, 52, 24, 53, 34, 30, 51, 41, 57, 59, 40, 62}, 90)))
local t = (p and p:FindFirstChild(g({13, 59, 44, 63, 25, 53, 52, 46, 40, 53, 54}, 90)))
local u = {running = true, loot = false, lootDelay = .12, lootRadius = 12, lootBatch = 30, lootTp = false, lootTpDelay = .3, box = false, boxDelay = 1, wavePrompt = false, waveDelay = 2, autoBuy = false, buyDelay = .3, minTier = 1, maxCost = 1000000000000, walk = false, walkSpeed = 16, jump = false, jumpPower = 50, noclip = false, fly = false, flySpeed = 55, enemyEsp = false, lootEsp = false, weaponEsp = false, espRange = 2500, enemySize = false, enemyScale = 8, antiAfk = false, fullbright = false, noFog = false, noParticles = false, status = g({40, 63, 59, 62, 35}, 90), picked = 0, bought = 0}
getgenv().MillyZombie = u
local function v()
  return l.Character
end
local function w()
  local x = v()
  return (x and x:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function y()
  local z = v()
  return (z and z:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function aa()
  if (((12 * 12) == 144) and (o and (type(o.findPlayersPlot) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    local ab, ac = pcall(o.findPlayersPlot, l)
    if (((3 ^ 2) == 9) and (ab and ac)) then
      return ac
    end
  end
  local ad = workspace:FindFirstChild(g({10, 54, 53, 46, 41}, 90))
  if (((7 * 7) == 49) and ad) then
    for ae, af in ipairs(ad:GetChildren()) do
      if (((1 + 1) == 2) and (((af:GetAttribute(g({21, 45, 52, 63, 40, 15, 41, 63, 40, 19, 62}, 90)) == l.UserId) or (af:GetAttribute(g({15, 41, 63, 40, 19, 62}, 90)) == l.UserId)) or (af:GetAttribute(g({21, 45, 52, 63, 40}, 90)) == l.Name))) then
        return af
      end
    end
  end
end
local function ag()
  return workspace:FindFirstChild(g({22, 53, 53, 46, 9, 42, 59, 45, 52, 63, 62, 25, 54, 51, 63, 52, 46}, 90))
end
local function ah(ai)
  return (((ai:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and ai) or ai.PrimaryPart) or ai:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
end
local function aj(ak)
  local al = y()
  local am = ag()
  local an = {}
  if (((15 * 15) == 225) and (not al or not am)) then
    return an
  end
  for ao, ap in ipairs(am:GetChildren()) do
    local aq = ah(ap)
    if (((100 % 7) == 2) and aq) then
      local ar = ((aq.Position - al.Position)).Magnitude
      if (((12 * 12) == 144) and (ar <= u.lootRadius)) then
        an[(#an + 1)] = {id = ap.Name, obj = ap, part = aq, d = ar}
      end
    end
  end
  table.sort(an, function(as, at)
    return (as.d < at.d)
  end)
  while (((3 ^ 2) == 9) and (#an > ((ak or u.lootBatch)))) do
    table.remove(an)
  end
  return an
end
local function au()
  if (((7 * 7) == 49) and (not q or not q:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    u.status = g({25, 47, 40, 40, 63, 52, 57, 35, 10, 51, 57, 49, 47, 42, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return
  end
  local av = aj()
  if (((1 + 1) == 2) and (#av == 0)) then
    return
  end
  local aw = {}
  for ax, ay in ipairs(av) do
    aw[(#aw + 1)] = ay.id
  end
  local az = pcall(q.FireServer, q, aw)
  if (((15 * 15) == 225) and az) then
    u.picked += #aw
    u.status = (g({54, 53, 53, 46, 122, 41, 63, 52, 46, 96, 122}, 90) .. #aw)
  end
end
local function ba()
  local bb = y()
  local bc = ag()
  local bd, be
  if (((100 % 7) == 2) and (not bb or not bc)) then
    return
  end
  for bf, bg in ipairs(bc:GetChildren()) do
    local bh = ah(bg)
    if (((12 * 12) == 144) and bh) then
      local bi = ((bh.Position - bb.Position)).Magnitude
      if (((3 ^ 2) == 9) and (not be or (bi < be))) then
        bd, be = bh, bi
      end
    end
  end
  return bd, be
end
local function bj(bk)
  local bl = y()
  if (((7 * 7) == 49) and bl) then
    bl.CFrame = (bk + Vector3.new(0, 3, 0))
    bl.AssemblyLinearVelocity = Vector3.new()
  end
end
local function bm(bn)
  local bo = aa()
  if (((1 + 1) == 2) and (not bo or not fireproximityprompt)) then
    return false
  end
  for bp, bq in ipairs(bo:GetDescendants()) do
    if (((15 * 15) == 225) and (bq:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and bq.Enabled)) then
      local br = ((bq.Name .. (g({122}, 90) .. (bq.ActionText .. (g({122}, 90) .. bq.ObjectText))))):lower()
      for bs, bt in ipairs(bn) do
        if (((100 % 7) == 2) and br:find(bt, 1, true)) then
          pcall(fireproximityprompt, bq)
          return true
        end
      end
    end
  end
  return false
end
local function bu()
  local bv = aa()
  local bw = (bv and bv:FindFirstChild(g({13, 63, 59, 42, 53, 52, 24, 53, 34}, 90)))
  local bx = (bw and bw:FindFirstChild(g({8, 53, 54, 54, 63, 62, 13, 63, 59, 42, 53, 52}, 90)))
  if (((12 * 12) == 144) and (((bx and bx:GetAttribute(g({47, 52, 51, 46, 20, 59, 55, 63}, 90))) and bx:GetAttribute(g({47, 52, 51, 46, 14, 51, 63, 40}, 90))) and bx:GetAttribute(g({25, 53, 41, 46}, 90)))) then
    return bx
  end
end
local by = setmetatable({}, {__mode = g({49}, 90)})
local function bz(ca)
  local cb = bu()
  if (((3 ^ 2) == 9) and (not cb or by[cb])) then
    return false
  end
  local cc = (tonumber(cb:GetAttribute(g({25, 53, 41, 46}, 90))) or math.huge)
  local cd = (tonumber(cb:GetAttribute(g({47, 52, 51, 46, 14, 51, 63, 40}, 90))) or 1)
  local ce = (tonumber(l:GetAttribute(g({57, 47, 40, 40, 63, 52, 57, 35}, 90))) or 0)
  if (((7 * 7) == 49) and (not ca and ((((cc > u.maxCost) or (cd < u.minTier)) or (ce < cc))))) then
    return false
  end
  if (((1 + 1) == 2) and (r and r:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    by[cb] = true
    local cf = pcall(r.FireServer, r)
    if (((15 * 15) == 225) and cf) then
      u.bought += 1
      u.status = (g({45, 63, 59, 42, 53, 52, 122, 59, 57, 57, 63, 42, 46, 63, 62, 96, 122}, 90) .. tostring(cb:GetAttribute(g({47, 52, 51, 46, 20, 59, 55, 63}, 90))))
      return true
    end
    by[cb] = nil
  end
  return false
end
local cg = m:tab(g({28, 27, 8, 23}, 90))
cg:section(g({44, 63, 40, 51, 60, 51, 63, 62, 122, 54, 53, 53, 46}, 90))
local ch = cg:label(g({9, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
cg:toggle(g({59, 47, 46, 53, 122, 54, 53, 53, 46, 122, 52, 63, 59, 40, 56, 35}, 90), false, function(ci)
  u.loot = ci
end)
cg:slider(g({54, 53, 53, 46, 122, 40, 59, 62, 51, 47, 41}, 90), 4, 40, u.lootRadius, function(cj)
  u.lootRadius = cj
end)
cg:slider(g({54, 53, 53, 46, 122, 56, 59, 46, 57, 50}, 90), 1, 50, u.lootBatch, function(ck)
  u.lootBatch = ck
end)
cg:slider(g({54, 53, 53, 46, 122, 62, 63, 54, 59, 35}, 90), .05, 2, u.lootDelay, function(cl)
  u.lootDelay = math.max(.05, cl)
end)
cg:button(g({57, 53, 54, 54, 63, 57, 46, 122, 52, 63, 59, 40, 56, 35, 122, 53, 52, 57, 63}, 90), au)
cg:toggle(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 50, 40, 53, 47, 61, 50, 122, 54, 53, 53, 46}, 90), false, function(cm)
  u.lootTp = cm
end)
cg:slider(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 62, 63, 54, 59, 35}, 90), .1, 3, u.lootTpDelay, function(cn)
  u.lootTpDelay = cn
end)
cg:section(g({51, 52, 46, 63, 40, 59, 57, 46, 51, 53, 52, 41}, 90))
cg:toggle(g({59, 47, 46, 53, 122, 53, 42, 63, 52, 122, 45, 63, 59, 42, 53, 52, 122, 56, 53, 34, 122, 42, 40, 53, 55, 42, 46}, 90), false, function(co)
  u.box = co
end)
cg:toggle(g({59, 47, 46, 53, 122, 41, 46, 59, 40, 46, 122, 45, 59, 44, 63, 122, 42, 40, 53, 55, 42, 46}, 90), false, function(cp)
  u.wavePrompt = cp
end)
cg:slider(g({51, 52, 46, 63, 40, 59, 57, 46, 51, 53, 52, 122, 62, 63, 54, 59, 35}, 90), .5, 10, u.waveDelay, function(cq)
  u.waveDelay = cq
  u.boxDelay = cq
end)
cg:button(g({53, 42, 63, 52, 122, 45, 63, 59, 42, 53, 52, 122, 56, 53, 34}, 90), function()
  bm({g({45, 63, 59, 42, 53, 52, 56, 53, 34}, 90), g({45, 63, 59, 42, 53, 52, 122, 56, 53, 34}, 90), g({53, 42, 63, 52}, 90)})
end)
cg:button(g({41, 46, 59, 40, 46, 122, 45, 59, 44, 63}, 90), function()
  bm({g({41, 46, 59, 40, 46}, 90), g({45, 59, 44, 63}, 90)})
end)
local cr = m:tab(g({13, 31, 27, 10, 21, 20, 9}, 90))
cr:section(g({59, 47, 46, 53, 55, 59, 46, 51, 57, 122, 42, 54, 59, 57, 63, 55, 63, 52, 46}, 90))
local cs = cr:label(g({8, 53, 54, 54, 63, 62, 122, 45, 63, 59, 42, 53, 52, 96, 122, 52, 53, 52, 63}, 90))
cr:toggle(g({59, 47, 46, 53, 122, 56, 47, 35, 122, 59, 52, 62, 122, 42, 54, 59, 57, 63}, 90), false, function(ct)
  u.autoBuy = ct
end)
cr:slider(g({55, 51, 52, 51, 55, 47, 55, 122, 46, 51, 63, 40}, 90), 1, 10, u.minTier, function(cu)
  u.minTier = cu
end)
cr:slider(g({55, 59, 34, 51, 55, 47, 55, 122, 57, 53, 41, 46}, 90), 0, 1000000000000, u.maxCost, function(cv)
  u.maxCost = cv
end)
cr:slider(g({56, 47, 35, 122, 57, 50, 63, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .1, 5, u.buyDelay, function(cw)
  u.buyDelay = cw
end)
cr:button(g({56, 47, 35, 122, 59, 52, 62, 122, 42, 54, 59, 57, 63, 122, 52, 53, 45}, 90), function()
  bz(true)
end)
cr:button(g({62, 51, 41, 57, 59, 40, 62, 122, 57, 47, 40, 40, 63, 52, 46, 122, 40, 53, 54, 54}, 90), function()
  local cx = bu()
  if (((100 % 7) == 2) and (((cx and s) and s:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90))) and not by[cx])) then
    by[cx] = true
    pcall(s.FireServer, s)
  end
end)
cr:label(g({9, 63, 40, 44, 63, 40, 122, 41, 63, 54, 63, 57, 46, 41, 122, 46, 50, 63, 122, 60, 40, 63, 63, 122, 42, 54, 53, 46, 122, 41, 54, 53, 46}, 90))
local cy = m:tab(g({13, 21, 8, 22, 30}, 90))
cy:section(g({35, 53, 47, 40, 122, 42, 54, 53, 46}, 90))
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 42, 54, 53, 46}, 90), function()
  local cz = aa()
  local da = (cz and ((cz.PrimaryPart or cz:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))))
  if (((12 * 12) == 144) and da) then
    bj(da.CFrame)
  end
end)
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 57, 53, 54, 54, 63, 57, 46, 122, 32, 53, 52, 63}, 90), function()
  local db = aa()
  local dc = (db and db:FindFirstChild(g({25, 53, 54, 54, 63, 57, 46, 0, 53, 52, 63}, 90), true))
  if (((3 ^ 2) == 9) and (dc and dc:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    bj(dc.CFrame)
  end
end)
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 45, 63, 59, 42, 53, 52, 122, 56, 53, 34}, 90), function()
  local dd = aa()
  local de = (dd and dd:FindFirstChild(g({13, 63, 59, 42, 53, 52, 24, 53, 34}, 90), true))
  local df = (de and de:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  if (((7 * 7) == 49) and df) then
    bj(df.CFrame)
  end
end)
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 52, 63, 59, 40, 63, 41, 46, 122, 54, 53, 53, 46}, 90), function()
  local dg = ba()
  if (((1 + 1) == 2) and dg) then
    bj(dg.CFrame)
  end
end)
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 63, 52, 63, 55, 35, 122, 41, 46, 59, 40, 46}, 90), function()
  local dh = aa()
  local di = (dh and ((dh:FindFirstChild(g({31, 52, 63, 55, 35, 9, 46, 59, 40, 46}, 90), true) or dh:FindFirstChild(g({9, 46, 59, 40, 46}, 90), true))))
  if (((15 * 15) == 225) and (di and di:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    bj(di.CFrame)
  end
end)
cy:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 63, 52, 63, 55, 35, 122, 63, 52, 62}, 90), function()
  local dj = aa()
  local dk = (dj and dj:FindFirstChild(g({31, 52, 63, 55, 35, 31, 52, 62}, 90), true))
  if (((100 % 7) == 2) and (dk and dk:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    bj(dk.CFrame)
  end
end)
local dl = m:tab(g({31, 9, 10}, 90))
dl:section(g({53, 56, 48, 63, 57, 46, 41}, 90))
local dm = dl:label(g({31, 9, 10, 96, 122, 106}, 90))
dl:toggle(g({63, 52, 63, 55, 35, 122, 63, 41, 42}, 90), false, function(dn)
  u.enemyEsp = dn
end)
dl:toggle(g({54, 53, 53, 46, 122, 63, 41, 42}, 90), false, function(dp)
  u.lootEsp = dp
end)
dl:toggle(g({45, 63, 59, 42, 53, 52, 122, 63, 41, 42}, 90), false, function(dq)
  u.weaponEsp = dq
end)
dl:slider(g({40, 63, 52, 62, 63, 40, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 10000, u.espRange, function(dr)
  u.espRange = dr
end)
dl:toggle(g({54, 59, 40, 61, 63, 122, 63, 52, 63, 55, 35, 122, 50, 51, 46, 56, 53, 34, 63, 41, 122, 54, 53, 57, 59, 54}, 90), false, function(ds)
  u.enemySize = ds
end)
dl:slider(g({63, 52, 63, 55, 35, 122, 50, 51, 46, 56, 53, 34, 122, 41, 51, 32, 63}, 90), 2, 25, u.enemyScale, function(dt)
  u.enemyScale = dt
end)
local du = m:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
du:section(g({57, 50, 59, 40, 59, 57, 46, 63, 40}, 90))
du:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(dv)
  u.walk = dv
end)
du:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62, 122, 44, 59, 54, 47, 63}, 90), 0, 200, u.walkSpeed, function(dw)
  u.walkSpeed = dw
end)
du:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(dx)
  u.jump = dx
end)
du:slider(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40, 122, 44, 59, 54, 47, 63}, 90), 0, 300, u.jumpPower, function(dy)
  u.jumpPower = dy
end)
du:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(dz)
  u.noclip = dz
end)
du:toggle(g({60, 54, 35}, 90), false, function(ea)
  u.fly = ea
end)
du:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 300, u.flySpeed, function(eb)
  u.flySpeed = eb
end)
du:button(g({41, 46, 53, 42, 122, 44, 63, 54, 53, 57, 51, 46, 35}, 90), function()
  local ec = y()
  if (((12 * 12) == 144) and ec) then
    ec.AssemblyLinearVelocity = Vector3.new()
    ec.AssemblyAngularVelocity = Vector3.new()
  end
end)
local ed = m:tab(g({12, 19, 9, 15, 27, 22}, 90))
ed:section(g({42, 63, 40, 60, 53, 40, 55, 59, 52, 57, 63}, 90))
ed:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(ee)
  u.fullbright = ee
end)
ed:toggle(g({40, 63, 55, 53, 44, 63, 122, 60, 53, 61}, 90), false, function(ef)
  u.noFog = ef
end)
ed:toggle(g({62, 51, 41, 59, 56, 54, 63, 122, 42, 59, 40, 46, 51, 57, 54, 63, 41}, 90), false, function(eg)
  u.noParticles = eg
end)
ed:button(g({57, 54, 63, 59, 40, 122, 54, 53, 57, 59, 54, 122, 63, 60, 60, 63, 57, 46, 41}, 90), function()
  for eh, ei in ipairs(workspace:GetDescendants()) do
    if (((3 ^ 2) == 9) and (ei:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or ei:IsA(g({14, 40, 59, 51, 54}, 90)))) then
      ei.Enabled = false
    end
  end
end)
local ej = m:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
ej:section(g({41, 63, 41, 41, 51, 53, 52}, 90))
ej:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(ek)
  u.antiAfk = ek
end)
ej:label(g({27, 54, 54, 122, 60, 63, 59, 46, 47, 40, 63, 41, 122, 41, 46, 59, 40, 46, 122, 62, 51, 41, 59, 56, 54, 63, 62}, 90))
ej:label(g({21, 52, 54, 35, 122, 25, 47, 40, 40, 63, 52, 57, 35, 10, 51, 57, 49, 47, 42, 122, 51, 41, 122, 57, 59, 54, 54, 63, 62}, 90))
ej:label(g({8, 51, 61, 50, 46, 9, 50, 51, 60, 46, 122, 119, 122, 50, 51, 62, 63, 117, 41, 50, 53, 45}, 90))
ej:button(g({41, 46, 53, 42, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52}, 90), function()
  u.loot = false
  u.lootTp = false
  u.box = false
  u.wavePrompt = false
  u.autoBuy = false
end)
ej:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  u.running = false
  m:destroy()
end)
cg:show()
l.Idled:Connect(function()
  if (((7 * 7) == 49) and u.antiAfk) then
    k:CaptureController()
    k:ClickButton2(Vector2.new())
  end
end)
local el = setmetatable({}, {__mode = g({49}, 90)})
local function em(en)
  local eo = en:FindFirstChild(g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 31, 41, 42}, 90))
  if (((1 + 1) == 2) and eo) then
    eo:Destroy()
  end
  local ep = en:FindFirstChild(g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((15 * 15) == 225) and ep) then
    ep:Destroy()
  end
  el[en] = nil
end
local function eq(er, es, et)
  local eu = ah(er)
  if (((100 % 7) == 2) and not eu) then
    return
  end
  local ev = er:FindFirstChild(g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 31, 41, 42}, 90))
  if (((12 * 12) == 144) and not ev) then
    ev = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    ev.Name = g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 31, 41, 42}, 90)
    ev.Size = UDim2.fromOffset(170, 38)
    ev.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
    ev.AlwaysOnTop = true
    ev.Adornee = eu
    ev.Parent = er
    local ew = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    ew.Name = g({22, 59, 56, 63, 54}, 90)
    ew.Size = UDim2.fromScale(1, 1)
    ew.BackgroundTransparency = 1
    ew.Font = Enum.Font.GothamBold
    ew.TextSize = 12
    ew.TextStrokeTransparency = .2
    ew.Parent = ev
  end
  local ex = er:FindFirstChild(g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((3 ^ 2) == 9) and not ex) then
    ex = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
    ex.Name = g({23, 51, 54, 54, 35, 0, 53, 55, 56, 51, 63, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90)
    ex.Adornee = er
    ex.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    ex.FillTransparency = .72
    ex.Parent = er
  end
  ev.Label.Text = es
  ev.Label.TextColor3 = et
  ex.FillColor = et
  ex.OutlineColor = et
  el[er] = true
end
local ey = {}
local function ez(fa, fb, fc)
  local fd = os.clock()
  if (((7 * 7) == 49) and not fb) then
    ey[fa] = fd
    return false
  end
  if (((1 + 1) == 2) and ((fd - ((ey[fa] or 0))) >= fc)) then
    ey[fa] = fd
    return true
  end
  return false
end
task.spawn(function()
  while (((15 * 15) == 225) and u.running) do
    if (((100 % 7) == 2) and ez(g({54, 53, 53, 46}, 90), u.loot, u.lootDelay)) then
      au()
    end
    if (((12 * 12) == 144) and ez(g({46, 42}, 90), u.lootTp, u.lootTpDelay)) then
      local fe = ba()
      if (((3 ^ 2) == 9) and fe) then
        bj(fe.CFrame)
        task.wait(.05)
        au()
      end
    end
    if (((7 * 7) == 49) and ez(g({56, 53, 34}, 90), u.box, u.boxDelay)) then
      bm({g({45, 63, 59, 42, 53, 52, 56, 53, 34}, 90), g({45, 63, 59, 42, 53, 52, 122, 56, 53, 34}, 90), g({53, 42, 63, 52}, 90)})
    end
    if (((1 + 1) == 2) and ez(g({45, 59, 44, 63}, 90), u.wavePrompt, u.waveDelay)) then
      if (((15 * 15) == 225) and (t and t:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
        pcall(t.FireServer, t, g({9, 46, 59, 40, 46}, 90))
      else
        bm({g({41, 46, 59, 40, 46}, 90), g({45, 59, 44, 63}, 90)})
      end
    end
    if (((100 % 7) == 2) and ez(g({56, 47, 35}, 90), u.autoBuy, u.buyDelay)) then
      bz(false)
    end
    task.wait(.03)
  end
end)
local ff, fg
task.spawn(function()
  while (((12 * 12) == 144) and u.running) do
    local fh = w()
    local fi = y()
    if (((3 ^ 2) == 9) and fh) then
      if (((7 * 7) == 49) and u.walk) then
        fh.WalkSpeed = u.walkSpeed
      end
      if (((1 + 1) == 2) and u.jump) then
        fh.UseJumpPower = true
        fh.JumpPower = u.jumpPower
      end
    end
    if (((15 * 15) == 225) and u.noclip) then
      local fj = v()
      if (((100 % 7) == 2) and fj) then
        for fk, fl in ipairs(fj:GetDescendants()) do
          if (((12 * 12) == 144) and fl:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
            fl.CanCollide = false
          end
        end
      end
    end
    if (((3 ^ 2) == 9) and (u.fly and fi)) then
      if (((7 * 7) == 49) and (not ff or not ff.Parent)) then
        ff = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
        ff.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
        ff.Parent = fi
        fg = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
        fg.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
        fg.P = 90000
        fg.Parent = fi
      end
      local fm = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
      local fn = workspace.CurrentCamera
      local fo = Vector3.new()
      if (((1 + 1) == 2) and fm:IsKeyDown(Enum.KeyCode.W)) then
        fo += fn.CFrame.LookVector
      end
      if (((15 * 15) == 225) and fm:IsKeyDown(Enum.KeyCode.S)) then
        fo -= fn.CFrame.LookVector
      end
      if (((100 % 7) == 2) and fm:IsKeyDown(Enum.KeyCode.A)) then
        fo -= fn.CFrame.RightVector
      end
      if (((12 * 12) == 144) and fm:IsKeyDown(Enum.KeyCode.D)) then
        fo += fn.CFrame.RightVector
      end
      if (((3 ^ 2) == 9) and fm:IsKeyDown(Enum.KeyCode.Space)) then
        fo += Vector3.yAxis
      end
      if (((7 * 7) == 49) and fm:IsKeyDown(Enum.KeyCode.LeftControl)) then
        fo -= Vector3.yAxis
      end
      ff.Velocity = (((fo.Magnitude > 0) and (fo.Unit * u.flySpeed)) or Vector3.new())
      fg.CFrame = fn.CFrame
    elseif (((1 + 1) == 2) and ff) then
      ff:Destroy()
      fg:Destroy()
      ff = nil
      fg = nil
    end
    task.wait()
  end
  if (((15 * 15) == 225) and ff) then
    ff:Destroy()
    fg:Destroy()
  end
end)
task.spawn(function()
  while (((100 % 7) == 2) and u.running) do
    local fp = 0
    local fq = y()
    local fr = aa()
    local fs = (fr and fr:FindFirstChild(g({9, 42, 59, 45, 52, 63, 62, 31, 52, 63, 55, 51, 63, 41}, 90)))
    if (((12 * 12) == 144) and fs) then
      for ft, fu in ipairs(fs:GetChildren()) do
        local fv = ah(fu)
        local fw = (((fq and fv) and ((fv.Position - fq.Position)).Magnitude) or math.huge)
        if (((3 ^ 2) == 9) and (u.enemyEsp and (fw <= u.espRange))) then
          eq(fu, (g({0, 21, 23, 24, 19, 31, 122, 38, 122, 127, 62, 55, 127, 41}, 90)):format(math.floor(fw), ((fu:GetAttribute(g({30, 63, 59, 62}, 90)) and g({122, 38, 122, 30, 31, 27, 30}, 90)) or "")), Color3.fromRGB(255, 75, 85))
          fp += 1
        else
          em(fu)
        end
        if (((7 * 7) == 49) and fv) then
          if (((1 + 1) == 2) and u.enemySize) then
            if (((15 * 15) == 225) and not fv:GetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 9, 51, 32, 63}, 90))) then
              fv:SetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 9, 51, 32, 63}, 90), fv.Size)
              fv:SetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90), fv.Transparency)
            end
            fv.Size = Vector3.new(u.enemyScale, u.enemyScale, u.enemyScale)
            fv.Transparency = .65
            fv.CanCollide = false
          elseif (((100 % 7) == 2) and fv:GetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 9, 51, 32, 63}, 90))) then
            fv.Size = fv:GetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 9, 51, 32, 63}, 90))
            fv.Transparency = (fv:GetAttribute(g({23, 51, 54, 54, 35, 21, 40, 51, 61, 51, 52, 59, 54, 14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90)) or 0)
          end
        end
      end
    end
    local fx = ag()
    if (((12 * 12) == 144) and fx) then
      for fy, fz in ipairs(fx:GetChildren()) do
        local ga = ah(fz)
        local gb = (((fq and ga) and ((ga.Position - fq.Position)).Magnitude) or math.huge)
        if (((3 ^ 2) == 9) and (u.lootEsp and (gb <= u.espRange))) then
          eq(fz, (g({22, 21, 21, 14, 122, 38, 122, 127, 62, 55, 122, 38, 122, 34, 127, 41}, 90)):format(math.floor(gb), tostring((fz:GetAttribute(g({9, 46, 59, 57, 49, 9, 51, 32, 63}, 90)) or 1))), Color3.fromRGB(255, 210, 70))
          fp += 1
        else
          em(fz)
        end
      end
    end
    if (((7 * 7) == 49) and fr) then
      for gc, gd in ipairs(fr:GetDescendants()) do
        if (((1 + 1) == 2) and (gd:IsA(g({23, 53, 62, 63, 54}, 90)) and (((gd:GetAttribute(g({30, 59, 55, 59, 61, 63}, 90)) ~= nil) or (gd:GetAttribute(g({47, 52, 51, 46, 20, 59, 55, 63}, 90)) ~= nil))))) then
          local ge = ah(gd)
          local gf = (((fq and ge) and ((ge.Position - fq.Position)).Magnitude) or math.huge)
          if (((15 * 15) == 225) and (u.weaponEsp and (gf <= u.espRange))) then
            eq(gd, (g({13, 31, 27, 10, 21, 20, 122, 127, 41, 122, 38, 122, 127, 62, 55}, 90)):format(gd.Name, math.floor(gf)), Color3.fromRGB(205, 120, 255))
            fp += 1
          else
            em(gd)
          end
        end
      end
    end
    local gg = (fr and fr:GetAttribute(g({25, 47, 40, 40, 63, 52, 46, 13, 59, 44, 63}, 90)))
    local gh = (((l:GetAttribute(g({57, 47, 40, 40, 63, 52, 57, 35}, 90)) or l:GetAttribute(g({25, 47, 40, 40, 63, 52, 57, 35}, 90))) or l:GetAttribute(g({23, 53, 52, 63, 35}, 90))) or l:GetAttribute(g({25, 59, 41, 50}, 90)))
    ch:set((g({9, 46, 59, 46, 47, 41, 96, 122, 127, 41, 122, 38, 122, 45, 59, 44, 63, 96, 122, 127, 41, 122, 38, 122, 54, 53, 53, 46, 122, 41, 63, 52, 46, 96, 122, 127, 62, 127, 41}, 90)):format(u.status, tostring((gg or g({52, 53, 52, 63}, 90))), u.picked, ((gh and ((g({122, 38, 122, 57, 59, 41, 50, 96, 122}, 90) .. tostring(gh)))) or "")))
    dm:set((g({31, 9, 10, 96, 122}, 90) .. fp))
    local gi = bu()
    cs:set(((gi and (g({8, 53, 54, 54, 63, 62, 96, 122, 127, 41, 122, 38, 122, 46, 51, 63, 40, 122, 127, 41, 122, 38, 122, 57, 53, 41, 46, 122, 127, 41}, 90)):format(tostring(gi:GetAttribute(g({47, 52, 51, 46, 20, 59, 55, 63}, 90))), tostring(gi:GetAttribute(g({47, 52, 51, 46, 14, 51, 63, 40}, 90))), tostring(gi:GetAttribute(g({25, 53, 41, 46}, 90))))) or ((g({8, 53, 54, 54, 63, 62, 122, 45, 63, 59, 42, 53, 52, 96, 122, 52, 53, 52, 63, 122, 38, 122, 42, 54, 59, 57, 63, 62, 96, 122}, 90) .. u.bought))))
    task.wait(.5)
  end
  for gj in pairs(el) do
    if (((100 % 7) == 2) and gj.Parent) then
      em(gj)
    end
  end
end)
task.spawn(function()
  local gk = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
  while (((12 * 12) == 144) and u.running) do
    if (((3 ^ 2) == 9) and u.fullbright) then
      gk.Brightness = 3
      gk.GlobalShadows = false
      gk.Ambient = Color3.new(1, 1, 1)
    end
    if (((7 * 7) == 49) and u.noFog) then
      gk.FogEnd = 1000000
    end
    if (((1 + 1) == 2) and u.noParticles) then
      for gl, gm in ipairs(workspace:GetDescendants()) do
        if (((15 * 15) == 225) and (gm:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or gm:IsA(g({14, 40, 59, 51, 54}, 90)))) then
          gm.Enabled = false
        end
      end
    end
    task.wait(2)
  end
end)