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
local Players = game:GetService(g({10, 54, 59, 35, 63, 40, 41}, 90))
local h = game:GetService(g({8, 63, 42, 54, 51, 57, 59, 46, 63, 62, 9, 46, 53, 40, 59, 61, 63}, 90))
local i = game:GetService(g({14, 45, 63, 63, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local j = game:GetService(g({13, 53, 40, 49, 41, 42, 59, 57, 63}, 90))
local k = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local m = Players.LocalPlayer
local n = h:WaitForChild(g({8, 63, 55, 53, 46, 63, 41}, 90))
local o = n:WaitForChild(g({25, 53, 54, 54, 63, 57, 46, 22, 63, 59, 60}, 90))
local p = n:WaitForChild(g({31, 55, 42, 46, 35, 24, 59, 57, 49, 42, 59, 57, 49}, 90))
local q = n:WaitForChild(g({24, 47, 35, 15, 42, 61, 40, 59, 62, 63}, 90))
local r = n:WaitForChild(g({24, 47, 35, 24, 59, 61, 15, 42, 61, 40, 59, 62, 63}, 90))
local s = n:WaitForChild(g({22, 63, 59, 60, 23, 53, 46, 51, 53, 52}, 90))
local t = n:WaitForChild(g({12, 63, 52, 46, 31, 59, 46}, 90))
local u, v = pcall(require, h:WaitForChild(g({22, 63, 59, 60, 20, 63, 46}, 90)))
local w = {enabled = true, paused = true, batchSize = 1000, collectDelay = 0.01, sellDelay = 0.1, pullTime = 0, autoSell = false, sellAtPercent = 0.9, autoUpgrade = false, ventMode = false, ventOffset = 3.2, zoneBypass = false, serverValidatedMode = false, collectRadius = 7, serverAckTimeout = 0.75, antiAfk = false, sellNow = false, rareEsp = false, rareEspDistance = false, rareEspRange = 2500}
getgenv().LeafAutoFarm = w
local x
local y
local function z()
  local aa = getgenv().MillyMenu
  if (((15 * 15) == 225) and not aa) then
    return
  end
  local ab = aa:tab(g({28, 27, 8, 23}, 90))
  ab:section(g({54, 63, 59, 60, 122, 59, 47, 46, 53, 60, 59, 40, 55}, 90))
  local ac = ab:label(g({22, 63, 59, 44, 63, 41, 96, 122, 54, 53, 59, 62, 51, 52, 61, 116, 116, 116}, 90))
  ab:toggle(g({59, 47, 46, 53, 60, 59, 40, 55}, 90), not w.paused, function(ad)
    w.paused = not ad
  end)
  ab:toggle(g({41, 63, 40, 44, 63, 40, 122, 44, 59, 54, 51, 62, 59, 46, 63, 62}, 90), w.serverValidatedMode, function(ae)
    w.serverValidatedMode = ae
  end)
  ab:slider(g({56, 59, 46, 57, 50, 122, 41, 51, 32, 63}, 90), 1, 1000, w.batchSize, function(af)
    w.batchSize = math.floor(af)
  end)
  ab:slider(g({57, 53, 54, 54, 63, 57, 46, 122, 62, 63, 54, 59, 35}, 90), 0, 0.5, w.collectDelay, function(ag)
    w.collectDelay = ag
  end)
  ab:slider(g({57, 53, 54, 54, 63, 57, 46, 122, 40, 59, 62, 51, 47, 41}, 90), 1, 30, w.collectRadius, function(ah)
    w.collectRadius = ah
  end)
  ab:slider(g({41, 63, 40, 44, 63, 40, 122, 46, 51, 55, 63, 53, 47, 46}, 90), 0.1, 3, w.serverAckTimeout, function(ai)
    w.serverAckTimeout = ai
  end)
  local aj = aa:tab(g({12, 31, 20, 14}, 90))
  aj:section(g({44, 63, 52, 46, 122, 57, 53, 52, 46, 40, 53, 54, 41}, 90))
  aj:toggle(g({44, 63, 52, 46, 122, 55, 53, 62, 63}, 90), w.ventMode, function(ak)
    w.ventMode = ak
  end)
  aj:slider(g({44, 63, 52, 46, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 1, 12, w.ventOffset, function(al)
    w.ventOffset = al
  end)
  aj:slider(g({44, 51, 41, 47, 59, 54, 122, 42, 47, 54, 54, 122, 46, 51, 55, 63}, 90), 0, 2, w.pullTime, function(am)
    w.pullTime = am
  end)
  local an = aa:tab(g({27, 15, 14, 21, 23, 27, 14, 19, 21, 20}, 90))
  an:section(g({41, 63, 54, 54, 122, 59, 52, 62, 122, 47, 42, 61, 40, 59, 62, 63, 41}, 90))
  an:toggle(g({59, 47, 46, 53, 122, 41, 63, 54, 54}, 90), w.autoSell, function(ao)
    w.autoSell = ao
  end)
  an:slider(g({41, 63, 54, 54, 122, 42, 63, 40, 57, 63, 52, 46}, 90), 10, 100, (w.sellAtPercent * 100), function(ap)
    w.sellAtPercent = (ap / 100)
  end)
  an:slider(g({41, 63, 54, 54, 122, 62, 63, 54, 59, 35}, 90), 0, 2, w.sellDelay, function(aq)
    w.sellDelay = aq
  end)
  an:toggle(g({59, 47, 46, 53, 122, 47, 42, 61, 40, 59, 62, 63}, 90), w.autoUpgrade, function(ar)
    w.autoUpgrade = ar
  end)
  an:toggle(g({47, 52, 54, 53, 57, 49, 122, 32, 53, 52, 63, 41}, 90), w.zoneBypass, function(as)
    w.zoneBypass = as
  end)
  an:button(g({41, 63, 54, 54, 122, 56, 59, 57, 49, 42, 59, 57, 49, 122, 52, 53, 45}, 90), function()
    w.sellNow = true
  end)
  local at = aa:tab(g({31, 9, 10}, 90))
  at:section(g({40, 59, 40, 63, 122, 54, 63, 59, 44, 63, 41}, 90))
  y = at:label(g({8, 59, 40, 63, 122, 54, 63, 59, 44, 63, 41, 96, 122, 41, 57, 59, 52, 52, 51, 52, 61, 116, 116, 116}, 90))
  at:toggle(g({40, 59, 40, 63, 122, 54, 63, 59, 60, 122, 63, 41, 42}, 90), w.rareEsp, function(au)
    w.rareEsp = au
  end)
  at:toggle(g({41, 50, 53, 45, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), w.rareEspDistance, function(av)
    w.rareEspDistance = av
  end)
  at:slider(g({40, 63, 52, 62, 63, 40, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 5000, w.rareEspRange, function(aw)
    w.rareEspRange = aw
  end)
  local ax = aa:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
  ax:section(g({41, 63, 41, 41, 51, 53, 52}, 90))
  ax:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), w.antiAfk, function(ay)
    w.antiAfk = ay
  end)
  ax:label(g({8, 51, 61, 50, 46, 9, 50, 51, 60, 46, 122, 119, 122, 50, 51, 62, 63, 117, 41, 50, 53, 45, 122, 55, 63, 52, 47}, 90))
  ax:button(g({41, 46, 53, 42, 122, 59, 52, 62, 122, 47, 52, 54, 53, 59, 62}, 90), function()
    w.enabled = false
    aa:destroy()
  end)
  ab:show()
  task.spawn(function()
    while (((100 % 7) == 2) and (aa.gui.Parent and w.enabled)) do
      ac:set((g({22, 63, 59, 44, 63, 41, 96, 122, 127, 41, 122, 117, 122, 127, 41, 122, 38, 122, 45, 53, 40, 54, 62, 96, 122, 127, 62}, 90)):format(tostring((m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)), tostring((m:GetAttribute(g({22, 63, 59, 60, 25, 59, 42, 59, 57, 51, 46, 35}, 90)) or 25)), #x:GetChildren()))
      task.wait(0.2)
    end
  end)
end
x = j:WaitForChild(g({22, 63, 59, 44, 63, 41}, 90))
z()
m.Idled:Connect(function()
  if (((12 * 12) == 144) and w.antiAfk) then
    l:CaptureController()
    l:ClickButton2(Vector2.new())
  end
end)
local function az(ba)
  if (((3 ^ 2) == 9) and (debug and (type(debug.getupvalues) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    return debug.getupvalues(ba)
  end
  if (((7 * 7) == 49) and (type(getupvalues) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
    return getupvalues(ba)
  end
  error(g({14, 50, 51, 41, 122, 63, 34, 63, 57, 47, 46, 53, 40, 122, 62, 53, 63, 41, 122, 52, 53, 46, 122, 63, 34, 42, 53, 41, 63, 122, 62, 63, 56, 47, 61, 116, 61, 63, 46, 47, 42, 44, 59, 54, 47, 63, 41, 117, 61, 63, 46, 47, 42, 44, 59, 54, 47, 63, 41}, 90))
end
local function bb(bc)
  if (((1 + 1) == 2) and (type(bc) ~= g({46, 59, 56, 54, 63}, 90))) then
    return false
  end
  for bd, be in pairs(bc) do
    if (((15 * 15) == 225) and (((typeof(bd) == g({19, 52, 41, 46, 59, 52, 57, 63}, 90)) and (bd.Parent == x)) and (type(be) == g({52, 47, 55, 56, 63, 40}, 90)))) then
      return true
    end
  end
  return false
end
local function bf()
  local bg = os.clock()
  if (((100 % 7) == 2) and (type(getconnections) ~= g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
    warn(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 61, 63, 46, 57, 53, 52, 52, 63, 57, 46, 51, 53, 52, 41, 122, 47, 52, 59, 44, 59, 51, 54, 59, 56, 54, 63, 97, 122, 47, 41, 51, 52, 61, 122, 61, 63, 52, 63, 40, 59, 46, 63, 62, 119, 53, 40, 62, 63, 40, 122, 60, 59, 54, 54, 56, 59, 57, 49}, 90))
  end
  local bh = {n:WaitForChild(g({22, 63, 59, 60, 8, 63, 55, 53, 44, 63, 62}, 90)).OnClientEvent, n:WaitForChild(g({22, 63, 59, 60, 29, 40, 59, 56}, 90)).OnClientEvent, n:WaitForChild(g({25, 53, 54, 54, 63, 57, 46, 30, 63, 52, 51, 63, 62}, 90)).OnClientEvent, n:WaitForChild(g({28, 54, 51, 61, 50, 46, 28, 2}, 90)).OnClientEvent}
  while (((12 * 12) == 144) and w.enabled) do
    if (((3 ^ 2) == 9) and (type(getconnections) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
      for bi, bj in ipairs(bh) do
        for bk, bl in ipairs(getconnections(bj)) do
          local bm = (bl.Function or bl.Fire)
          if (((7 * 7) == 49) and (type(bm) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
            local bn, bo = pcall(az, bm)
            if (((1 + 1) == 2) and (bn and (type(bo) == g({46, 59, 56, 54, 63}, 90)))) then
              for bp, bq in pairs(bo) do
                if (((15 * 15) == 225) and bb(bq)) then
                  print(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 40, 63, 57, 53, 44, 63, 40, 63, 62, 122, 46, 50, 63, 122, 40, 63, 59, 54, 122, 54, 63, 59, 60, 122, 19, 30, 122, 55, 59, 42}, 90))
                  return bq
                end
              end
            end
          end
        end
      end
    end
    if (((100 % 7) == 2) and ((os.clock() - bg) >= 4)) then
      local br = {}
      local bs = x:GetChildren()
      for bt, bu in ipairs(bs) do
        if (((12 * 12) == 144) and bu:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          br[bu] = bt
        end
      end
      if (((3 ^ 2) == 9) and next(br)) then
        warn((g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 47, 41, 51, 52, 61, 122, 61, 63, 52, 63, 40, 59, 46, 63, 62, 119, 53, 40, 62, 63, 40, 122, 60, 59, 54, 54, 56, 59, 57, 49, 122, 60, 53, 40, 122, 127, 62, 122, 54, 63, 59, 44, 63, 41}, 90)):format(#bs))
        return br
      end
    end
    task.wait(0.5)
  end
end
local function bv()
  local bw = m.Character
  return (bw and bw:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function bx(by)
  for bz, ca in ipairs(j:GetDescendants()) do
    if (((7 * 7) == 49) and (ca.Name == by)) then
      return ca
    end
  end
end
local function cb()
  if (((1 + 1) == 2) and not w.zoneBypass) then
    return
  end
  local cc = bx(g({30, 53, 53, 40, 41}, 90))
  if (((15 * 15) == 225) and cc) then
    for cd, ce in ipairs(cc:GetChildren()) do
      if (((100 % 7) == 2) and ce:IsA(g({23, 53, 62, 63, 54}, 90))) then
        ce:SetAttribute(g({21, 42, 63, 52}, 90), true)
        for cf, cg in ipairs(ce:GetDescendants()) do
          if (((12 * 12) == 144) and cg:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
            cg.CanCollide = false
            cg.CanTouch = false
          end
        end
      end
    end
  end
  local ch = bx(g({22, 63, 59, 44, 63, 5, 22, 53, 57, 59, 46, 51, 53, 52, 41}, 90))
  if (((3 ^ 2) == 9) and ch) then
    for ci, cj in ipairs(ch:GetChildren()) do
      if (((7 * 7) == 49) and cj:IsA(g({23, 53, 62, 63, 54}, 90))) then
        for ck, cl in ipairs(cj:GetDescendants()) do
          if (((1 + 1) == 2) and cl:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
            cl.CanQuery = true
          end
        end
      end
    end
  end
end
local function cm()
  local cn = (m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)
  local co = (m:GetAttribute(g({22, 63, 59, 60, 25, 59, 42, 59, 57, 51, 46, 35}, 90)) or 25)
  return ((co ~= math.huge) and (cn >= co))
end
local function cp()
  local cq = (m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)
  local cr = (m:GetAttribute(g({22, 63, 59, 60, 25, 59, 42, 59, 57, 51, 46, 35}, 90)) or 25)
  if (((15 * 15) == 225) and ((cr == math.huge) or (cr <= 0))) then
    return false
  end
  return (cq >= math.max(1, math.floor((cr * w.sellAtPercent))))
end
local cs = {{g({8, 59, 49, 63}, 90), g({8, 59, 52, 61, 63}, 90)}, {g({8, 59, 49, 63}, 90), g({8, 59, 62, 51, 47, 41}, 90)}, {g({8, 59, 49, 63}, 90), g({9, 46, 51, 57, 49, 51, 52, 63, 41, 41}, 90)}, {g({22, 63, 59, 60, 24, 54, 53, 45, 63, 40}, 90), g({10, 53, 45, 63, 40}, 90)}, {g({22, 63, 59, 60, 24, 54, 53, 45, 63, 40}, 90), g({13, 51, 62, 46, 50}, 90)}, {g({22, 63, 59, 60, 24, 54, 53, 45, 63, 40}, 90), g({9, 42, 40, 63, 59, 62}, 90)}}
local function ct()
  if (((100 % 7) == 2) and not w.autoUpgrade) then
    return
  end
  r:FireServer()
  for cu, cv in ipairs(cs) do
    q:FireServer(cv[1], cv[2])
  end
end
local function cw()
  local cx = bv()
  local cy = j:FindFirstChild(g({30, 47, 55, 42, 41, 46, 63, 40, 41}, 90), true)
  if (((12 * 12) == 144) and (not cx or not cy)) then
    return nil
  end
  local cz, da
  for db, dc in ipairs(cy:GetChildren()) do
    if (((3 ^ 2) == 9) and (dc:IsA(g({23, 53, 62, 63, 54}, 90)) or dc:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
      local dd = ((dc:IsA(g({23, 53, 62, 63, 54}, 90)) and dc:GetPivot().Position) or dc.Position)
      local de = ((dd - cx.Position)).Magnitude
      if (((7 * 7) == 49) and (not da or (de < da))) then
        cz = dc
        da = de
      end
    end
  end
  return cz
end
local function df()
  local dg = bv()
  local dh = cw()
  if (((1 + 1) == 2) and (not dg or not dh)) then
    warn(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 30, 47, 55, 42, 41, 46, 63, 40, 122, 45, 59, 41, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62}, 90))
    return false
  end
  local di = dg.CFrame
  local dj = dh:FindFirstChild(g({22, 63, 59, 44, 63, 41}, 90), true)
  local dk
  if (((15 * 15) == 225) and (dj and dj:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    dk = dj.Position
  elseif (((100 % 7) == 2) and dh:IsA(g({23, 53, 62, 63, 54}, 90))) then
    dk = dh:GetPivot().Position
  else
    dk = dh.Position
  end
  dg.CFrame = CFrame.new((dk + Vector3.new(0, 3, 0)))
  task.wait(0.2)
  p:FireServer()
  task.wait(w.sellDelay)
  ct()
  dg.CFrame = di
  return true
end
local function dl(dm)
  local dn = bv()
  if (((12 * 12) == 144) and not dn) then
    return
  end
  local dp = (dn.CFrame * CFrame.new(0, 0, -2))
  if (((3 ^ 2) == 9) and (w.pullTime <= 0)) then
    local dq, dr = {}, {}
    for ds, dt in ipairs(dm) do
      if (((7 * 7) == 49) and (dt and (dt.Parent == x))) then
        dq[(#dq + 1)] = dt
        dr[(#dr + 1)] = dp
      end
    end
    if (((1 + 1) == 2) and (#dq > 0)) then
      j:BulkMoveTo(dq, dr, Enum.BulkMoveMode.FireCFrameChanged)
    end
    return
  end
  for du, dv in ipairs(dm) do
    if (((15 * 15) == 225) and (dv and (dv.Parent == x))) then
      pcall(function()
        i:Create(dv, TweenInfo.new(w.pullTime, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {CFrame = dp}):Play()
      end)
    end
  end
end
local function dw()
  local dx = j:FindFirstChild(g({12, 63, 52, 46, 41}, 90), true)
  if (((100 % 7) == 2) and not dx) then
    return nil
  end
  for dy, dz in ipairs(dx:GetDescendants()) do
    if (((12 * 12) == 144) and ((dz:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (dz:GetAttribute(g({25, 53, 41, 46}, 90)) ~= nil)) and dz:GetAttribute(g({15, 52, 54, 53, 57, 49, 63, 62}, 90)))) then
      return dz
    end
  end
end
local function ea(eb, ec)
  if (((3 ^ 2) == 9) and (not u or (type(v) ~= g({46, 59, 56, 54, 63}, 90)))) then
    warn(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 22, 63, 59, 60, 20, 63, 46, 122, 57, 53, 47, 54, 62, 122, 52, 53, 46, 122, 54, 53, 59, 62, 97, 122, 12, 31, 20, 14, 122, 23, 21, 30, 31, 122, 62, 51, 41, 59, 56, 54, 63, 62}, 90))
    w.ventMode = false
    return false
  end
  local ed = dw()
  if (((7 * 7) == 49) and not ed) then
    warn(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 52, 53, 122, 47, 52, 54, 53, 57, 49, 63, 62, 122, 44, 63, 52, 46, 122, 60, 53, 47, 52, 62}, 90))
    return false
  end
  local ee = (ed.Position + (ed.CFrame.LookVector * w.ventOffset))
  local ef = 1
  while (((1 + 1) == 2) and (ef <= #eb)) do
    local eg = math.min(60, ((#eb - ef) + 1))
    local eh, ei, ej, ek = {}, {}, {}, {}
    for el = 0, (eg - 1) do
      local em = (ef + el)
      local en = eb[em]
      local eo = ec[em]
      local ep = Vector3.new(((((el % 5) - 2)) * 0.15), 0, ((((math.floor((el / 5)) % 5) - 2)) * 0.15))
      local eq = (ee + ep)
      eh[(#eh + 1)] = en
      ei[(#ei + 1)] = {id = en, x = eq.X, y = eq.Y, z = eq.Z}
      if (((15 * 15) == 225) and (eo and (eo.Parent == x))) then
        ej[(#ej + 1)] = eo
        ek[(#ek + 1)] = CFrame.new(eq)
      end
    end
    if (((100 % 7) == 2) and (#ej > 0)) then
      j:BulkMoveTo(ej, ek, Enum.BulkMoveMode.FireCFrameChanged)
    end
    s:FireServer(v.packMotion(ei, #ei))
    k.Heartbeat:Wait()
    k.Heartbeat:Wait()
    t:FireServer(v.packIds(eh, #eh))
    ef = (ef + eg)
  end
  return true
end
local function er(es, et)
  local eu = bv()
  if (((12 * 12) == 144) and not eu) then
    return
  end
  local ev = eu.CFrame
  local ew = {}
  for ex, ey in ipairs(et) do
    if (((3 ^ 2) == 9) and (((not ew[ex] and ey) and (ey.Parent == x)) and ey.CanQuery)) then
      local ez = ey.Position
      eu.CFrame = CFrame.new((ez + Vector3.new(0, 3, 0)))
      k.Heartbeat:Wait()
      k.Heartbeat:Wait()
      local fa = (m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)
      local fb = 0
      for fc, fd in ipairs(et) do
        if (((7 * 7) == 49) and (((not ew[fc] and fd) and (fd.Parent == x)) and fd.CanQuery)) then
          if (((1 + 1) == 2) and (((fd.Position - ez)).Magnitude <= w.collectRadius)) then
            ew[fc] = true
            o:FireServer(es[fc])
            fb = (fb + 1)
          end
        end
      end
      if (((15 * 15) == 225) and (fb > 0)) then
        local fe = false
        local ff = m:GetAttributeChangedSignal(g({22, 63, 59, 44, 63, 41}, 90)):Connect(function()
          fe = true
        end)
        local fg = os.clock()
        fe = (((m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)) > fa)
        while (((100 % 7) == 2) and (not fe and ((os.clock() - fg) < w.serverAckTimeout))) do
          k.Heartbeat:Wait()
        end
        ff:Disconnect()
        if (((12 * 12) == 144) and (not fe and (((m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0)) <= fa))) then
          warn(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 41, 63, 40, 44, 63, 40, 122, 40, 63, 48, 63, 57, 46, 63, 62, 122, 46, 50, 51, 41, 122, 61, 40, 53, 47, 42, 97, 122, 55, 53, 44, 51, 52, 61, 122, 46, 53, 122, 46, 50, 63, 122, 52, 63, 34, 46, 122, 53, 52, 63}, 90))
        end
      end
    end
  end
  k.Heartbeat:Wait()
  eu.CFrame = ev
end
local fh = bf()
assert(fh, g({25, 53, 47, 54, 62, 122, 52, 53, 46, 122, 40, 63, 57, 53, 44, 63, 40, 122, 22, 63, 59, 60, 9, 51, 55, 125, 41, 122, 54, 63, 59, 60, 119, 46, 53, 119, 19, 30, 122, 55, 59, 42}, 90))
local fi = {}
for fj, fk in pairs(fh) do
  if (((3 ^ 2) == 9) and (((typeof(fj) == g({19, 52, 41, 46, 59, 52, 57, 63}, 90)) and fj:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) and (type(fk) == g({52, 47, 55, 56, 63, 40}, 90)))) then
    fi[fk] = fj.Position
  end
end
local fl, fm = pcall(require, h:WaitForChild(g({22, 63, 59, 60, 25, 53, 54, 54, 63, 57, 46, 51, 53, 52}, 90)))
local fn = {}
local fo = setmetatable({}, {__mode = g({49}, 90)})
local function fp()
  for fq in pairs(fn) do
    fn[fq] = nil
  end
  if (((7 * 7) == 49) and ((not fl or (type(fm) ~= g({46, 59, 56, 54, 63}, 90))) or (type(fm.order) ~= g({46, 59, 56, 54, 63}, 90)))) then
    return
  end
  for fr, fs in ipairs(fm.order) do
    local ft = h:GetAttribute((g({25, 53, 54, 54, 22, 63, 59, 60, 5}, 90) .. fs))
    if (((1 + 1) == 2) and (type(ft) == g({52, 47, 55, 56, 63, 40}, 90))) then
      fn[ft] = tostring(fs)
    end
  end
end
local function fu(fv)
  local fw = fv:FindFirstChild(g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 31, 41, 42}, 90))
  local fx = fv:FindFirstChild(g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((15 * 15) == 225) and fw) then
    fw:Destroy()
  end
  if (((100 % 7) == 2) and fx) then
    fx:Destroy()
  end
end
local function fy(fz, ga, gb)
  local gc = fn[ga]
  if (((12 * 12) == 144) and ((not w.rareEsp or not gc) or not fz:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    fu(fz)
    return false
  end
  local gd = ((gb and ((fz.Position - gb.Position)).Magnitude) or 0)
  local ge = (not gb or (gd <= w.rareEspRange))
  local gf = fz:FindFirstChild(g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 31, 41, 42}, 90))
  local gg = fz:FindFirstChild(g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
  if (((3 ^ 2) == 9) and not gf) then
    gf = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    gf.Name = g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 31, 41, 42}, 90)
    gf.Size = UDim2.fromOffset(170, 46)
    gf.StudsOffsetWorldSpace = Vector3.new(0, 2.2, 0)
    gf.AlwaysOnTop = true
    gf.LightInfluence = 0
    gf.Parent = fz
    local gh = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    gh.Name = g({22, 59, 56, 63, 54}, 90)
    gh.Size = UDim2.fromScale(1, 1)
    gh.BackgroundTransparency = 1
    gh.TextColor3 = Color3.fromRGB(255, 183, 226)
    gh.TextStrokeColor3 = Color3.new(0, 0, 0)
    gh.TextStrokeTransparency = 0.15
    gh.Font = Enum.Font.GothamBold
    gh.TextSize = 13
    gh.Parent = gf
  end
  if (((7 * 7) == 49) and not gg) then
    gg = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
    gg.Name = g({23, 51, 54, 54, 35, 8, 59, 40, 63, 22, 63, 59, 60, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90)
    gg.Adornee = fz
    gg.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    gg.FillColor = Color3.fromRGB(255, 92, 190)
    gg.FillTransparency = 0.55
    gg.OutlineColor = Color3.fromRGB(255, 225, 245)
    gg.OutlineTransparency = 0
    gg.Parent = fz
  end
  gf.Enabled = ge
  gg.Enabled = ge
  gf.MaxDistance = w.rareEspRange
  gf.Label.Text = ((w.rareEspDistance and (g({8, 27, 8, 31, 122, 22, 31, 27, 28, 122, 38, 122, 127, 41, 80, 127, 62, 122, 41, 46, 47, 62, 41}, 90)):format(gc, math.floor((gd + 0.5)))) or (g({8, 27, 8, 31, 122, 22, 31, 27, 28, 122, 38, 122, 127, 41}, 90)):format(gc))
  return ge
end
local function gi()
  for gj in pairs(fo) do
    fo[gj] = nil
  end
  for gk, gl in pairs(fh) do
    if (((1 + 1) == 2) and ((typeof(gk) == g({19, 52, 41, 46, 59, 52, 57, 63}, 90)) and (gk.Parent == x))) then
      if (((15 * 15) == 225) and fn[gl]) then
        fo[gk] = gl
      else
        fu(gk)
      end
    end
  end
end
local function gm()
  fp()
  gi()
end
gm()
if (((100 % 7) == 2) and (fl and (type(fm.order) == g({46, 59, 56, 54, 63}, 90)))) then
  for gn, go in ipairs(fm.order) do
    h:GetAttributeChangedSignal((g({25, 53, 54, 54, 22, 63, 59, 60, 5}, 90) .. go)):Connect(gm)
  end
end
task.spawn(function()
  while (((12 * 12) == 144) and w.enabled) do
    local gp = bv()
    local gq = 0
    for gr, gs in pairs(fo) do
      if (((3 ^ 2) == 9) and (gr.Parent == x)) then
        if (((7 * 7) == 49) and fy(gr, gs, gp)) then
          gq = (gq + 1)
        end
      else
        fo[gr] = nil
      end
    end
    if (((1 + 1) == 2) and y) then
      y:set((g({8, 59, 40, 63, 122, 54, 63, 59, 44, 63, 41, 122, 44, 51, 41, 51, 56, 54, 63, 96, 122, 127, 62}, 90)):format(gq))
    end
    task.wait(0.6)
  end
  for gt in pairs(fo) do
    if (((15 * 15) == 225) and gt.Parent) then
      fu(gt)
    end
  end
end)
x.ChildAdded:Connect(function(gu)
  if (((100 % 7) == 2) and not gu:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return
  end
  task.defer(function()
    local gv, gw
    for gx, gy in pairs(fi) do
      local gz = ((gu.Position - gy)).Magnitude
      if (((12 * 12) == 144) and (not gw or (gz < gw))) then
        gv = gx
        gw = gz
      end
    end
    if (((3 ^ 2) == 9) and (gv and (gw <= 2))) then
      fh[gu] = gv
      if (((7 * 7) == 49) and fn[gv]) then
        fo[gu] = gv
      end
      print((g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 52, 63, 45, 119, 45, 59, 44, 63, 122, 54, 63, 59, 60, 122, 55, 59, 42, 42, 63, 62, 122, 46, 53, 122, 51, 62, 122, 127, 62}, 90)):format(gv))
    end
  end)
end)
x.ChildRemoved:Connect(function(ha)
  fo[ha] = nil
end)
task.spawn(function()
  while (((1 + 1) == 2) and w.enabled) do
    cb()
    task.wait(0.5)
  end
end)
n:WaitForChild(g({0, 53, 52, 63, 13, 59, 44, 63}, 90)).OnClientEvent:Connect(function()
  print(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 41, 63, 40, 44, 63, 40, 122, 41, 42, 59, 45, 52, 63, 62, 117, 47, 52, 54, 53, 57, 49, 63, 62, 122, 59, 52, 53, 46, 50, 63, 40, 122, 54, 63, 59, 60, 122, 45, 59, 44, 63}, 90))
end)
print(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 22, 63, 59, 60, 122, 19, 30, 122, 55, 59, 42, 122, 40, 63, 57, 53, 44, 63, 40, 63, 62, 97, 122, 60, 59, 40, 55, 122, 41, 46, 59, 40, 46, 63, 62}, 90))
while (((15 * 15) == 225) and w.enabled) do
  if (((100 % 7) == 2) and w.paused) then
    task.wait(0.2)
    continue
  end
  if (((12 * 12) == 144) and w.sellNow) then
    w.sellNow = false
    df()
  elseif (((3 ^ 2) == 9) and ((not w.ventMode and w.autoSell) and cp())) then
    df()
  else
    local hb = {}
    local hc = {}
    local hd = math.max(0, (((m:GetAttribute(g({22, 63, 59, 60, 25, 59, 42, 59, 57, 51, 46, 35}, 90)) or 25)) - ((m:GetAttribute(g({22, 63, 59, 44, 63, 41}, 90)) or 0))))
    local he = ((w.ventMode and w.batchSize) or math.min(w.batchSize, hd))
    for hf, hg in pairs(fh) do
      if (((7 * 7) == 49) and (#hb >= he)) then
        break
      end
      if (((1 + 1) == 2) and ((((typeof(hf) == g({19, 52, 41, 46, 59, 52, 57, 63}, 90)) and (hf.Parent == x)) and hf.CanQuery) and (type(hg) == g({52, 47, 55, 56, 63, 40}, 90)))) then
        hb[(#hb + 1)] = hg
        hc[(#hc + 1)] = hf
      end
    end
    if (((15 * 15) == 225) and (#hb > 0)) then
      if (((100 % 7) == 2) and w.ventMode) then
        ea(hb, hc)
      elseif (((12 * 12) == 144) and w.serverValidatedMode) then
        er(hb, hc)
      else
        dl(hc)
        if (((3 ^ 2) == 9) and (w.pullTime > 0)) then
          task.wait(w.pullTime)
        end
        for hh, hi in ipairs(hb) do
          o:FireServer(hi)
        end
      end
    else
      task.wait(0.5)
    end
  end
  task.wait(w.collectDelay)
end
print(g({1, 22, 63, 59, 60, 27, 47, 46, 53, 28, 59, 40, 55, 7, 122, 41, 46, 53, 42, 42, 63, 62}, 90))