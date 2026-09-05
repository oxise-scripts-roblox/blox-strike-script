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
local k = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local m = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local n = h.LocalPlayer
local o = getgenv().MillyMenu
if (((15 * 15) == 225) and not o) then
  return
end
local p = getgenv().MillyMuscle
if (((100 % 7) == 2) and (type(p) == g({46, 59, 56, 54, 63}, 90))) then
  p.running = false
end
local q = {running = true, lift = false, liftDelay = .12, liftBurst = 1, allTools = false, toolName = "", autoEquip = true, rebirth = false, rebirthDelay = 2, brawl = false, gifts = false, chests = false, wheel = false, rewardsDelay = 3, aura = false, auraRange = 18, auraDelay = .75, noDelay = false, auraPlayers = false, boss = false, bossTp = false, hardFarm = false, hitbox = false, hitboxSize = 12, antiRagdoll = false, antiKnockback = false, infJump = false, clickTp = false, petEquip = false, walk = false, ws = 16, jump = false, jp = 50, noclip = false, fly = false, flySpeed = 60, esp = false, bossEsp = false, espRange = 1200, afk = false, fullbright = false, status = g({40, 63, 59, 62, 35}, 90), lifts = 0}
getgenv().MillyMuscle = q
local r = i:FindFirstChild(g({40, 31, 44, 63, 52, 46, 41}, 90))
local function s(t)
  return (r and r:FindFirstChild(t))
end
local function u()
  local v = n.Character
  return (v and v:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function w()
  local x = n.Character
  return (x and x:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function y()
  local z = n.Character
  local aa = (z and z:FindFirstChildOfClass(g({14, 53, 53, 54}, 90)))
  if (((12 * 12) == 144) and aa) then
    return aa
  end
  if (((3 ^ 2) == 9) and q.autoEquip) then
    local ab = n:FindFirstChildOfClass(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))
    local ac = w()
    if (((7 * 7) == 49) and (ab and ac)) then
      local ad
      for ae, af in ipairs(ab:GetChildren()) do
        if (((1 + 1) == 2) and (af:IsA(g({14, 53, 53, 54}, 90)) and (((q.toolName == "") or af.Name:lower():find(q.toolName:lower(), 1, true))))) then
          ad = af
          break
        end
      end
      if (((15 * 15) == 225) and ad) then
        ac:EquipTool(ad)
        return ad
      end
    end
  end
end
local function ag()
  local ah = y()
  if (((100 % 7) == 2) and ah) then
    pcall(ah.Activate, ah)
    q.lifts += 1
    return true
  end
  return false
end
local function ai()
  local aj = w()
  local ak = n:FindFirstChildOfClass(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))
  if (((12 * 12) == 144) and (not aj or not ak)) then
    return
  end
  local al = {}
  for am, an in ipairs(ak:GetChildren()) do
    if (((3 ^ 2) == 9) and an:IsA(g({14, 53, 53, 54}, 90))) then
      al[(#al + 1)] = an
    end
  end
  local ao = (n.Character and n.Character:FindFirstChildOfClass(g({14, 53, 53, 54}, 90)))
  if (((7 * 7) == 49) and ao) then
    al[(#al + 1)] = ao
  end
  for ap, aq in ipairs(al) do
    if (((1 + 1) == 2) and (aq.Parent == ak)) then
      aj:EquipTool(aq)
    end
    pcall(aq.Activate, aq)
    q.lifts += 1
    task.wait()
  end
end
local function ar(as, ...)
  local at = s(as)
  if (((15 * 15) == 225) and (not at or not at:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    return false, g({55, 51, 41, 41, 51, 52, 61}, 90)
  end
  local au, av, aw = pcall(at.InvokeServer, at, ...)
  if (((100 % 7) == 2) and not au) then
    return false, av
  end
  return av, aw
end
local function ax(ay, ...)
  local az = s(ay)
  if (((12 * 12) == 144) and (not az or not az:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    return false
  end
  return pcall(az.FireServer, az, ...)
end
local function ba()
  local bb = u()
  if (((3 ^ 2) == 9) and not bb) then
    return
  end
  local bc, bd
  local function be(bf)
    if (((7 * 7) == 49) and ((bf ~= n.Character) and bf:IsA(g({23, 53, 62, 63, 54}, 90)))) then
      local bg = bf:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90))
      local bh = (bf:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or bf.PrimaryPart)
      if (((1 + 1) == 2) and ((bg and bh) and (bg.Health > 0))) then
        local bi = h:GetPlayerFromCharacter(bf)
        if (((15 * 15) == 225) and ((not bi or q.auraPlayers))) then
          local bj = ((bh.Position - bb.Position)).Magnitude
          if (((100 % 7) == 2) and ((bj <= q.auraRange) and ((not bd or (bj < bd))))) then
            bc = bf
            bd = bj
          end
        end
      end
    end
  end
  for bk, bl in ipairs(workspace:GetChildren()) do
    be(bl)
    for bm, bn in ipairs(bl:GetChildren()) do
      be(bn)
    end
  end
  return bc
end
local bo = o
local bp = bo:tab(g({28, 27, 8, 23}, 90))
bp:section(g({46, 40, 59, 51, 52, 51, 52, 61}, 90))
local bq = bp:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
bp:toggle(g({59, 47, 46, 53, 122, 54, 51, 60, 46, 122, 117, 122, 46, 40, 59, 51, 52}, 90), false, function(br)
  q.lift = br
end)
bp:slider(g({54, 51, 60, 46, 122, 62, 63, 54, 59, 35}, 90), .05, 2, q.liftDelay, function(bs)
  q.liftDelay = bs
end)
bp:slider(g({54, 51, 60, 46, 41, 122, 42, 63, 40, 122, 46, 51, 57, 49}, 90), 1, 10, q.liftBurst, function(bt)
  q.liftBurst = math.floor(bt)
end)
bp:toggle(g({57, 35, 57, 54, 63, 122, 63, 44, 63, 40, 35, 122, 46, 53, 53, 54}, 90), false, function(bu)
  q.allTools = bu
end)
bp:input(g({46, 53, 53, 54, 122, 52, 59, 55, 63, 122, 60, 51, 54, 46, 63, 40}, 90), g({63, 55, 42, 46, 35, 122, 103, 122, 60, 51, 40, 41, 46, 122, 46, 53, 53, 54}, 90), function(bv)
  q.toolName = bv
end)
bp:toggle(g({59, 47, 46, 53, 122, 63, 43, 47, 51, 42, 122, 46, 53, 53, 54}, 90), false, function(bw)
  q.autoEquip = bw
end)
bp:button(g({63, 43, 47, 51, 42, 122, 60, 51, 40, 41, 46, 122, 46, 53, 53, 54}, 90), function()
  y()
end)
bp:button(g({54, 51, 60, 46, 122, 53, 52, 57, 63}, 90), function()
  ag()
end)
bp:section(g({42, 40, 53, 61, 40, 63, 41, 41}, 90))
bp:toggle(g({59, 47, 46, 53, 122, 40, 63, 56, 51, 40, 46, 50}, 90), false, function(bx)
  q.rebirth = bx
end)
bp:slider(g({40, 63, 56, 51, 40, 46, 50, 122, 62, 63, 54, 59, 35}, 90), 1, 15, q.rebirthDelay, function(by)
  q.rebirthDelay = by
end)
bp:button(g({40, 63, 56, 51, 40, 46, 50, 122, 52, 53, 45}, 90), function()
  local bz, ca = ar(g({40, 63, 56, 51, 40, 46, 50, 8, 63, 55, 53, 46, 63}, 90), g({40, 63, 56, 51, 40, 46, 50, 8, 63, 43, 47, 63, 41, 46}, 90))
  q.status = (g({40, 63, 56, 51, 40, 46, 50, 96, 122}, 90) .. (tostring(bz) .. (g({122}, 90) .. tostring(ca))))
end)
local cb = bo:tab(g({25, 21, 23, 24, 27, 14}, 90))
cb:section(g({46, 53, 53, 54, 122, 57, 53, 55, 56, 59, 46}, 90))
cb:toggle(g({49, 51, 54, 54, 122, 59, 47, 40, 59}, 90), false, function(cc)
  q.aura = cc
end)
cb:slider(g({59, 47, 40, 59, 122, 40, 59, 52, 61, 63}, 90), 4, 40, q.auraRange, function(cd)
  q.auraRange = cd
end)
cb:slider(g({59, 46, 46, 59, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .7, 3, q.auraDelay, function(ce)
  q.auraDelay = ce
end)
cb:toggle(g({32, 63, 40, 53, 122, 59, 46, 46, 59, 57, 49, 122, 62, 63, 54, 59, 35}, 90), false, function(cf)
  q.noDelay = cf
end)
cb:toggle(g({51, 52, 57, 54, 47, 62, 63, 122, 42, 54, 59, 35, 63, 40, 41}, 90), false, function(cg)
  q.auraPlayers = cg
end)
cb:toggle(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 56, 63, 50, 51, 52, 62, 122, 46, 59, 40, 61, 63, 46}, 90), false, function(ch)
  q.bossTp = ch
end)
cb:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 46, 59, 40, 61, 63, 46, 122, 60, 59, 40, 55}, 90), false, function(ci)
  q.hardFarm = ci
end)
cb:toggle(g({50, 51, 46, 56, 53, 34, 122, 63, 34, 42, 59, 52, 62, 63, 40}, 90), false, function(cj)
  q.hitbox = cj
end)
cb:slider(g({50, 51, 46, 56, 53, 34, 122, 41, 51, 32, 63}, 90), 4, 35, q.hitboxSize, function(ck)
  q.hitboxSize = ck
end)
cb:section(g({42, 40, 53, 46, 63, 57, 46, 51, 53, 52}, 90))
cb:toggle(g({59, 52, 46, 51, 122, 40, 59, 61, 62, 53, 54, 54}, 90), false, function(cl)
  q.antiRagdoll = cl
end)
cb:toggle(g({59, 52, 46, 51, 122, 49, 52, 53, 57, 49, 56, 59, 57, 49}, 90), false, function(cm)
  q.antiKnockback = cm
end)
cb:toggle(g({59, 47, 46, 53, 122, 48, 53, 51, 52, 122, 56, 40, 59, 45, 54}, 90), false, function(cn)
  q.brawl = cn
end)
cb:button(g({48, 53, 51, 52, 122, 56, 40, 59, 45, 54}, 90), function()
  ax(g({56, 40, 59, 45, 54, 31, 44, 63, 52, 46}, 90), g({48, 53, 51, 52, 24, 40, 59, 45, 54}, 90))
end)
local co = bo:tab(g({8, 31, 13, 27, 8, 30, 9}, 90))
co:section(g({57, 54, 59, 51, 55, 41}, 90))
co:toggle(g({59, 47, 46, 53, 122, 60, 40, 63, 63, 122, 61, 51, 60, 46, 41}, 90), false, function(cp)
  q.gifts = cp
end)
co:toggle(g({59, 47, 46, 53, 122, 59, 54, 54, 122, 57, 50, 63, 41, 46, 41}, 90), false, function(cq)
  q.chests = cq
end)
co:toggle(g({59, 47, 46, 53, 122, 60, 40, 63, 63, 122, 45, 50, 63, 63, 54}, 90), false, function(cr)
  q.wheel = cr
end)
co:slider(g({57, 54, 59, 51, 55, 122, 62, 63, 54, 59, 35}, 90), 2, 20, q.rewardsDelay, function(cs)
  q.rewardsDelay = cs
end)
co:button(g({57, 54, 59, 51, 55, 122, 61, 51, 60, 46, 41, 122, 107, 119, 107, 104}, 90), function()
  for ct = 1, 12 do
    ar(g({60, 40, 63, 63, 29, 51, 60, 46, 25, 54, 59, 51, 55, 8, 63, 55, 53, 46, 63}, 90), g({57, 54, 59, 51, 55, 29, 51, 60, 46}, 90), ct)
    task.wait(.12)
  end
end)
co:button(g({57, 53, 47, 52, 46, 62, 53, 45, 52, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  ax(g({61, 51, 44, 63, 25, 53, 47, 52, 46, 62, 53, 45, 52, 8, 63, 45, 59, 40, 62, 31, 44, 63, 52, 46}, 90), g({61, 51, 44, 63, 25, 53, 47, 52, 46, 62, 53, 45, 52, 8, 63, 45, 59, 40, 62}, 90))
end)
co:button(g({61, 40, 53, 47, 42, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  ar(g({61, 40, 53, 47, 42, 8, 63, 55, 53, 46, 63}, 90), g({61, 40, 53, 47, 42, 8, 63, 45, 59, 40, 62, 41}, 90))
end)
co:button(g({57, 54, 59, 51, 55, 122, 59, 54, 54, 122, 57, 50, 63, 41, 46, 41}, 90), function()
  for cu, cv in ipairs({g({29, 53, 54, 62, 63, 52, 122, 25, 50, 63, 41, 46}, 90), g({31, 52, 57, 50, 59, 52, 46, 63, 62, 122, 25, 50, 63, 41, 46}, 90), g({23, 59, 61, 55, 59, 122, 25, 50, 63, 41, 46}, 90), g({23, 35, 46, 50, 51, 57, 59, 54, 122, 25, 50, 63, 41, 46}, 90), g({22, 63, 61, 63, 52, 62, 41, 122, 25, 50, 63, 41, 46}, 90), g({16, 47, 52, 61, 54, 63, 122, 25, 50, 63, 41, 46}, 90), g({19, 52, 62, 47, 41, 46, 40, 51, 59, 54, 122, 25, 50, 63, 41, 46}, 90)}) do
    ar(g({57, 50, 63, 57, 49, 25, 50, 63, 41, 46, 8, 63, 55, 53, 46, 63}, 90), cv)
  end
end)
co:button(g({41, 42, 51, 52, 122, 60, 40, 63, 63, 122, 45, 50, 63, 63, 54}, 90), function()
  local cw = i:FindFirstChild(g({41, 50, 59, 40, 63, 62}, 90))
  local cx = (cw and cw:FindFirstChild(g({57, 59, 46, 59, 54, 53, 61, 41}, 90)))
  local cy = (cx and cx:FindFirstChild(g({60, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54, 25, 50, 59, 52, 57, 63, 41}, 90)))
  local cz = (cy and cy:FindFirstChild(g({28, 53, 40, 46, 47, 52, 63, 122, 13, 50, 63, 63, 54}, 90)))
  if (((12 * 12) == 144) and cz) then
    ar(g({53, 42, 63, 52, 28, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54, 8, 63, 55, 53, 46, 63}, 90), g({53, 42, 63, 52, 28, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54}, 90), cz)
  end
end)
local da = bo:tab(g({10, 31, 14, 9}, 90))
da:section(g({51, 52, 44, 63, 52, 46, 53, 40, 35}, 90))
local function db(dc)
  local dd = n:FindFirstChild(g({42, 63, 46, 41, 28, 53, 54, 62, 63, 40}, 90))
  if (((3 ^ 2) == 9) and not dd) then
    return
  end
  for de, df in ipairs(dd:GetChildren()) do
    for dg, dh in ipairs(df:GetChildren()) do
      if (((7 * 7) == 49) and dh:IsA(g({9, 46, 40, 51, 52, 61, 12, 59, 54, 47, 63}, 90))) then
        dc(dh)
      end
    end
  end
end
da:button(g({63, 43, 47, 51, 42, 122, 42, 63, 46, 41}, 90), function()
  db(function(di)
    ax(g({63, 43, 47, 51, 42, 10, 63, 46, 31, 44, 63, 52, 46}, 90), g({63, 43, 47, 51, 42, 10, 63, 46}, 90), di)
  end)
end)
da:button(g({47, 52, 63, 43, 47, 51, 42, 122, 59, 54, 54}, 90), function()
  local dj = n:FindFirstChild(g({63, 43, 47, 51, 42, 42, 63, 62, 10, 63, 46, 41}, 90))
  if (((1 + 1) == 2) and dj) then
    for dk, dl in ipairs(dj:GetDescendants()) do
      if (((15 * 15) == 225) and (dl:IsA(g({21, 56, 48, 63, 57, 46, 12, 59, 54, 47, 63}, 90)) and dl.Value)) then
        ax(g({63, 43, 47, 51, 42, 10, 63, 46, 31, 44, 63, 52, 46}, 90), g({47, 52, 63, 43, 47, 51, 42, 10, 63, 46}, 90), dl.Value)
      end
    end
  end
end)
da:button(g({63, 44, 53, 54, 44, 63, 122, 62, 47, 42, 54, 51, 57, 59, 46, 63, 41}, 90), function()
  local dm = {}
  db(function(dn)
    if (((100 % 7) == 2) and not dm[dn.Name]) then
      dm[dn.Name] = true
      ax(g({42, 63, 46, 31, 44, 53, 54, 44, 63, 31, 44, 63, 52, 46}, 90), g({63, 44, 53, 54, 44, 63, 10, 63, 46}, 90), dn.Name)
    end
  end)
end)
da:toggle(g({49, 63, 63, 42, 122, 63, 43, 47, 51, 42, 42, 51, 52, 61, 122, 42, 63, 46, 41}, 90), false, function(dp)
  q.petEquip = dp
end)
local dq = bo:tab(g({27, 8, 31, 27, 9}, 90))
dq:section(g({45, 53, 40, 54, 62}, 90))
dq:button(g({40, 63, 60, 40, 63, 41, 50, 122, 59, 40, 63, 59, 122, 54, 51, 41, 46}, 90), function()
  q.status = (g({59, 40, 63, 59, 41, 96, 122}, 90) .. tostring(((workspace:FindFirstChild(g({59, 40, 63, 59, 25, 51, 40, 57, 54, 63, 41}, 90)) and #workspace.areaCircles:GetChildren()) or 0)))
end)
local dr = workspace:FindFirstChild(g({59, 40, 63, 59, 25, 51, 40, 57, 54, 63, 41}, 90))
if (((12 * 12) == 144) and dr) then
  for ds, dt in ipairs(dr:GetChildren()) do
    dq:button((g({46, 40, 59, 44, 63, 54, 96, 122}, 90) .. dt.Name), function()
      ar(g({59, 40, 63, 59, 14, 40, 59, 44, 63, 54, 8, 63, 55, 53, 46, 63}, 90), g({46, 40, 59, 44, 63, 54, 14, 53, 27, 40, 63, 59}, 90), dt)
    end)
  end
end
local du = bo:tab(g({31, 9, 10}, 90))
du:section(g({46, 59, 40, 61, 63, 46, 41}, 90))
du:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(dv)
  q.esp = dv
end)
du:toggle(g({56, 53, 41, 41, 122, 117, 122, 52, 42, 57, 122, 63, 41, 42}, 90), false, function(dw)
  q.bossEsp = dw
end)
du:slider(g({63, 41, 42, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 5000, q.espRange, function(dx)
  q.espRange = dx
end)
local dy = bo:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
dy:section(g({57, 50, 59, 40, 59, 57, 46, 63, 40}, 90))
dy:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(dz)
  q.walk = dz
end)
dy:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62, 122, 44, 59, 54, 47, 63}, 90), 0, 250, q.ws, function(ea)
  q.ws = ea
end)
dy:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(eb)
  q.jump = eb
end)
dy:slider(g({48, 47, 55, 42, 122, 44, 59, 54, 47, 63}, 90), 0, 300, q.jp, function(ec)
  q.jp = ec
end)
dy:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(ed)
  q.noclip = ed
end)
dy:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(ee)
  q.infJump = ee
end)
dy:toggle(g({57, 46, 40, 54, 122, 57, 54, 51, 57, 49, 122, 46, 63, 54, 63, 42, 53, 40, 46}, 90), false, function(ef)
  q.clickTp = ef
end)
dy:toggle(g({60, 54, 35}, 90), false, function(eg)
  q.fly = eg
end)
dy:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 250, q.flySpeed, function(eh)
  q.flySpeed = eh
end)
local ei = bo:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
ei:section(g({41, 63, 41, 41, 51, 53, 52}, 90))
ei:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(ej)
  q.afk = ej
end)
ei:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(ek)
  q.fullbright = ek
end)
ei:label(g({59, 54, 54, 122, 60, 47, 52, 57, 46, 51, 53, 52, 41, 122, 41, 46, 59, 40, 46, 122, 21, 28, 28}, 90))
ei:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for el, em in ipairs({g({54, 51, 60, 46}, 90), g({59, 54, 54, 14, 53, 53, 54, 41}, 90), g({40, 63, 56, 51, 40, 46, 50}, 90), g({56, 40, 59, 45, 54}, 90), g({61, 51, 60, 46, 41}, 90), g({57, 50, 63, 41, 46, 41}, 90), g({45, 50, 63, 63, 54}, 90), g({42, 63, 46, 31, 43, 47, 51, 42}, 90), g({59, 47, 40, 59}, 90), g({52, 53, 30, 63, 54, 59, 35}, 90), g({50, 59, 40, 62, 28, 59, 40, 55}, 90), g({50, 51, 46, 56, 53, 34}, 90), g({59, 52, 46, 51, 8, 59, 61, 62, 53, 54, 54}, 90), g({59, 52, 46, 51, 17, 52, 53, 57, 49, 56, 59, 57, 49}, 90), g({51, 52, 60, 16, 47, 55, 42}, 90), g({57, 54, 51, 57, 49, 14, 42}, 90), g({45, 59, 54, 49}, 90), g({48, 47, 55, 42}, 90), g({52, 53, 57, 54, 51, 42}, 90), g({60, 54, 35}, 90), g({63, 41, 42}, 90), g({56, 53, 41, 41, 31, 41, 42}, 90)}) do
    q[em] = false
  end
end)
ei:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  bo:destroy()
end)
bp:show()
n.Idled:Connect(function()
  if (((3 ^ 2) == 9) and q.afk) then
    m:CaptureController()
    m:ClickButton2(Vector2.new())
  end
end)
k.JumpRequest:Connect(function()
  if (((7 * 7) == 49) and q.infJump) then
    local en = w()
    if (((1 + 1) == 2) and en) then
      en:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local eo = n:GetMouse()
eo.Button1Down:Connect(function()
  if (((15 * 15) == 225) and (q.clickTp and k:IsKeyDown(Enum.KeyCode.LeftControl))) then
    local ep = u()
    if (((100 % 7) == 2) and (ep and eo.Hit)) then
      ep.CFrame = (eo.Hit + Vector3.new(0, 3, 0))
    end
  end
end)
local eq = {}
local function er(es, et, eu)
  local ev = os.clock()
  if (((12 * 12) == 144) and not et) then
    eq[es] = ev
    return false
  end
  if (((3 ^ 2) == 9) and ((ev - ((eq[es] or 0))) >= eu)) then
    eq[es] = ev
    return true
  end
  return false
end
task.spawn(function()
  while (((7 * 7) == 49) and q.running) do
    if (((1 + 1) == 2) and er(g({54, 51, 60, 46}, 90), q.lift, q.liftDelay)) then
      local ew = false
      if (((15 * 15) == 225) and q.allTools) then
        ai()
        ew = true
      else
        for ex = 1, q.liftBurst do
          ew = (ag() or ew)
        end
      end
      if (((100 % 7) == 2) and ew) then
        q.status = g({46, 40, 59, 51, 52, 51, 52, 61}, 90)
      else
        q.status = g({52, 53, 122, 55, 59, 46, 57, 50, 51, 52, 61, 122, 46, 53, 53, 54}, 90)
      end
    end
    if (((12 * 12) == 144) and er(g({40, 63, 56, 51, 40, 46, 50}, 90), q.rebirth, q.rebirthDelay)) then
      local ey = ar(g({40, 63, 56, 51, 40, 46, 50, 8, 63, 55, 53, 46, 63}, 90), g({40, 63, 56, 51, 40, 46, 50, 8, 63, 43, 47, 63, 41, 46}, 90))
      if (((3 ^ 2) == 9) and ey) then
        q.status = g({40, 63, 56, 51, 40, 46, 50, 63, 62}, 90)
      end
    end
    if (((7 * 7) == 49) and er(g({56, 40, 59, 45, 54}, 90), q.brawl, 2)) then
      ax(g({56, 40, 59, 45, 54, 31, 44, 63, 52, 46}, 90), g({48, 53, 51, 52, 24, 40, 59, 45, 54}, 90))
    end
    if (((1 + 1) == 2) and er(g({61, 51, 60, 46, 41}, 90), q.gifts, q.rewardsDelay)) then
      for ez = 1, 12 do
        ar(g({60, 40, 63, 63, 29, 51, 60, 46, 25, 54, 59, 51, 55, 8, 63, 55, 53, 46, 63}, 90), g({57, 54, 59, 51, 55, 29, 51, 60, 46}, 90), ez)
      end
      ax(g({61, 51, 44, 63, 25, 53, 47, 52, 46, 62, 53, 45, 52, 8, 63, 45, 59, 40, 62, 31, 44, 63, 52, 46}, 90), g({61, 51, 44, 63, 25, 53, 47, 52, 46, 62, 53, 45, 52, 8, 63, 45, 59, 40, 62}, 90))
    end
    if (((15 * 15) == 225) and er(g({57, 50, 63, 41, 46, 41}, 90), q.chests, q.rewardsDelay)) then
      for fa, fb in ipairs({g({29, 53, 54, 62, 63, 52, 122, 25, 50, 63, 41, 46}, 90), g({31, 52, 57, 50, 59, 52, 46, 63, 62, 122, 25, 50, 63, 41, 46}, 90), g({23, 59, 61, 55, 59, 122, 25, 50, 63, 41, 46}, 90), g({23, 35, 46, 50, 51, 57, 59, 54, 122, 25, 50, 63, 41, 46}, 90), g({22, 63, 61, 63, 52, 62, 41, 122, 25, 50, 63, 41, 46}, 90), g({16, 47, 52, 61, 54, 63, 122, 25, 50, 63, 41, 46}, 90), g({19, 52, 62, 47, 41, 46, 40, 51, 59, 54, 122, 25, 50, 63, 41, 46}, 90)}) do
        ar(g({57, 50, 63, 57, 49, 25, 50, 63, 41, 46, 8, 63, 55, 53, 46, 63}, 90), fb)
      end
    end
    if (((100 % 7) == 2) and er(g({45, 50, 63, 63, 54}, 90), q.wheel, 5)) then
      local fc = i:FindFirstChild(g({41, 50, 59, 40, 63, 62}, 90))
      local fd = (fc and fc:FindFirstChild(g({57, 59, 46, 59, 54, 53, 61, 41}, 90)))
      local fe = (fd and fd:FindFirstChild(g({60, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54, 25, 50, 59, 52, 57, 63, 41}, 90)))
      local ff = (fe and fe:FindFirstChild(g({28, 53, 40, 46, 47, 52, 63, 122, 13, 50, 63, 63, 54}, 90)))
      if (((12 * 12) == 144) and ff) then
        ar(g({53, 42, 63, 52, 28, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54, 8, 63, 55, 53, 46, 63}, 90), g({53, 42, 63, 52, 28, 53, 40, 46, 47, 52, 63, 13, 50, 63, 63, 54}, 90), ff)
      end
    end
    if (((3 ^ 2) == 9) and er(g({42, 63, 46, 41}, 90), q.petEquip, 4)) then
      db(function(fg)
        ax(g({63, 43, 47, 51, 42, 10, 63, 46, 31, 44, 63, 52, 46}, 90), g({63, 43, 47, 51, 42, 10, 63, 46}, 90), fg)
      end)
    end
    if (((7 * 7) == 49) and er(g({59, 47, 40, 59}, 90), q.aura, ((q.noDelay and 0) or (((q.hardFarm and .05) or q.auraDelay))))) then
      local fh = ba()
      if (((1 + 1) == 2) and fh) then
        local fi = u()
        local fj = (fh:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or fh.PrimaryPart)
        if (((15 * 15) == 225) and (fi and fj)) then
          if (((100 % 7) == 2) and (q.bossTp or q.hardFarm)) then
            fi.CFrame = (fj.CFrame * CFrame.new(0, 0, 3))
          else
            fi.CFrame = CFrame.lookAt(fi.Position, Vector3.new(fj.Position.X, fi.Position.Y, fj.Position.Z))
          end
          if (((12 * 12) == 144) and q.allTools) then
            ai()
          else
            ag()
          end
        end
      end
    end
    bq:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. (q.status .. (g({122, 38, 122, 54, 51, 60, 46, 41, 96, 122}, 90) .. q.lifts))))
    task.wait(.03)
  end
end)
local fk = {}
local function fl(fm, fn, fo, fp)
  local fq = fm:FindFirstChild(g({23, 51, 54, 54, 35, 23, 47, 41, 57, 54, 63, 31, 9, 10}, 90))
  if (((3 ^ 2) == 9) and not fn) then
    if (((7 * 7) == 49) and fq) then
      fq:Destroy()
    end
    fk[fm] = nil
    return
  end
  if (((1 + 1) == 2) and not fq) then
    fq = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
    fq.Name = g({23, 51, 54, 54, 35, 23, 47, 41, 57, 54, 63, 31, 9, 10}, 90)
    fq.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    fq.FillTransparency = .72
    fq.Parent = fm
  end
  fq.FillColor = fp
  fq.OutlineColor = fp
  fk[fm] = true
end
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    local fr = u()
    for fs, ft in ipairs(workspace:GetDescendants()) do
      if (((100 % 7) == 2) and (ft:IsA(g({23, 53, 62, 63, 54}, 90)) and (ft ~= n.Character))) then
        local fu = ft:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90))
        local fv = (ft:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or ft.PrimaryPart)
        if (((12 * 12) == 144) and ((fu and fv) and fr)) then
          local fw = h:GetPlayerFromCharacter(ft)
          local fx = ((fv.Position - fr.Position)).Magnitude
          local fy = ((fx <= q.espRange) and ((((fw and q.esp)) or ((not fw and q.bossEsp)))))
          fl(ft, fy, ft.Name, ((fw and Color3.fromRGB(255, 90, 150)) or Color3.fromRGB(255, 180, 40)))
        end
      end
    end
    task.wait(1)
  end
  for fz in pairs(fk) do
    fl(fz, false)
  end
end)
local ga, gb
j.Stepped:Connect(function()
  if (((3 ^ 2) == 9) and not q.running) then
    return
  end
  local gc = w()
  local gd = u()
  if (((7 * 7) == 49) and gc) then
    if (((1 + 1) == 2) and q.walk) then
      gc.WalkSpeed = q.ws
    end
    if (((15 * 15) == 225) and q.jump) then
      gc.UseJumpPower = true
      gc.JumpPower = q.jp
    end
    if (((100 % 7) == 2) and q.antiRagdoll) then
      gc.PlatformStand = false
      gc.Sit = false
      gc.AutoRotate = true
      if (((12 * 12) == 144) and ((gc:GetState() == Enum.HumanoidStateType.Ragdoll) or (gc:GetState() == Enum.HumanoidStateType.FallingDown))) then
        gc:ChangeState(Enum.HumanoidStateType.GettingUp)
      end
    end
  end
  if (((3 ^ 2) == 9) and (q.antiKnockback and gd)) then
    gd.AssemblyLinearVelocity = Vector3.new(0, math.clamp(gd.AssemblyLinearVelocity.Y, -35, 35), 0)
    gd.AssemblyAngularVelocity = Vector3.new()
  end
  if (((7 * 7) == 49) and (q.noclip and n.Character)) then
    for ge, gf in ipairs(n.Character:GetDescendants()) do
      if (((1 + 1) == 2) and gf:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        gf.CanCollide = false
      end
    end
  end
  for gg, gh in ipairs(h:GetPlayers()) do
    if (((15 * 15) == 225) and ((gh ~= n) and gh.Character)) then
      local gi = gh.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90))
      if (((100 % 7) == 2) and gi) then
        if (((12 * 12) == 144) and q.hitbox) then
          if (((3 ^ 2) == 9) and not gi:GetAttribute(g({23, 51, 54, 54, 35, 31, 34, 42, 59, 52, 62, 63, 62}, 90))) then
            gi:SetAttribute(g({23, 51, 54, 54, 35, 21, 54, 62, 9, 51, 32, 63}, 90), gi.Size)
            gi:SetAttribute(g({23, 51, 54, 54, 35, 21, 54, 62, 14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90), gi.Transparency)
            gi:SetAttribute(g({23, 51, 54, 54, 35, 31, 34, 42, 59, 52, 62, 63, 62}, 90), true)
          end
          gi.Size = Vector3.new(q.hitboxSize, q.hitboxSize, q.hitboxSize)
          gi.Transparency = .75
          gi.CanCollide = false
        elseif (((7 * 7) == 49) and gi:GetAttribute(g({23, 51, 54, 54, 35, 31, 34, 42, 59, 52, 62, 63, 62}, 90))) then
          gi.Size = (gi:GetAttribute(g({23, 51, 54, 54, 35, 21, 54, 62, 9, 51, 32, 63}, 90)) or Vector3.new(2, 2, 1))
          gi.Transparency = (gi:GetAttribute(g({23, 51, 54, 54, 35, 21, 54, 62, 14, 40, 59, 52, 41, 42, 59, 40, 63, 52, 57, 35}, 90)) or 1)
          gi:SetAttribute(g({23, 51, 54, 54, 35, 31, 34, 42, 59, 52, 62, 63, 62}, 90), nil)
        end
      end
    end
  end
  if (((1 + 1) == 2) and (q.fly and gd)) then
    if (((15 * 15) == 225) and (not ga or not ga.Parent)) then
      ga = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      ga.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
      ga.Parent = gd
      gb = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
      gb.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
      gb.P = 90000
      gb.Parent = gd
    end
    local gj = workspace.CurrentCamera
    local gk = Vector3.new()
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.W)) then
      gk += gj.CFrame.LookVector
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.S)) then
      gk -= gj.CFrame.LookVector
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.A)) then
      gk -= gj.CFrame.RightVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.D)) then
      gk += gj.CFrame.RightVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.Space)) then
      gk += Vector3.yAxis
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      gk -= Vector3.yAxis
    end
    ga.Velocity = (((gk.Magnitude > 0) and (gk.Unit * q.flySpeed)) or Vector3.new())
    gb.CFrame = gj.CFrame
  elseif (((100 % 7) == 2) and ga) then
    ga:Destroy()
    gb:Destroy()
    ga = nil
    gb = nil
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    if (((3 ^ 2) == 9) and q.fullbright) then
      l.Brightness = 3
      l.GlobalShadows = false
      l.Ambient = Color3.new(1, 1, 1)
      l.FogEnd = 1000000
    end
    task.wait(2)
  end
end)