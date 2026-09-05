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
local j = game:GetService(g({25, 53, 54, 54, 63, 57, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local k = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local m = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local n = h.LocalPlayer
local o = getgenv().MillyMenu
if (((15 * 15) == 225) and not o) then
  return
end
local p = getgenv().MillyKeyboard
if (((100 % 7) == 2) and (type(p) == g({46, 59, 56, 54, 63}, 90))) then
  p.running = false
end
local q = {running = true, farm = false, teleport = true, clean = true, pickup = true, place = true, delay = .12, range = 350, cleanHits = 4, autoUpgrades = false, upgradeDelay = .7, upgrade = g({27, 54, 54}, 90), workers = false, keyWorkers = false, rebirth = false, rewards = false, factory = false, factoryBuild = false, esp = false, rareEsp = false, shinyEsp = false, hugeEsp = false, espRange = 1500, walk = false, ws = 24, jump = false, jp = 60, noclip = false, infJump = false, afk = false, prompt = false, status = g({40, 63, 59, 62, 35}, 90), cleaned = 0, picked = 0, placed = 0}
getgenv().MillyKeyboard = q
local function r()
  return n.Character
end
local function s()
  local t = r()
  return (t and t:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function u()
  local v = r()
  return (v and v:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function w(x)
  local y, z = pcall(function()
    return require(i:WaitForChild(g({10, 59, 57, 49, 59, 61, 63, 41}, 90)):WaitForChild(g({24, 40, 51, 62, 61, 63, 20, 63, 46, 104}, 90))).ReferenceBridge(x)
  end)
  return (y and z)
end
local aa = {}
local function ab(ac, ad)
  local ae = aa[ac]
  if (((12 * 12) == 144) and not ae) then
    ae = w(ac)
    aa[ac] = ae
  end
  if (((3 ^ 2) == 9) and ae) then
    return pcall(function()
      ae:Fire((ad or {}))
    end)
  end
  return false
end
local function af(ag)
  if (((7 * 7) == 49) and not ag) then
    return
  end
  if (((1 + 1) == 2) and ag:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return ag
  end
  if (((15 * 15) == 225) and ag:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (ag.PrimaryPart or ag:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
end
local function ah(ai)
  local aj = s()
  local ak = af(ai)
  return (((aj and ak) and ((ak.Position - aj.Position)).Magnitude) or math.huge)
end
local function al(am)
  local an = {}
  local ao = {}
  for ap, aq in ipairs(am) do
    for ar, as in ipairs(j:GetTagged(aq)) do
      if (((100 % 7) == 2) and (as.Parent and not ao[as])) then
        ao[as] = true
        table.insert(an, as)
      end
    end
  end
  return an
end
local function at(au)
  local av = ((au.Name .. (g({122}, 90) .. (tostring(au:GetAttribute(g({14, 51, 63, 40}, 90))) .. (g({122}, 90) .. tostring(au:GetAttribute(g({8, 59, 40, 51, 46, 35}, 90)))))))):lower()
  return ((((((av:find(g({40, 59, 40, 63}, 90)) or av:find(g({63, 42, 51, 57}, 90))) or av:find(g({54, 63, 61, 63, 52, 62}, 90))) or av:find(g({55, 35, 46, 50}, 90))) or av:find(g({41, 63, 57, 40, 63, 46}, 90))) or av:find(g({50, 47, 61, 63}, 90))) or (au:GetAttribute(g({9, 50, 51, 52, 35}, 90)) == true))
end
local function aw(ax, ay)
  local az, ba
  for bb, bc in ipairs(ax) do
    local bd = ah(bc)
    if (((12 * 12) == 144) and ((bd <= ay) and ((not ba or (bd < ba))))) then
      az = bc
      ba = bd
    end
  end
  return az, ba
end
local function be(bf)
  local bg = s()
  local bh = af(bf)
  if (((3 ^ 2) == 9) and (bg and bh)) then
    bg.CFrame = (bh.CFrame * CFrame.new(0, 2.5, 5))
    bg.AssemblyLinearVelocity = Vector3.new()
    task.wait(.08)
    return true
  end
end
local function bi(bj)
  if (((7 * 7) == 49) and (not bj or not bj.Parent)) then
    return false
  end
  if (((1 + 1) == 2) and (q.teleport and (ah(bj) > 13))) then
    be(bj)
  end
  local bk = false
  for bl = 1, q.cleanHits do
    local bm = ab(g({25, 54, 63, 59, 52, 25, 54, 51, 57, 49}, 90), {Cap = bj})
    bk = (bm or bk)
    task.wait(.105)
  end
  if (((15 * 15) == 225) and not bk) then
    ab(g({25, 54, 63, 59, 52, 9, 63, 41, 41, 51, 53, 52}, 90), {Action = g({24, 63, 61, 51, 52}, 90), Cap = bj})
    for bn = 1, math.max(3, q.cleanHits) do
      ab(g({25, 54, 63, 59, 52, 9, 63, 41, 41, 51, 53, 52}, 90), {Action = g({9, 57, 40, 47, 56}, 90)})
      task.wait(.13)
    end
    ab(g({25, 54, 63, 59, 52, 9, 63, 41, 41, 51, 53, 52}, 90), {Action = g({31, 52, 62}, 90)})
    bk = true
  end
  if (((100 % 7) == 2) and bk) then
    q.cleaned += 1
    q.status = (g({57, 54, 63, 59, 52, 63, 62, 96, 122}, 90) .. bj.Name)
  end
  return bk
end
local function bo(bp)
  local bq = {}
  local br = s()
  if (((12 * 12) == 144) and not br) then
    return bq
  end
  for bs, bt in ipairs(workspace:GetDescendants()) do
    if (((3 ^ 2) == 9) and (bt:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and bt.Enabled)) then
      local bu = bt.Parent
      local bv = (bu and (((bu:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and bu) or bu:FindFirstAncestorWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))))
      if (((7 * 7) == 49) and (bv and (((bv.Position - br.Position)).Magnitude <= q.range))) then
        local bw = ((bt.Name .. (g({122}, 90) .. (bt.ActionText .. (g({122}, 90) .. (bt.ObjectText .. (g({122}, 90) .. (((bu and bu.Name) or ""))))))))):lower()
        if (((1 + 1) == 2) and (not bp or bw:find(bp, 1, true))) then
          table.insert(bq, bt)
        end
      end
    end
  end
  return bq
end
local function bx(by)
  if (((15 * 15) == 225) and (not by or not by.Parent)) then
    return false
  end
  local bz = ((by.Parent:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and by.Parent) or by.Parent:FindFirstAncestorWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))
  if (((100 % 7) == 2) and ((q.teleport and bz) and (ah(bz) > by.MaxActivationDistance))) then
    be(bz)
  end
  pcall(function()
    by.HoldDuration = 0
    if (((12 * 12) == 144) and fireproximityprompt) then
      fireproximityprompt(by)
    else
      local ca = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 19, 52, 42, 47, 46, 23, 59, 52, 59, 61, 63, 40}, 90))
      ca:SendKeyEvent(true, Enum.KeyCode.E, false, game)
      task.wait(.05)
      ca:SendKeyEvent(false, Enum.KeyCode.E, false, game)
    end
  end)
  return true
end
local function cb()
  local cc = r()
  local cd = n:FindFirstChild(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))
  return (((cc and ((cc:FindFirstChild(g({17, 63, 35, 57, 59, 42}, 90)) or cc:FindFirstChild(g({29, 53, 54, 62, 63, 52, 122, 17, 63, 35, 57, 59, 42}, 90)))))) or ((cd and ((cd:FindFirstChild(g({17, 63, 35, 57, 59, 42}, 90)) or cd:FindFirstChild(g({29, 53, 54, 62, 63, 52, 122, 17, 63, 35, 57, 59, 42}, 90)))))))
end
local function ce()
  local cf = {g({42, 51, 57, 49}, 90), g({46, 59, 49, 63}, 90), g({57, 59, 40, 40, 35}, 90), g({61, 40, 59, 56}, 90), g({49, 63, 35, 57, 59, 42}, 90)}
  for cg, ch in ipairs(cf) do
    local ci = bo(ch)
    if (((3 ^ 2) == 9) and (#ci > 0)) then
      bx(ci[1])
      q.picked += 1
      q.status = g({42, 51, 57, 49, 63, 62, 122, 49, 63, 35, 57, 59, 42}, 90)
      task.wait(.2)
      return true
    end
  end
  local cj = aw(al({g({25, 54, 63, 59, 52, 63, 62}, 90)}), q.range)
  if (((7 * 7) == 49) and cj) then
    local ck = af(cj)
    if (((1 + 1) == 2) and ck) then
      be(ck)
      for cl, cm in ipairs(cj:GetDescendants()) do
        if (((15 * 15) == 225) and cm:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
          bx(cm)
          q.picked += 1
          return true
        end
      end
    end
  end
  return false
end
local function cn()
  local co = {g({42, 54, 59, 57, 63}, 90), g({41, 54, 53, 46}, 90), g({49, 63, 35, 56, 53, 59, 40, 62}, 90)}
  for cp, cq in ipairs(co) do
    local cr = bo(cq)
    if (((100 % 7) == 2) and (#cr > 0)) then
      bx(cr[1])
      q.placed += 1
      q.status = g({42, 54, 59, 57, 63, 62, 122, 49, 63, 35, 57, 59, 42}, 90)
      task.wait(.25)
      return true
    end
  end
  return false
end
local function cs()
  if (((12 * 12) == 144) and (cb() and q.place)) then
    if (((3 ^ 2) == 9) and cn()) then
      return
    end
  end
  if (((7 * 7) == 49) and q.clean) then
    local ct = aw(al({g({25, 54, 63, 59, 52, 59, 56, 54, 63}, 90)}), q.range)
    if (((1 + 1) == 2) and ct) then
      bi(ct)
      return
    end
  end
  if (((15 * 15) == 225) and (q.pickup and ce())) then
    return
  end
  if (((100 % 7) == 2) and q.place) then
    cn()
  end
end
local cu = o
local cv = cu:tab(g({27, 15, 14, 21, 28, 27, 8, 23}, 90))
cv:section(g({49, 63, 35, 56, 53, 59, 40, 62, 122, 57, 54, 63, 59, 52}, 90))
local cw = cv:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
cv:toggle(g({55, 59, 41, 46, 63, 40, 122, 59, 47, 46, 53, 60, 59, 40, 55}, 90), false, function(cx)
  q.farm = cx
end)
cv:toggle(g({57, 54, 63, 59, 52, 122, 49, 63, 35, 57, 59, 42, 41}, 90), false, function(cy)
  q.clean = cy
end)
cv:toggle(g({42, 51, 57, 49, 122, 47, 42, 122, 57, 54, 63, 59, 52, 63, 62, 122, 57, 59, 42, 41}, 90), false, function(cz)
  q.pickup = cz
end)
cv:toggle(g({42, 54, 59, 57, 63, 122, 57, 59, 42, 41, 122, 53, 52, 122, 49, 63, 35, 56, 53, 59, 40, 62}, 90), false, function(da)
  q.place = da
end)
cv:toggle(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 56, 63, 46, 45, 63, 63, 52, 122, 46, 59, 40, 61, 63, 46, 41}, 90), false, function(db)
  q.teleport = db
end)
cv:slider(g({60, 59, 40, 55, 122, 40, 59, 52, 61, 63}, 90), 20, 5000, q.range, function(dc)
  q.range = dc
end)
cv:slider(g({59, 57, 46, 51, 53, 52, 122, 62, 63, 54, 59, 35}, 90), .05, 2, q.delay, function(dd)
  q.delay = dd
end)
cv:slider(g({57, 54, 63, 59, 52, 122, 50, 51, 46, 41}, 90), 3, 12, q.cleanHits, function(de)
  q.cleanHits = math.floor(de)
end)
cv:button(g({57, 54, 63, 59, 52, 122, 52, 63, 59, 40, 63, 41, 46, 122, 53, 52, 57, 63}, 90), function()
  local df = aw(al({g({25, 54, 63, 59, 52, 59, 56, 54, 63}, 90)}), q.range)
  if (((12 * 12) == 144) and df) then
    bi(df)
  else
    q.status = g({52, 53, 122, 57, 54, 63, 59, 52, 59, 56, 54, 63, 122, 49, 63, 35, 57, 59, 42}, 90)
  end
end)
cv:button(g({42, 51, 57, 49, 122, 47, 42, 122, 53, 52, 57, 63}, 90), ce)
cv:button(g({42, 54, 59, 57, 63, 122, 53, 52, 57, 63}, 90), cn)
local dg = cu:tab(g({10, 8, 21, 29, 8, 31, 9, 9}, 90))
dg:section(g({59, 47, 46, 53, 55, 59, 46, 51, 57, 122, 42, 47, 40, 57, 50, 59, 41, 63, 41}, 90))
dg:toggle(g({59, 47, 46, 53, 122, 47, 42, 61, 40, 59, 62, 63, 41}, 90), false, function(dh)
  q.autoUpgrades = dh
end)
dg:slider(g({42, 47, 40, 57, 50, 59, 41, 63, 122, 62, 63, 54, 59, 35}, 90), .2, 5, q.upgradeDelay, function(di)
  q.upgradeDelay = di
end)
dg:button(g({56, 47, 35, 122, 41, 42, 63, 63, 62}, 90), function()
  ab(g({15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({9, 42, 63, 63, 62}, 90)})
end)
dg:button(g({56, 47, 35, 122, 42, 40, 63, 41, 41, 122, 40, 59, 62, 51, 47, 41}, 90), function()
  ab(g({15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({8, 59, 62, 51, 47, 41}, 90)})
end)
dg:button(g({56, 47, 35, 122, 45, 53, 40, 49, 63, 40, 122, 41, 42, 63, 63, 62}, 90), function()
  ab(g({15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({13, 53, 40, 49, 63, 40}, 90)})
end)
dg:button(g({56, 47, 35, 122, 41, 53, 59, 42, 122, 57, 59, 42, 59, 57, 51, 46, 35}, 90), function()
  ab(g({15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({9, 53, 59, 42}, 90)})
end)
dg:button(g({56, 47, 35, 122, 57, 54, 63, 59, 52, 122, 42, 53, 45, 63, 40}, 90), function()
  ab(g({17, 63, 35, 57, 59, 42, 15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({25, 54, 63, 59, 52}, 90)})
end)
dg:button(g({56, 47, 35, 122, 41, 50, 51, 52, 35, 122, 54, 47, 57, 49}, 90), function()
  ab(g({17, 63, 35, 57, 59, 42, 15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({9, 50, 51, 52, 35}, 90)})
end)
dg:toggle(g({59, 47, 46, 53, 122, 50, 51, 40, 63, 122, 45, 53, 40, 49, 63, 40, 41}, 90), false, function(dj)
  q.workers = dj
end)
dg:toggle(g({59, 47, 46, 53, 122, 49, 63, 35, 57, 59, 42, 122, 45, 53, 40, 49, 63, 40, 41}, 90), false, function(dk)
  q.keyWorkers = dk
end)
dg:toggle(g({59, 47, 46, 53, 122, 40, 63, 56, 51, 40, 46, 50}, 90), false, function(dl)
  q.rebirth = dl
end)
dg:toggle(g({59, 47, 46, 53, 122, 60, 40, 63, 63, 122, 40, 63, 45, 59, 40, 62, 41}, 90), false, function(dm)
  q.rewards = dm
end)
local dn = cu:tab(g({28, 27, 25, 14, 21, 8, 3}, 90))
dn:section(g({60, 59, 57, 46, 53, 40, 35, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52}, 90))
dn:toggle(g({59, 47, 46, 53, 122, 47, 52, 54, 53, 57, 49, 122, 117, 122, 63, 34, 42, 59, 52, 62}, 90), false, function(dp)
  q.factory = dp
end)
dn:toggle(g({59, 47, 46, 53, 122, 56, 47, 51, 54, 62}, 90), false, function(dq)
  q.factoryBuild = dq
end)
dn:button(g({47, 52, 54, 53, 57, 49, 122, 60, 59, 57, 46, 53, 40, 35}, 90), function()
  ab(g({28, 59, 57, 46, 53, 40, 35, 15, 52, 54, 53, 57, 49}, 90), {Action = g({24, 47, 35}, 90)})
end)
dn:button(g({56, 47, 35, 122, 35, 59, 40, 62, 122, 54, 59, 35, 63, 40}, 90), function()
  ab(g({28, 59, 57, 46, 53, 40, 35, 15, 52, 54, 53, 57, 49}, 90), {Action = g({24, 47, 35, 22, 59, 35, 63, 40}, 90)})
end)
dn:button(g({46, 53, 61, 61, 54, 63, 122, 60, 59, 57, 46, 53, 40, 35}, 90), function()
  ab(g({28, 59, 57, 46, 53, 40, 35, 15, 52, 54, 53, 57, 49}, 90), {Action = g({14, 53, 61, 61, 54, 63}, 90)})
end)
dn:button(g({56, 47, 51, 54, 62, 122, 52, 63, 34, 46, 122, 41, 46, 63, 42}, 90), function()
  ab(g({28, 59, 57, 46, 53, 40, 35, 24, 47, 51, 54, 62}, 90), {Action = g({24, 47, 51, 54, 62}, 90)})
end)
dn:button(g({57, 53, 54, 54, 63, 57, 46, 122, 52, 63, 59, 40, 56, 35, 122, 60, 59, 57, 46, 53, 40, 35, 122, 42, 40, 53, 55, 42, 46, 41}, 90), function()
  for dr, ds in ipairs(bo(g({57, 53, 54, 54, 63, 57, 46}, 90))) do
    bx(ds)
  end
end)
local dt = cu:tab(g({31, 9, 10}, 90))
dt:section(g({49, 63, 35, 57, 59, 42, 122, 44, 51, 41, 47, 59, 54, 41}, 90))
dt:toggle(g({59, 54, 54, 122, 49, 63, 35, 57, 59, 42, 122, 63, 41, 42}, 90), false, function(du)
  q.esp = du
end)
dt:toggle(g({40, 59, 40, 63, 122, 53, 52, 54, 35}, 90), false, function(dv)
  q.rareEsp = dv
end)
dt:toggle(g({41, 50, 51, 52, 35, 122, 63, 41, 42}, 90), false, function(dw)
  q.shinyEsp = dw
end)
dt:toggle(g({50, 47, 61, 63, 122, 63, 41, 42}, 90), false, function(dx)
  q.hugeEsp = dx
end)
dt:slider(g({63, 41, 42, 122, 40, 59, 52, 61, 63}, 90), 50, 10000, q.espRange, function(dy)
  q.espRange = dy
end)
local dz = cu:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
dz:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ea)
  q.walk = ea
end)
dz:slider(g({41, 42, 63, 63, 62}, 90), 16, 250, q.ws, function(eb)
  q.ws = eb
end)
dz:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ec)
  q.jump = ec
end)
dz:slider(g({48, 47, 55, 42}, 90), 50, 300, q.jp, function(ed)
  q.jp = ed
end)
dz:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(ee)
  q.noclip = ee
end)
dz:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(ef)
  q.infJump = ef
end)
local eg = cu:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
eg:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(eh)
  q.prompt = eh
end)
eg:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(ei)
  q.afk = ei
end)
eg:label(g({59, 54, 54, 122, 60, 47, 52, 57, 46, 51, 53, 52, 41, 122, 41, 46, 59, 40, 46, 122, 21, 28, 28}, 90))
eg:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for ej, ek in ipairs({g({60, 59, 40, 55}, 90), g({59, 47, 46, 53, 15, 42, 61, 40, 59, 62, 63, 41}, 90), g({45, 53, 40, 49, 63, 40, 41}, 90), g({49, 63, 35, 13, 53, 40, 49, 63, 40, 41}, 90), g({40, 63, 56, 51, 40, 46, 50}, 90), g({40, 63, 45, 59, 40, 62, 41}, 90), g({60, 59, 57, 46, 53, 40, 35}, 90), g({60, 59, 57, 46, 53, 40, 35, 24, 47, 51, 54, 62}, 90), g({63, 41, 42}, 90), g({40, 59, 40, 63, 31, 41, 42}, 90), g({41, 50, 51, 52, 35, 31, 41, 42}, 90), g({50, 47, 61, 63, 31, 41, 42}, 90), g({45, 59, 54, 49}, 90), g({48, 47, 55, 42}, 90), g({52, 53, 57, 54, 51, 42}, 90), g({42, 40, 53, 55, 42, 46}, 90)}) do
    q[ek] = false
  end
end)
eg:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  cu:destroy()
end)
cv:show()
n.Idled:Connect(function()
  if (((3 ^ 2) == 9) and q.afk) then
    m:CaptureController()
    m:ClickButton2(Vector2.new())
  end
end)
l.JumpRequest:Connect(function()
  if (((7 * 7) == 49) and q.infJump) then
    local el = u()
    if (((1 + 1) == 2) and el) then
      el:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local em = {}
local function en(eo, ep, eq)
  local er = os.clock()
  if (((15 * 15) == 225) and not ep) then
    em[eo] = er
    return false
  end
  if (((100 % 7) == 2) and ((er - ((em[eo] or 0))) >= eq)) then
    em[eo] = er
    return true
  end
  return false
end
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    if (((3 ^ 2) == 9) and en(g({60, 59, 40, 55}, 90), q.farm, q.delay)) then
      pcall(cs)
    end
    if (((7 * 7) == 49) and en(g({47, 42}, 90), q.autoUpgrades, q.upgradeDelay)) then
      for es, et in ipairs({g({9, 42, 63, 63, 62}, 90), g({8, 59, 62, 51, 47, 41}, 90), g({13, 53, 40, 49, 63, 40}, 90), g({9, 53, 59, 42}, 90)}) do
        ab(g({15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = et})
      end
      ab(g({17, 63, 35, 57, 59, 42, 15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({25, 54, 63, 59, 52}, 90)})
      ab(g({17, 63, 35, 57, 59, 42, 15, 42, 61, 40, 59, 62, 63, 41}, 90), {Action = g({24, 47, 35}, 90), Id = g({9, 50, 51, 52, 35}, 90)})
    end
    if (((1 + 1) == 2) and en(g({45, 53, 40, 49, 63, 40, 41}, 90), q.workers, 2)) then
      ab(g({13, 53, 40, 49, 63, 40, 18, 51, 40, 63}, 90), {Action = g({24, 47, 35}, 90)})
    end
    if (((15 * 15) == 225) and en(g({49, 63, 35, 45, 53, 40, 49, 63, 40, 41}, 90), q.keyWorkers, 2)) then
      ab(g({17, 63, 35, 57, 59, 42, 13, 53, 40, 49, 63, 40, 18, 51, 40, 63}, 90), {Action = g({24, 47, 35}, 90)})
    end
    if (((100 % 7) == 2) and en(g({40, 63, 56, 51, 40, 46, 50}, 90), q.rebirth, 2)) then
      ab(g({8, 63, 56, 51, 40, 46, 50}, 90), {})
    end
    if (((12 * 12) == 144) and en(g({40, 63, 45, 59, 40, 62, 41}, 90), q.rewards, 8)) then
      ab(g({28, 40, 63, 63, 19, 46, 63, 55, 25, 54, 59, 51, 55}, 90), {})
      ab(g({25, 53, 55, 55, 47, 52, 51, 46, 35, 8, 63, 45, 59, 40, 62, 25, 54, 59, 51, 55}, 90), {})
      ab(g({21, 60, 60, 54, 51, 52, 63, 8, 63, 45, 59, 40, 62}, 90), {Action = g({25, 54, 59, 51, 55}, 90)})
    end
    if (((3 ^ 2) == 9) and en(g({60, 59, 57, 46, 53, 40, 35}, 90), q.factory, 2)) then
      ab(g({28, 59, 57, 46, 53, 40, 35, 15, 52, 54, 53, 57, 49}, 90), {Action = g({24, 47, 35}, 90)})
      ab(g({28, 59, 57, 46, 53, 40, 35, 15, 52, 54, 53, 57, 49}, 90), {Action = g({24, 47, 35, 22, 59, 35, 63, 40}, 90)})
    end
    if (((7 * 7) == 49) and en(g({60, 59, 57, 46, 53, 40, 35, 24, 47, 51, 54, 62}, 90), q.factoryBuild, 1)) then
      ab(g({28, 59, 57, 46, 53, 40, 35, 24, 47, 51, 54, 62}, 90), {Action = g({24, 47, 51, 54, 62}, 90)})
      for eu, ev in ipairs(bo(g({57, 53, 54, 54, 63, 57, 46}, 90))) do
        bx(ev)
      end
    end
    cw:set((g({41, 46, 59, 46, 47, 41, 96, 122, 127, 41, 122, 38, 122, 57, 54, 63, 59, 52, 122, 127, 62, 122, 38, 122, 42, 51, 57, 49, 122, 127, 62, 122, 38, 122, 42, 54, 59, 57, 63, 122, 127, 62}, 90)):format(q.status, q.cleaned, q.picked, q.placed))
    task.wait(.03)
  end
end)
local ew = setmetatable({}, {__mode = g({49}, 90)})
local function ex(ey, ez)
  local fa = ey:FindFirstChild(g({23, 51, 54, 54, 35, 17, 63, 35, 31, 9, 10}, 90))
  if (((1 + 1) == 2) and not ez) then
    if (((15 * 15) == 225) and fa) then
      fa:Destroy()
    end
    ew[ey] = nil
    return
  end
  local fb = af(ey)
  if (((100 % 7) == 2) and not fb) then
    return
  end
  if (((12 * 12) == 144) and not fa) then
    fa = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    fa.Name = g({23, 51, 54, 54, 35, 17, 63, 35, 31, 9, 10}, 90)
    fa.Size = UDim2.fromOffset(180, 34)
    fa.AlwaysOnTop = true
    fa.StudsOffsetWorldSpace = Vector3.new(0, 2.5, 0)
    fa.Adornee = fb
    fa.Parent = ey
    local fc = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    fc.Name = g({22, 59, 56, 63, 54}, 90)
    fc.Size = UDim2.fromScale(1, 1)
    fc.BackgroundTransparency = 1
    fc.Font = Enum.Font.GothamBold
    fc.TextSize = 13
    fc.TextStrokeTransparency = .2
    fc.Parent = fa
  end
  local fd = (ey:GetAttribute(g({9, 50, 51, 52, 35}, 90)) == true)
  local fe = (ey.Name:lower():find(g({50, 47, 61, 63}, 90)) ~= nil)
  fa.Label.Text = ((((fd and g({10098, 122}, 90)) or "")) .. (ey.Name .. (g({122, 38, 122}, 90) .. (math.floor(ah(ey)) .. g({55}, 90)))))
  fa.Label.TextColor3 = ((((fe and Color3.fromRGB(255, 80, 255)) or (fd and Color3.fromRGB(255, 220, 40))) or (at(ey) and Color3.fromRGB(90, 190, 255))) or Color3.fromRGB(235, 235, 235))
  ew[ey] = true
end
task.spawn(function()
  while (((3 ^ 2) == 9) and q.running) do
    if (((7 * 7) == 49) and (((q.esp or q.rareEsp) or q.shinyEsp) or q.hugeEsp)) then
      local ff = al({g({25, 54, 63, 59, 52, 59, 56, 54, 63}, 90), g({25, 54, 63, 59, 52, 63, 62}, 90), g({10, 54, 59, 57, 63, 62}, 90)})
      local fg = {}
      for fh, fi in ipairs(ff) do
        fg[fi] = true
        local fj = ah(fi)
        local fk = (fi:GetAttribute(g({9, 50, 51, 52, 35}, 90)) == true)
        local fl = (fi.Name:lower():find(g({50, 47, 61, 63}, 90)) ~= nil)
        local fm = ((fj <= q.espRange) and ((((q.esp or ((q.rareEsp and at(fi)))) or ((q.shinyEsp and fk))) or ((q.hugeEsp and fl)))))
        ex(fi, fm)
      end
      for fn in pairs(ew) do
        if (((1 + 1) == 2) and (not fg[fn] and fn.Parent)) then
          ex(fn, false)
        end
      end
    else
      for fo in pairs(ew) do
        if (((15 * 15) == 225) and fo.Parent) then
          ex(fo, false)
        end
      end
    end
    task.wait(.75)
  end
  for fp in pairs(ew) do
    if (((100 % 7) == 2) and fp.Parent) then
      ex(fp, false)
    end
  end
end)
k.Stepped:Connect(function()
  if (((12 * 12) == 144) and not q.running) then
    return
  end
  local fq = u()
  if (((3 ^ 2) == 9) and fq) then
    if (((7 * 7) == 49) and q.walk) then
      fq.WalkSpeed = q.ws
    end
    if (((1 + 1) == 2) and q.jump) then
      fq.UseJumpPower = true
      fq.JumpPower = q.jp
    end
  end
  if (((15 * 15) == 225) and (q.noclip and r())) then
    for fr, fs in ipairs(r():GetDescendants()) do
      if (((100 % 7) == 2) and fs:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        fs.CanCollide = false
      end
    end
  end
  if (((12 * 12) == 144) and q.prompt) then
    for ft, fu in ipairs(workspace:GetDescendants()) do
      if (((3 ^ 2) == 9) and fu:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
        fu.HoldDuration = 0
        fu.MaxActivationDistance = 50
      end
    end
  end
end)