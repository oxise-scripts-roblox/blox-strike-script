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
local k = game:GetService(g({25, 53, 54, 54, 63, 57, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local m = h.LocalPlayer
local n = getgenv().MillyMenu
if (((15 * 15) == 225) and not n) then
  return
end
local o = require(i:WaitForChild(g({10, 59, 57, 49, 59, 61, 63, 41}, 90)):WaitForChild(g({49, 52, 51, 46}, 90)))
local function p(q)
  local r, s = pcall(o.GetService, q)
  return ((r and s) or nil)
end
local t, u, v, w, x, y, z, aa, ab, ac, ad, ae, af
local function ag()
  t = (t or p(g({27, 46, 46, 59, 57, 49, 9, 63, 40, 44, 51, 57, 63}, 90)))
  u = (u or p(g({29, 40, 59, 41, 41, 9, 63, 40, 44, 51, 57, 63}, 90)))
  v = (v or p(g({30, 59, 46, 59, 9, 63, 40, 44, 51, 57, 63}, 90)))
  w = (w or p(g({9, 46, 40, 63, 52, 61, 46, 50, 9, 63, 40, 44, 51, 57, 63}, 90)))
  x = (x or p(g({14, 40, 59, 51, 52, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90)))
  y = (y or p(g({22, 47, 57, 49, 35, 13, 50, 63, 63, 54, 9, 63, 40, 44, 51, 57, 63}, 90)))
  z = (z or p(g({13, 53, 40, 54, 62, 9, 63, 40, 44, 51, 57, 63}, 90)))
  aa = (aa or p(g({24, 59, 41, 63, 14, 63, 54, 63, 42, 53, 40, 46, 9, 63, 40, 44, 51, 57, 63}, 90)))
  ab = (ab or p(g({25, 47, 46, 46, 63, 40, 41, 9, 50, 53, 42, 9, 63, 40, 44, 51, 57, 63}, 90)))
  ac = (ac or p(g({10, 53, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90)))
  ad = (ad or p(g({8, 63, 54, 51, 57, 41, 9, 63, 40, 44, 51, 57, 63}, 90)))
  ae = (ae or p(g({11, 47, 63, 41, 46, 10, 40, 53, 61, 40, 63, 41, 41, 9, 63, 40, 44, 51, 57, 63}, 90)))
  af = (af or p(g({22, 47, 57, 49, 35, 29, 59, 57, 50, 59, 9, 63, 40, 44, 51, 57, 63}, 90)))
end
ag()
local ah = getgenv().MillyGrass
if (((100 % 7) == 2) and (type(ah) == g({46, 59, 56, 54, 63}, 90))) then
  ah.running = false
end
local ai = {}
local aj = {AttackRequested = g({27, 46, 46, 59, 57, 49, 9, 63, 40, 44, 51, 57, 63}, 90), ResetPlayerGrassState = g({29, 40, 59, 41, 41, 9, 63, 40, 44, 51, 57, 63}, 90), ClickRequested = g({9, 46, 40, 63, 52, 61, 46, 50, 9, 63, 40, 44, 51, 57, 63}, 90)}
local function ak()
  for al, am in ipairs(i:GetDescendants()) do
    local an = aj[am.Name]
    if (((12 * 12) == 144) and (((an and am:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90))) and am.Parent) and (am.Parent.Name == g({8, 31}, 90)))) then
      local ao = am.Parent
      while (((3 ^ 2) == 9) and (ao and (ao ~= i))) do
        if (((7 * 7) == 49) and (ao.Name == an)) then
          ai[am.Name] = am
          break
        end
        ao = ao.Parent
      end
    end
  end
end
task.spawn(ak)
local ap = {running = true, attack = false, attackDelay = .15, strength = false, strengthDelay = .06, collect = false, collectDelay = .6, sell = false, sellDelay = 3, resetGrass = false, resetDelay = 20, antiAfk = false, walk = false, walkSpeed = 16, jump = false, jumpPower = 50, noclip = false, fly = false, flySpeed = 55, lootEsp = false, lootDistance = true, lootRange = 2500, playerEsp = false, playerDistance = true, worldId = g({107}, 90), cutterId = "", potionId = "", questId = "", status = g({41, 59, 60, 63, 122, 55, 53, 62, 63}, 90)}
getgenv().MillyGrass = ap
task.spawn(function()
  while (((1 + 1) == 2) and ap.running) do
    ag()
    task.wait(.5)
  end
end)
local function aq(ar, as, ...)
  local at = (ar and ar[as])
  if (((15 * 15) == 225) and (at and (type(at.Fire) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    local au = pcall(at.Fire, at, ...)
    if (((100 % 7) == 2) and au) then
      return true
    end
  end
  local av = ai[as]
  if (((12 * 12) == 144) and (av and av:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    return pcall(av.FireServer, av, ...)
  end
  return false
end
local function aw(ax, ay, ...)
  if (((3 ^ 2) == 9) and (not ax or (type(ax[ay]) ~= g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    return nil
  end
  local az, ba = pcall(ax[ay], ax, ...)
  if (((7 * 7) == 49) and not az) then
    ap.status = (ay .. g({122, 60, 59, 51, 54, 63, 62}, 90))
    return nil
  end
  if (((1 + 1) == 2) and ((type(ba) == g({46, 59, 56, 54, 63}, 90)) and (type(ba.catch) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    ba:catch(function()
      ap.status = (ay .. g({122, 40, 63, 48, 63, 57, 46, 63, 62}, 90))
    end)
  end
  return ba
end
local function bb()
  return m.Character
end
local function bc()
  local bd = bb()
  return (bd and bd:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function be()
  local bf = bb()
  return (bf and bf:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function bg()
  if (((15 * 15) == 225) and not fireproximityprompt) then
    return
  end
  local bh = be()
  if (((100 % 7) == 2) and not bh) then
    return
  end
  for bi, bj in ipairs(k:GetTagged(g({9, 42, 59, 45, 52, 63, 62, 22, 53, 53, 46}, 90))) do
    local bk = bj:FindFirstChildWhichIsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90), true)
    local bl = (bk and (((bk.Parent:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and bk.Parent) or bk.Parent:FindFirstAncestorWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))))
    if (((12 * 12) == 144) and (((bk and bl) and bk.Enabled) and (((bl.Position - bh.Position)).Magnitude <= (bk.MaxActivationDistance + 2)))) then
      pcall(fireproximityprompt, bk)
    end
  end
end
local bm = n:tab(g({28, 27, 8, 23}, 90))
bm:section(g({61, 40, 59, 41, 41}, 90))
local bn = bm:label(g({9, 46, 59, 46, 47, 41, 96, 122, 54, 53, 59, 62, 51, 52, 61}, 90))
bm:toggle(g({59, 47, 46, 53, 122, 59, 46, 46, 59, 57, 49}, 90), false, function(bo)
  ap.attack = bo
end)
bm:slider(g({59, 46, 46, 59, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .05, 2, ap.attackDelay, function(bp)
  ap.attackDelay = math.max(.05, bp)
end)
bm:toggle(g({59, 47, 46, 53, 122, 42, 51, 57, 49, 47, 42, 122, 52, 63, 59, 40, 56, 35}, 90), false, function(bq)
  ap.collect = bq
end)
bm:slider(g({57, 53, 54, 54, 63, 57, 46, 122, 62, 63, 54, 59, 35}, 90), .1, 5, ap.collectDelay, function(br)
  ap.collectDelay = br
end)
bm:toggle(g({59, 47, 46, 53, 122, 40, 63, 41, 63, 46, 122, 61, 40, 59, 41, 41}, 90), false, function(bs)
  ap.resetGrass = bs
end)
bm:slider(g({61, 40, 59, 41, 41, 122, 40, 63, 41, 63, 46, 122, 62, 63, 54, 59, 35}, 90), 5, 120, ap.resetDelay, function(bt)
  ap.resetDelay = bt
end)
bm:button(g({59, 46, 46, 59, 57, 49, 122, 53, 52, 57, 63}, 90), function()
  aq(t, g({27, 46, 46, 59, 57, 49, 8, 63, 43, 47, 63, 41, 46, 63, 62}, 90))
end)
bm:button(g({42, 51, 57, 49, 47, 42, 122, 52, 63, 59, 40, 56, 35}, 90), bg)
bm:button(g({40, 63, 41, 63, 46, 122, 61, 40, 59, 41, 41}, 90), function()
  aq(u, g({8, 63, 41, 63, 46, 10, 54, 59, 35, 63, 40, 29, 40, 59, 41, 41, 9, 46, 59, 46, 63}, 90))
end)
local bu = n:tab(g({10, 21, 13, 31, 8}, 90))
bu:section(g({41, 46, 40, 63, 52, 61, 46, 50}, 90))
bu:toggle(g({59, 47, 46, 53, 122, 41, 46, 40, 63, 52, 61, 46, 50}, 90), false, function(bv)
  ap.strength = bv
end)
bu:slider(g({57, 54, 51, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .05, 2, ap.strengthDelay, function(bw)
  ap.strengthDelay = math.max(.05, bw)
end)
bu:button(g({61, 59, 51, 52, 122, 41, 46, 40, 63, 52, 61, 46, 50, 122, 53, 52, 57, 63}, 90), function()
  aq(w, g({25, 54, 51, 57, 49, 8, 63, 43, 47, 63, 41, 46, 63, 62}, 90))
end)
bu:button(g({46, 53, 61, 61, 54, 63, 122, 53, 60, 60, 51, 57, 51, 59, 54, 122, 59, 47, 46, 53, 122, 57, 54, 51, 57, 49}, 90), function()
  aw(w, g({14, 53, 61, 61, 54, 63, 27, 47, 46, 53, 25, 54, 51, 57, 49}, 90))
end)
bu:button(g({40, 63, 43, 47, 63, 41, 46, 122, 41, 46, 40, 63, 52, 61, 46, 50, 122, 41, 46, 59, 46, 63}, 90), function()
  aw(w, g({29, 63, 46, 9, 46, 59, 46, 63}, 90))
end)
local bx = n:tab(g({27, 15, 14, 21, 23, 27, 14, 19, 21, 20}, 90))
bx:section(g({63, 57, 53, 52, 53, 55, 35}, 90))
bx:toggle(g({59, 47, 46, 53, 122, 41, 63, 54, 54, 122, 56, 59, 57, 49, 42, 59, 57, 49}, 90), false, function(by)
  ap.sell = by
end)
bx:slider(g({41, 63, 54, 54, 122, 62, 63, 54, 59, 35}, 90), 1, 30, ap.sellDelay, function(bz)
  ap.sellDelay = bz
end)
bx:button(g({41, 63, 54, 54, 122, 56, 59, 57, 49, 42, 59, 57, 49, 122, 52, 53, 45}, 90), function()
  aw(v, g({9, 63, 54, 54, 27, 54, 54, 24, 59, 57, 49, 42, 59, 57, 49, 22, 53, 53, 46}, 90))
end)
bx:button(g({57, 54, 59, 51, 55, 122, 53, 60, 60, 54, 51, 52, 63, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  aw(v, g({25, 54, 59, 51, 55, 21, 60, 60, 54, 51, 52, 63, 8, 63, 45, 59, 40, 62}, 90))
end)
bx:button(g({57, 54, 59, 51, 55, 122, 54, 51, 49, 63, 122, 40, 63, 45, 59, 40, 62}, 90), function()
  aw(v, g({25, 54, 59, 51, 55, 22, 51, 49, 63, 8, 63, 45, 59, 40, 62}, 90))
end)
local ca = n:tab(g({8, 31, 13, 27, 8, 30, 9}, 90))
ca:section(g({45, 50, 63, 63, 54, 122, 59, 52, 62, 122, 43, 47, 63, 41, 46, 41}, 90))
ca:button(g({40, 63, 43, 47, 63, 41, 46, 122, 45, 50, 63, 63, 54, 122, 41, 42, 51, 52}, 90), function()
  aw(y, g({8, 63, 43, 47, 63, 41, 46, 9, 42, 51, 52}, 90))
end)
ca:button(g({57, 54, 59, 51, 55, 122, 45, 50, 63, 63, 54, 122, 41, 42, 51, 52}, 90), function()
  aw(y, g({25, 54, 59, 51, 55, 9, 42, 51, 52}, 90))
end)
local cc = ca:input(g({43, 47, 63, 41, 46, 122, 51, 62}, 90), g({43, 47, 63, 41, 46, 122, 51, 62}, 90), function(cb)
  ap.questId = cb
end)
ca:button(g({57, 54, 59, 51, 55, 122, 43, 47, 63, 41, 46}, 90), function()
  if (((3 ^ 2) == 9) and (ap.questId ~= "")) then
    aw(ae, g({25, 54, 59, 51, 55, 11, 47, 63, 41, 46}, 90), ap.questId)
  end
end)
ca:button(g({54, 47, 57, 49, 35, 122, 61, 59, 57, 50, 59, 122, 46, 51, 57, 49, 63, 46}, 90), function()
  aw(af, g({8, 53, 54, 54, 13, 51, 46, 50, 14, 51, 57, 49, 63, 46}, 90))
end)
ca:button(g({57, 54, 59, 51, 55, 122, 40, 63, 54, 51, 57, 122, 57, 40, 59, 60, 46}, 90), function()
  aw(ad, g({25, 54, 59, 51, 55, 25, 40, 59, 60, 46, 8, 63, 41, 47, 54, 46}, 90))
end)
ca:button(g({55, 59, 40, 49, 122, 40, 63, 54, 51, 57, 41, 122, 41, 63, 63, 52}, 90), function()
  aw(ad, g({23, 59, 40, 49, 8, 63, 54, 51, 57, 41, 9, 63, 63, 52}, 90))
end)
local cd = n:tab(g({14, 8, 27, 12, 31, 22}, 90))
cd:section(g({45, 53, 40, 54, 62, 41, 122, 59, 52, 62, 122, 56, 59, 41, 63}, 90))
cd:input(g({45, 53, 40, 54, 62, 122, 51, 62}, 90), g({107}, 90), function(ce)
  ap.worldId = ce
end)
cd:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 45, 53, 40, 54, 62}, 90), function()
  local cf = tonumber(ap.worldId)
  if (((7 * 7) == 49) and cf) then
    aw(z, g({14, 63, 54, 63, 42, 53, 40, 46, 14, 53, 13, 53, 40, 54, 62}, 90), cf)
  end
end)
cd:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 41, 42, 59, 45, 52}, 90), function()
  aw(aa, g({14, 63, 54, 63, 42, 53, 40, 46, 14, 53, 9, 42, 59, 45, 52}, 90))
end)
cd:button(g({40, 63, 43, 47, 63, 41, 46, 122, 45, 53, 40, 54, 62, 122, 41, 46, 59, 46, 63}, 90), function()
  aw(z, g({29, 63, 46, 9, 46, 59, 46, 63}, 90))
end)
cd:button(g({40, 63, 43, 47, 63, 41, 46, 122, 46, 40, 59, 51, 52, 51, 52, 61, 122, 42, 59, 62, 41}, 90), function()
  aw(x, g({29, 63, 46, 8, 63, 41, 53, 54, 44, 63, 62, 10, 59, 62, 41}, 90))
end)
local cg = n:tab(g({19, 20, 12, 31, 20, 14, 21, 8, 3}, 90))
cg:section(g({57, 47, 46, 46, 63, 40, 41, 122, 59, 52, 62, 122, 42, 53, 46, 51, 53, 52, 41}, 90))
cg:input(g({57, 47, 46, 46, 63, 40, 122, 51, 62}, 90), g({57, 47, 46, 46, 63, 40, 122, 51, 62}, 90), function(ch)
  ap.cutterId = ch
end)
cg:button(g({56, 47, 35, 122, 57, 47, 46, 46, 63, 40}, 90), function()
  if (((1 + 1) == 2) and (ap.cutterId ~= "")) then
    aw(ab, g({24, 47, 35, 25, 47, 46, 46, 63, 40}, 90), ap.cutterId)
  end
end)
cg:button(g({63, 43, 47, 51, 42, 122, 57, 47, 46, 46, 63, 40}, 90), function()
  if (((15 * 15) == 225) and (ap.cutterId ~= "")) then
    aw(ab, g({31, 43, 47, 51, 42, 25, 47, 46, 46, 63, 40}, 90), ap.cutterId)
  end
end)
cg:button(g({40, 63, 43, 47, 63, 41, 46, 122, 57, 47, 46, 46, 63, 40, 122, 57, 59, 46, 59, 54, 53, 61}, 90), function()
  aw(ab, g({29, 63, 46, 25, 59, 46, 59, 54, 53, 61}, 90))
end)
cg:button(g({40, 63, 43, 47, 63, 41, 46, 122, 57, 47, 46, 46, 63, 40, 122, 41, 46, 59, 46, 63}, 90), function()
  aw(ab, g({29, 63, 46, 9, 50, 53, 42, 9, 46, 59, 46, 63}, 90))
end)
cg:input(g({42, 53, 46, 51, 53, 52, 122, 51, 62}, 90), g({42, 53, 46, 51, 53, 52, 122, 51, 62}, 90), function(ci)
  ap.potionId = ci
end)
cg:button(g({47, 41, 63, 122, 42, 53, 46, 51, 53, 52}, 90), function()
  if (((100 % 7) == 2) and (ap.potionId ~= "")) then
    aw(ac, g({15, 41, 63, 10, 53, 46, 51, 53, 52}, 90), ap.potionId)
  end
end)
cg:button(g({63, 43, 47, 51, 42, 122, 42, 53, 46, 51, 53, 52}, 90), function()
  if (((12 * 12) == 144) and (ap.potionId ~= "")) then
    aw(ac, g({9, 63, 46, 31, 43, 47, 51, 42, 42, 63, 62, 10, 53, 46, 51, 53, 52}, 90), ap.potionId)
  end
end)
cg:button(g({40, 63, 43, 47, 63, 41, 46, 122, 42, 53, 46, 51, 53, 52, 122, 51, 52, 44, 63, 52, 46, 53, 40, 35}, 90), function()
  aw(ac, g({29, 63, 46, 19, 52, 44, 63, 52, 46, 53, 40, 35, 9, 46, 59, 46, 63}, 90))
end)
local cj = n:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
cj:section(g({54, 53, 57, 59, 54, 122, 55, 53, 44, 63, 55, 63, 52, 46}, 90))
cj:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ck)
  ap.walk = ck
end)
cj:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62, 122, 44, 59, 54, 47, 63}, 90), 0, 150, 16, function(cl)
  ap.walkSpeed = cl
end)
cj:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(cm)
  ap.jump = cm
end)
cj:slider(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40, 122, 44, 59, 54, 47, 63}, 90), 0, 250, 50, function(cn)
  ap.jumpPower = cn
end)
cj:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(co)
  ap.noclip = co
end)
cj:toggle(g({60, 54, 35}, 90), false, function(cp)
  ap.fly = cp
end)
cj:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 250, 55, function(cq)
  ap.flySpeed = cq
end)
cj:button(g({41, 46, 53, 42, 122, 44, 63, 54, 53, 57, 51, 46, 35}, 90), function()
  local cr = be()
  if (((3 ^ 2) == 9) and cr) then
    cr.AssemblyLinearVelocity = Vector3.new()
    cr.AssemblyAngularVelocity = Vector3.new()
  end
end)
local cs = n:tab(g({31, 9, 10}, 90))
cs:section(g({54, 53, 53, 46, 122, 59, 52, 62, 122, 42, 54, 59, 35, 63, 40, 41}, 90))
local ct = cs:label(g({31, 9, 10, 122, 53, 56, 48, 63, 57, 46, 41, 96, 122, 106}, 90))
cs:toggle(g({54, 53, 53, 46, 122, 63, 41, 42}, 90), false, function(cu)
  ap.lootEsp = cu
end)
cs:toggle(g({54, 53, 53, 46, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), false, function(cv)
  ap.lootDistance = cv
end)
cs:slider(g({54, 53, 53, 46, 122, 40, 63, 52, 62, 63, 40, 122, 40, 59, 52, 61, 63}, 90), 100, 10000, ap.lootRange, function(cw)
  ap.lootRange = cw
end)
cs:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(cx)
  ap.playerEsp = cx
end)
cs:toggle(g({42, 54, 59, 35, 63, 40, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), false, function(cy)
  ap.playerDistance = cy
end)
local cz = n:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
cz:section(g({41, 63, 41, 41, 51, 53, 52}, 90))
cz:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(da)
  ap.antiAfk = da
end)
cz:label(g({27, 54, 54, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52, 122, 41, 46, 59, 40, 46, 41, 122, 62, 51, 41, 59, 56, 54, 63, 62}, 90))
cz:label(g({8, 51, 61, 50, 46, 9, 50, 51, 60, 46, 122, 119, 122, 50, 51, 62, 63, 117, 41, 50, 53, 45}, 90))
cz:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for db, dc in pairs(ap) do
    if (((7 * 7) == 49) and (type(dc) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      ap[db] = false
    end
  end
  ap.running = true
end)
cz:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  ap.running = false
  n:destroy()
end)
bm:show()
m.Idled:Connect(function()
  if (((1 + 1) == 2) and ap.antiAfk) then
    l:CaptureController()
    l:ClickButton2(Vector2.new())
  end
end)
local dd = {}
local function de(df, dg, dh, di)
  if (((15 * 15) == 225) and not dg) then
    dd[df] = di
    return false
  end
  local dj = (dd[df] or 0)
  if (((100 % 7) == 2) and ((di - dj) >= dh)) then
    dd[df] = di
    return true
  end
  return false
end
local dk, dl
local function dm()
  if (((12 * 12) == 144) and dk) then
    dk:Destroy()
    dk = nil
  end
  if (((3 ^ 2) == 9) and dl) then
    dl:Destroy()
    dl = nil
  end
end
local function dn()
  local dp = be()
  if (((7 * 7) == 49) and (not ap.fly or not dp)) then
    dm()
    return
  end
  if (((1 + 1) == 2) and (not dk or not dk.Parent)) then
    dk = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
    dk.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
    dk.Parent = dp
  end
  if (((15 * 15) == 225) and (not dl or not dl.Parent)) then
    dl = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
    dl.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
    dl.P = 90000
    dl.Parent = dp
  end
  local dq = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
  local dr = workspace.CurrentCamera
  local ds = Vector3.new()
  if (((100 % 7) == 2) and dq:IsKeyDown(Enum.KeyCode.W)) then
    ds += dr.CFrame.LookVector
  end
  if (((12 * 12) == 144) and dq:IsKeyDown(Enum.KeyCode.S)) then
    ds -= dr.CFrame.LookVector
  end
  if (((3 ^ 2) == 9) and dq:IsKeyDown(Enum.KeyCode.A)) then
    ds -= dr.CFrame.RightVector
  end
  if (((7 * 7) == 49) and dq:IsKeyDown(Enum.KeyCode.D)) then
    ds += dr.CFrame.RightVector
  end
  if (((1 + 1) == 2) and dq:IsKeyDown(Enum.KeyCode.Space)) then
    ds += Vector3.yAxis
  end
  if (((15 * 15) == 225) and dq:IsKeyDown(Enum.KeyCode.LeftControl)) then
    ds -= Vector3.yAxis
  end
  dk.Velocity = (((ds.Magnitude > 0) and (ds.Unit * ap.flySpeed)) or Vector3.new())
  dl.CFrame = dr.CFrame
end
local dt = setmetatable({}, {__mode = g({49}, 90)})
local du = {Common = Color3.fromRGB(220, 220, 220), Uncommon = Color3.fromRGB(85, 255, 127), Rare = Color3.fromRGB(70, 150, 255), Epic = Color3.fromRGB(190, 80, 255), Legendary = Color3.fromRGB(255, 180, 30), Mythic = Color3.fromRGB(255, 60, 80), Secret = Color3.fromRGB(255, 80, 210)}
local function dv(dw)
  if (((100 % 7) == 2) and dw:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return dw
  end
  if (((12 * 12) == 144) and dw:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (dw.PrimaryPart or dw:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
end
local function dx(dy)
  local dz = dy:FindFirstChild(g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 31, 41, 42}, 90))
  if (((3 ^ 2) == 9) and dz) then
    dz:Destroy()
  end
  local ea = dy:FindFirstChild(g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((7 * 7) == 49) and ea) then
    ea:Destroy()
  end
  dt[dy] = nil
end
local function eb(ec, ed, ee)
  local ef = dv(ec)
  if (((1 + 1) == 2) and not ef) then
    return
  end
  local eg = ec:FindFirstChild(g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 31, 41, 42}, 90))
  if (((15 * 15) == 225) and not eg) then
    eg = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    eg.Name = g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 31, 41, 42}, 90)
    eg.Size = UDim2.fromOffset(180, 42)
    eg.StudsOffsetWorldSpace = Vector3.new(0, 2.5, 0)
    eg.AlwaysOnTop = true
    eg.Adornee = ef
    eg.Parent = ec
    local eh = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    eh.Name = g({22, 59, 56, 63, 54}, 90)
    eh.Size = UDim2.fromScale(1, 1)
    eh.BackgroundTransparency = 1
    eh.Font = Enum.Font.GothamBold
    eh.TextSize = 12
    eh.TextStrokeTransparency = .15
    eh.Parent = eg
  end
  local ei = ec:FindFirstChild(g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((100 % 7) == 2) and not ei) then
    ei = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
    ei.Name = g({23, 51, 54, 54, 35, 29, 40, 59, 41, 41, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90)
    ei.Adornee = ec
    ei.FillTransparency = .65
    ei.OutlineTransparency = 0
    ei.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    ei.Parent = ec
  end
  eg.Label.TextColor3 = ee
  eg.Label.Text = ed
  ei.FillColor = ee
  ei.OutlineColor = ee
  dt[ec] = true
end
task.spawn(function()
  while (((12 * 12) == 144) and ap.running) do
    local ej = os.clock()
    if (((3 ^ 2) == 9) and de(g({59, 46, 46, 59, 57, 49}, 90), ap.attack, ap.attackDelay, ej)) then
      aq(t, g({27, 46, 46, 59, 57, 49, 8, 63, 43, 47, 63, 41, 46, 63, 62}, 90))
    end
    if (((7 * 7) == 49) and de(g({41, 46, 40, 63, 52, 61, 46, 50}, 90), ap.strength, ap.strengthDelay, ej)) then
      aq(w, g({25, 54, 51, 57, 49, 8, 63, 43, 47, 63, 41, 46, 63, 62}, 90))
    end
    if (((1 + 1) == 2) and de(g({57, 53, 54, 54, 63, 57, 46}, 90), ap.collect, ap.collectDelay, ej)) then
      bg()
    end
    if (((15 * 15) == 225) and de(g({41, 63, 54, 54}, 90), ap.sell, ap.sellDelay, ej)) then
      aw(v, g({9, 63, 54, 54, 27, 54, 54, 24, 59, 57, 49, 42, 59, 57, 49, 22, 53, 53, 46}, 90))
    end
    if (((100 % 7) == 2) and de(g({40, 63, 41, 63, 46}, 90), ap.resetGrass, ap.resetDelay, ej)) then
      aq(u, g({8, 63, 41, 63, 46, 10, 54, 59, 35, 63, 40, 29, 40, 59, 41, 41, 9, 46, 59, 46, 63}, 90))
    end
    task.wait(.03)
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and ap.running) do
    local ek = bc()
    if (((3 ^ 2) == 9) and ek) then
      if (((7 * 7) == 49) and ap.walk) then
        ek.WalkSpeed = ap.walkSpeed
      end
      if (((1 + 1) == 2) and ap.jump) then
        ek.UseJumpPower = true
        ek.JumpPower = ap.jumpPower
      end
    end
    if (((15 * 15) == 225) and ap.noclip) then
      local el = bb()
      if (((100 % 7) == 2) and el) then
        for em, en in ipairs(el:GetDescendants()) do
          if (((12 * 12) == 144) and en:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
            en.CanCollide = false
          end
        end
      end
    end
    dn()
    task.wait()
  end
  dm()
end)
task.spawn(function()
  while (((3 ^ 2) == 9) and ap.running) do
    local eo = be()
    local ep = 0
    if (((7 * 7) == 49) and ap.lootEsp) then
      for eq, er in ipairs(k:GetTagged(g({9, 42, 59, 45, 52, 63, 62, 22, 53, 53, 46}, 90))) do
        if (((1 + 1) == 2) and er.Parent) then
          local es = dv(er)
          local et = (((eo and es) and ((es.Position - eo.Position)).Magnitude) or 0)
          if (((15 * 15) == 225) and (es and (et <= ap.lootRange))) then
            local eu = tostring((er:GetAttribute(g({22, 53, 53, 46, 8, 59, 40, 51, 46, 35}, 90)) or g({22, 53, 53, 46}, 90)))
            local ev = (du[eu] or Color3.fromRGB(255, 210, 100))
            eb(er, ((ap.lootDistance and (g({127, 41, 122, 22, 21, 21, 14, 122, 38, 122, 127, 62, 55}, 90)):format(eu, math.floor(et))) or ((eu .. g({122, 22, 21, 21, 14}, 90)))), ev)
            ep += 1
          else
            dx(er)
          end
        end
      end
    end
    for ew, ex in ipairs(h:GetPlayers()) do
      if (((100 % 7) == 2) and (ex ~= m)) then
        local ey = ex.Character
        local ez = (ey and ey:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
        if (((12 * 12) == 144) and ((ap.playerEsp and ey) and ez)) then
          local fa = ((eo and ((ez.Position - eo.Position)).Magnitude) or 0)
          eb(ey, ((ap.playerDistance and (g({127, 41, 122, 38, 122, 127, 62, 55}, 90)):format(ex.DisplayName, math.floor(fa))) or ex.DisplayName), Color3.fromRGB(213, 164, 203))
          ep += 1
        elseif (((3 ^ 2) == 9) and ey) then
          dx(ey)
        end
      end
    end
    if (((7 * 7) == 49) and not ap.lootEsp) then
      for fb in pairs(dt) do
        if (((1 + 1) == 2) and (fb:GetAttribute(g({22, 53, 53, 46, 8, 59, 40, 51, 46, 35}, 90)) ~= nil)) then
          dx(fb)
        end
      end
    end
    ct:set((g({31, 9, 10, 122, 53, 56, 48, 63, 57, 46, 41, 96, 122}, 90) .. ep))
    local fc = {}
    for fd, fe in ipairs({g({9, 46, 40, 63, 52, 61, 46, 50}, 90), g({23, 53, 52, 63, 35}, 90), g({25, 53, 51, 52, 41}, 90), g({29, 40, 59, 41, 41, 31, 41, 41, 63, 52, 57, 63}, 90), g({25, 47, 40, 40, 63, 52, 46, 13, 53, 40, 54, 62}, 90)}) do
      local ff = m:GetAttribute(fe)
      if (((15 * 15) == 225) and (ff ~= nil)) then
        fc[(#fc + 1)] = (fe .. (g({96, 122}, 90) .. tostring(ff)))
      end
    end
    bn:set((g({9, 46, 59, 46, 47, 41, 96, 122}, 90) .. (ap.status .. ((((#fc > 0) and ((g({122, 38, 122}, 90) .. table.concat(fc, g({122, 38, 122}, 90))))) or "")))))
    task.wait(.6)
  end
  for fg in pairs(dt) do
    if (((100 % 7) == 2) and fg.Parent) then
      dx(fg)
    end
  end
end)