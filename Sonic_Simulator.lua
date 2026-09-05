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
local l = game:GetService(g({14, 63, 54, 63, 42, 53, 40, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local m = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local n = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local o = h.LocalPlayer
local p = getgenv().MillyMenu
if (((15 * 15) == 225) and not p) then
  return
end
local q = {running = true, ring = false, orb = false, all = false, xp = false, magnet = false, route = false, delay = .08, range = 1200, autorun = false, rebirth = false, rewards = false, rewardDelay = 8, walk = false, ws = 80, velocity = false, velocitySpeed = 180, jump = false, jp = 85, noclip = false, infjump = false, fly = false, fs = 100, playerEsp = false, collectEsp = false, espRange = 2500, full = false, afk = false, prompt = false, status = g({40, 63, 59, 62, 35}, 90)}
local function r()
  local s = o.Character
  return (s and ((s:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or s.PrimaryPart)))
end
local function t()
  local u = o.Character
  return (u and u:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function v(w, x, y)
  local z = i:FindFirstChild(g({17, 52, 51, 46}, 90))
  local aa = (z and z:FindFirstChild(g({9, 63, 40, 44, 51, 57, 63, 41}, 90)))
  local ab = (aa and aa:FindFirstChild(w))
  local ac = (ab and ab:FindFirstChild(x))
  return (ac and ac:FindFirstChild(y))
end
local function ad(ae, af, ...)
  local ag = v(ae, g({8, 28}, 90), af)
  if (((100 % 7) == 2) and not ag) then
    q.status = (ae .. (g({117}, 90) .. (af .. g({122, 55, 51, 41, 41, 51, 52, 61}, 90))))
    return nil
  end
  local ah, ai, aj = pcall(ag.InvokeServer, ag, ...)
  q.status = ((ah and ((ae .. (g({117}, 90) .. (af .. g({122, 53, 49}, 90)))))) or tostring(ai))
  return ((ah and ai) or nil), aj
end
local function ak(al, am, ...)
  local an = v(al, g({8, 31}, 90), am)
  if (((12 * 12) == 144) and not an) then
    q.status = (al .. (g({117}, 90) .. (am .. g({122, 55, 51, 41, 41, 51, 52, 61}, 90))))
    return false
  end
  local ao, ap = pcall(an.FireServer, an, ...)
  q.status = ((ao and ((al .. (g({117}, 90) .. (am .. g({122, 41, 63, 52, 46}, 90)))))) or tostring(ap))
  return ao
end
local function aq(ar)
  if (((3 ^ 2) == 9) and ar:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return ar
  end
  if (((7 * 7) == 49) and ar:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (ar.PrimaryPart or ar:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
  return (ar:FindFirstAncestorWhichIsA(g({23, 53, 62, 63, 54}, 90)) and ar:FindFirstAncestorWhichIsA(g({23, 53, 62, 63, 54}, 90)).PrimaryPart)
end
local function as(at)
  local au = at.Name:lower()
  local av = ((at.Parent and at.Parent.Name:lower()) or "")
  if (((1 + 1) == 2) and (((au:find(g({34, 42}, 90)) or au:find(g({63, 34, 42, 63, 40, 51, 63, 52, 57, 63}, 90))) or av:find(g({34, 42}, 90))) or av:find(g({63, 34, 42, 63, 40, 51, 63, 52, 57, 63}, 90)))) then
    return g({34, 42}, 90)
  end
  if (((15 * 15) == 225) and (((au:find(g({57, 50, 59, 53, 41}, 90)) or au:find(g({53, 40, 56}, 90))) or av:find(g({57, 50, 59, 53, 41}, 90))) or av:find(g({53, 40, 56}, 90)))) then
    return g({53, 40, 56}, 90)
  end
  if (((100 % 7) == 2) and (au:find(g({40, 51, 52, 61}, 90)) or av:find(g({40, 51, 52, 61}, 90)))) then
    return g({40, 51, 52, 61}, 90)
  end
  if (((12 * 12) == 144) and ((au:find(g({57, 53, 54, 54, 63, 57, 46}, 90)) or au:find(g({57, 47, 40, 40, 63, 52, 57, 35}, 90))) or av:find(g({57, 53, 54, 54, 63, 57, 46}, 90)))) then
    return g({53, 46, 50, 63, 40}, 90)
  end
end
local function aw(ax)
  local ay = aq(ax)
  if (((3 ^ 2) == 9) and not ay) then
    return
  end
  local az = ((as(ax) or as(ay)) or ((ay.Parent and as(ay.Parent))))
  if (((7 * 7) == 49) and az) then
    return ay, az
  end
end
local function ba()
  local bb = r()
  if (((1 + 1) == 2) and not bb) then
    return
  end
  local bc, bd, be = nil, nil, q.range
  for bf, bg in ipairs(workspace:GetDescendants()) do
    if (((15 * 15) == 225) and bg:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
      local bh, bi = aw(bg)
      if (((100 % 7) == 2) and (bh and ((((q.all or (((bi == g({40, 51, 52, 61}, 90)) and ((q.ring or q.xp))))) or (((bi == g({53, 40, 56}, 90)) and ((q.orb or q.xp))))) or (((bi == g({34, 42}, 90)) and q.xp)))))) then
        local bj = ((bh.Position - bb.Position)).Magnitude
        if (((12 * 12) == 144) and (bj < be)) then
          bc, bd, be = bh, bi, bj
        end
      end
    end
  end
  return bc, bd, be
end
local function bk(bl)
  local bm = r()
  if (((3 ^ 2) == 9) and not (((bm and bl) and bl.Parent))) then
    return
  end
  if (((7 * 7) == 49) and q.magnet) then
    pcall(function()
      bl.CFrame = bm.CFrame
    end)
  end
  if (((1 + 1) == 2) and firetouchinterest) then
    pcall(function()
      firetouchinterest(bm, bl, 0)
      firetouchinterest(bm, bl, 1)
    end)
  else
    bm.CFrame = (bl.CFrame * CFrame.new(0, 2, 0))
  end
end
local bn = {}
local function bo(bp, bq, br)
  local bs = aq(bp)
  if (((15 * 15) == 225) and not bs) then
    return
  end
  local bt = bn[bs]
  if (((100 % 7) == 2) and bt) then
    bt.Enabled = true
    return
  end
  bt = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  bt.Name = g({23, 51, 54, 54, 35, 31, 9, 10}, 90)
  bt.AlwaysOnTop = true
  bt.Size = UDim2.fromOffset(130, 24)
  bt.StudsOffset = Vector3.new(0, 2, 0)
  bt.Adornee = bs
  bt.Parent = bs
  local bu = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  bu.Size = UDim2.fromScale(1, 1)
  bu.BackgroundTransparency = 1
  bu.Text = bq
  bu.TextColor3 = br
  bu.TextStrokeTransparency = .25
  bu.Font = Enum.Font.GothamBold
  bu.TextSize = 13
  bu.Parent = bt
  bn[bs] = bt
end
local function bv()
  for bw, bx in pairs(bn) do
    if (((12 * 12) == 144) and bx) then
      bx:Destroy()
    end
    bn[bw] = nil
  end
end
local by
j.Stepped:Connect(function()
  if (((3 ^ 2) == 9) and not q.running) then
    return
  end
  local bz = t()
  if (((7 * 7) == 49) and bz) then
    if (((1 + 1) == 2) and q.walk) then
      bz.WalkSpeed = q.ws
    end
    if (((15 * 15) == 225) and q.jump) then
      bz.UseJumpPower = true
      bz.JumpPower = q.jp
    end
  end
  if (((100 % 7) == 2) and (q.noclip and o.Character)) then
    for ca, cb in ipairs(o.Character:GetDescendants()) do
      if (((12 * 12) == 144) and cb:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        cb.CanCollide = false
      end
    end
  end
end)
j.RenderStepped:Connect(function()
  if (((3 ^ 2) == 9) and not q.running) then
    return
  end
  local cc = r()
  if (((7 * 7) == 49) and (q.fly and cc)) then
    if (((1 + 1) == 2) and (not by or (by.Parent ~= cc))) then
      if (((15 * 15) == 225) and by) then
        by:Destroy()
      end
      by = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      by.MaxForce = Vector3.new(1e9, 1e9, 1e9)
      by.Parent = cc
    end
    local cd = workspace.CurrentCamera
    local ce = Vector3.new()
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.W)) then
      ce += cd.CFrame.LookVector
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.S)) then
      ce -= cd.CFrame.LookVector
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.A)) then
      ce -= cd.CFrame.RightVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.D)) then
      ce += cd.CFrame.RightVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.Space)) then
      ce += Vector3.yAxis
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      ce -= Vector3.yAxis
    end
    by.Velocity = (((ce.Magnitude > 0) and (ce.Unit * q.fs)) or Vector3.new())
  elseif (((100 % 7) == 2) and by) then
    by:Destroy()
    by = nil
  end
end)
k.JumpRequest:Connect(function()
  if (((12 * 12) == 144) and q.infjump) then
    local cf = t()
    if (((3 ^ 2) == 9) and cf) then
      cf:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and q.running) do
    if (((1 + 1) == 2) and (((q.ring or q.orb) or q.all) or q.xp)) then
      local cg = ba()
      if (((15 * 15) == 225) and cg) then
        bk(cg)
      end
    end
    task.wait(q.delay)
  end
end)
j.Heartbeat:Connect(function()
  if (((100 % 7) == 2) and not ((q.running and q.velocity))) then
    return
  end
  local ch = r()
  local ci = t()
  if (((12 * 12) == 144) and not ((ch and ci))) then
    return
  end
  local cj = ci.MoveDirection
  if (((3 ^ 2) == 9) and (cj.Magnitude > .05)) then
    local ck = ch.AssemblyLinearVelocity.Y
    ch.AssemblyLinearVelocity = Vector3.new((cj.X * q.velocitySpeed), ck, (cj.Z * q.velocitySpeed))
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and q.running) do
    if (((1 + 1) == 2) and q.autorun) then
      ad(g({27, 47, 46, 53, 8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90), g({9, 46, 59, 40, 46, 27, 47, 46, 53, 8, 47, 52}, 90))
    end
    if (((15 * 15) == 225) and q.rebirth) then
      ad(g({9, 9, 22, 63, 44, 63, 54, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90), g({27, 46, 46, 63, 55, 42, 46, 8, 63, 56, 51, 40, 46, 50}, 90))
    end
    task.wait(4)
  end
end)
local function cl()
  ad(g({22, 53, 61, 51, 52, 8, 63, 45, 59, 40, 62, 41, 12, 104, 9, 63, 40, 44, 51, 57, 63}, 90), g({27, 46, 46, 63, 55, 42, 46, 25, 54, 59, 51, 55, 8, 63, 45, 59, 40, 62}, 90))
  local cm = ad(g({27, 57, 50, 51, 63, 44, 63, 55, 63, 52, 46, 41, 9, 63, 40, 44, 51, 57, 63}, 90), g({29, 63, 46, 25, 54, 59, 51, 55, 59, 56, 54, 63, 8, 63, 45, 59, 40, 62}, 90))
  if (((100 % 7) == 2) and cm) then
    ad(g({27, 57, 50, 51, 63, 44, 63, 55, 63, 52, 46, 41, 9, 63, 40, 44, 51, 57, 63}, 90), g({27, 46, 46, 63, 55, 42, 46, 25, 54, 59, 51, 55, 8, 63, 45, 59, 40, 62}, 90), cm)
  end
  ak(g({27, 47, 46, 53, 8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90), g({25, 54, 59, 51, 55, 8, 63, 45, 59, 40, 62, 41}, 90))
  ak(g({25, 53, 62, 63, 34, 9, 63, 40, 44, 51, 57, 63}, 90), g({25, 54, 59, 51, 55, 25, 53, 62, 63, 34, 8, 63, 45, 59, 40, 62, 41}, 90))
end
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    if (((3 ^ 2) == 9) and q.rewards) then
      cl()
    end
    task.wait(q.rewardDelay)
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and q.running) do
    local cn = r()
    if (((1 + 1) == 2) and (q.collectEsp and cn)) then
      local co = 0
      for cp, cq in ipairs(workspace:GetDescendants()) do
        if (((15 * 15) == 225) and (co > 180)) then
          break
        end
        if (((100 % 7) == 2) and cq:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          local cr, cs = aw(cq)
          if (((12 * 12) == 144) and (cr and (((cr.Position - cn.Position)).Magnitude < q.espRange))) then
            bo(cr, (((cs == g({53, 40, 56}, 90)) and g({25, 18, 27, 21, 9, 122, 21, 8, 24}, 90)) or g({8, 19, 20, 29}, 90)), (((cs == g({53, 40, 56}, 90)) and Color3.fromRGB(180, 90, 255)) or Color3.fromRGB(255, 220, 30)))
            co += 1
          end
        end
      end
    elseif (((3 ^ 2) == 9) and not q.playerEsp) then
      bv()
    end
    if (((7 * 7) == 49) and (q.playerEsp and cn)) then
      for ct, cu in ipairs(h:GetPlayers()) do
        local cv = (((cu ~= o) and cu.Character) and cu.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
        if (((1 + 1) == 2) and (cv and (((cv.Position - cn.Position)).Magnitude < q.espRange))) then
          bo(cv, cu.DisplayName, Color3.fromRGB(80, 210, 255))
        end
      end
    end
    task.wait(1.5)
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    if (((100 % 7) == 2) and q.prompt) then
      for cw, cx in ipairs(workspace:GetDescendants()) do
        if (((12 * 12) == 144) and cx:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
          cx.HoldDuration = 0
        end
      end
    end
    if (((3 ^ 2) == 9) and q.full) then
      m.Brightness = 3
      m.ClockTime = 14
      m.FogEnd = 1e6
      m.GlobalShadows = false
    end
    task.wait(1)
  end
end)
o.Idled:Connect(function()
  if (((7 * 7) == 49) and q.afk) then
    n:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
    task.wait(.1)
    n:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
  end
end)
local cy = p:tab(g({60, 59, 40, 55}, 90))
cy:section(g({57, 53, 54, 54, 63, 57, 46, 51, 56, 54, 63, 41}, 90))
cy:toggle(g({59, 47, 46, 53, 122, 2, 10, 122, 60, 59, 40, 55}, 90), false, function(cz)
  q.xp = cz
end)
cy:toggle(g({59, 47, 46, 53, 122, 40, 51, 52, 61, 41}, 90), false, function(da)
  q.ring = da
end)
cy:toggle(g({59, 47, 46, 53, 122, 57, 50, 59, 53, 41, 122, 53, 40, 56, 41}, 90), false, function(db)
  q.orb = db
end)
cy:toggle(g({59, 47, 46, 53, 122, 59, 54, 54, 122, 57, 53, 54, 54, 63, 57, 46, 51, 56, 54, 63, 41}, 90), false, function(dc)
  q.all = dc
end)
cy:toggle(g({55, 59, 61, 52, 63, 46, 122, 46, 53, 122, 42, 54, 59, 35, 63, 40}, 90), false, function(dd)
  q.magnet = dd
end)
cy:slider(g({57, 53, 54, 54, 63, 57, 46, 122, 40, 59, 52, 61, 63}, 90), 50, 5000, q.range, function(de)
  q.range = de
end)
cy:slider(g({57, 53, 54, 54, 63, 57, 46, 122, 62, 63, 54, 59, 35}, 90), .03, 1, q.delay, function(df)
  q.delay = df
end)
cy:button(g({57, 53, 54, 54, 63, 57, 46, 122, 52, 63, 59, 40, 63, 41, 46, 122, 53, 52, 57, 63}, 90), function()
  local dg = ba()
  if (((1 + 1) == 2) and dg) then
    bk(dg)
  else
    q.status = g({52, 53, 46, 50, 51, 52, 61, 122, 60, 53, 47, 52, 62}, 90)
  end
end)
local dh = p:tab(g({42, 40, 53, 61, 40, 63, 41, 41}, 90))
dh:section(g({53, 60, 60, 51, 57, 51, 59, 54, 122, 41, 63, 40, 44, 51, 57, 63, 41}, 90))
dh:toggle(g({59, 47, 46, 53, 122, 53, 60, 60, 51, 57, 51, 59, 54, 122, 59, 47, 46, 53, 40, 47, 52}, 90), false, function(di)
  q.autorun = di
  if (((15 * 15) == 225) and not di) then
    ad(g({27, 47, 46, 53, 8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90), g({9, 46, 53, 42, 27, 47, 46, 53, 8, 47, 52}, 90))
  end
end)
dh:toggle(g({59, 47, 46, 53, 122, 40, 63, 56, 51, 40, 46, 50}, 90), false, function(dj)
  q.rebirth = dj
end)
dh:toggle(g({59, 47, 46, 53, 122, 57, 54, 59, 51, 55, 122, 40, 63, 45, 59, 40, 62, 41}, 90), false, function(dk)
  q.rewards = dk
end)
dh:slider(g({40, 63, 45, 59, 40, 62, 122, 51, 52, 46, 63, 40, 44, 59, 54}, 90), 3, 60, q.rewardDelay, function(dl)
  q.rewardDelay = dl
end)
dh:button(g({57, 54, 59, 51, 55, 122, 59, 54, 54, 122, 52, 53, 45}, 90), cl)
dh:button(g({41, 46, 59, 40, 46, 122, 59, 47, 46, 53, 40, 47, 52}, 90), function()
  ad(g({27, 47, 46, 53, 8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90), g({9, 46, 59, 40, 46, 27, 47, 46, 53, 8, 47, 52}, 90))
end)
dh:button(g({41, 46, 53, 42, 122, 59, 47, 46, 53, 40, 47, 52}, 90), function()
  ad(g({27, 47, 46, 53, 8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90), g({9, 46, 53, 42, 27, 47, 46, 53, 8, 47, 52}, 90))
end)
dh:button(g({40, 63, 56, 51, 40, 46, 50, 122, 52, 53, 45}, 90), function()
  ad(g({9, 9, 22, 63, 44, 63, 54, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90), g({27, 46, 46, 63, 55, 42, 46, 8, 63, 56, 51, 40, 46, 50}, 90))
end)
dh:button(g({51, 52, 57, 40, 63, 59, 41, 63, 122, 41, 42, 63, 63, 62, 122, 41, 46, 59, 46}, 90), function()
  ad(g({9, 9, 22, 63, 44, 63, 54, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90), g({19, 52, 57, 40, 63, 59, 41, 63, 9, 46, 59, 46, 22, 63, 44, 63, 54}, 90), g({9, 42, 63, 63, 62}, 90))
end)
dh:button(g({51, 52, 57, 40, 63, 59, 41, 63, 122, 42, 53, 45, 63, 40, 122, 41, 46, 59, 46}, 90), function()
  ad(g({9, 9, 22, 63, 44, 63, 54, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90), g({19, 52, 57, 40, 63, 59, 41, 63, 9, 46, 59, 46, 22, 63, 44, 63, 54}, 90), g({10, 53, 45, 63, 40}, 90))
end)
local dm = p:tab(g({46, 40, 59, 44, 63, 54}, 90))
dm:section(g({32, 53, 52, 63, 41}, 90))
local dn = g({29, 40, 63, 63, 52, 122, 18, 51, 54, 54}, 90)
dm:input(g({32, 53, 52, 63, 122, 52, 59, 55, 63}, 90), g({29, 40, 63, 63, 52, 122, 18, 51, 54, 54}, 90), function(dp)
  dn = dp
end)
dm:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 32, 53, 52, 63}, 90), function()
  ad(g({0, 53, 52, 63, 9, 63, 40, 44, 51, 57, 63}, 90), g({8, 63, 43, 47, 63, 41, 46, 14, 63, 54, 63, 42, 53, 40, 46, 14, 53, 0, 53, 52, 63}, 90), dn)
end)
dm:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 46, 53, 122, 41, 42, 59, 45, 52}, 90), function()
  local dq = ad(g({0, 53, 52, 63, 9, 63, 40, 44, 51, 57, 63}, 90), g({29, 63, 46, 10, 54, 59, 35, 63, 40, 9, 42, 59, 45, 52, 25, 28, 40, 59, 55, 63}, 90))
  local dr = r()
  if (((100 % 7) == 2) and (dr and (typeof(dq) == g({25, 28, 40, 59, 55, 63}, 90)))) then
    dr.CFrame = dq
  end
end)
dm:button(g({48, 53, 51, 52, 122, 40, 59, 57, 63}, 90), function()
  ad(g({8, 59, 57, 63, 9, 63, 40, 44, 51, 57, 63}, 90), g({18, 59, 52, 62, 54, 63, 16, 53, 51, 52, 51, 52, 61}, 90))
end)
dm:button(g({54, 63, 59, 44, 63, 122, 40, 59, 57, 63}, 90), function()
  ad(g({8, 59, 57, 63, 9, 63, 40, 44, 51, 57, 63}, 90), g({18, 59, 52, 62, 54, 63, 22, 63, 59, 44, 51, 52, 61}, 90))
end)
dm:button(g({40, 63, 48, 53, 51, 52, 122, 41, 63, 40, 44, 63, 40}, 90), function()
  l:TeleportToPlaceInstance(game.PlaceId, game.JobId, o)
end)
local ds = p:tab(g({55, 53, 44, 63, 55, 63, 52, 46}, 90))
ds:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(dt)
  q.walk = dt
end)
ds:slider(g({41, 42, 63, 63, 62}, 90), 16, 350, q.ws, function(du)
  q.ws = du
end)
ds:toggle(g({44, 63, 54, 53, 57, 51, 46, 35, 122, 41, 42, 63, 63, 62}, 90), false, function(dv)
  q.velocity = dv
end)
ds:slider(g({44, 63, 54, 53, 57, 51, 46, 35, 122, 44, 59, 54, 47, 63}, 90), 25, 700, q.velocitySpeed, function(dw)
  q.velocitySpeed = dw
end)
ds:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(dx)
  q.jump = dx
end)
ds:slider(g({48, 47, 55, 42}, 90), 50, 300, q.jp, function(dy)
  q.jp = dy
end)
ds:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(dz)
  q.noclip = dz
end)
ds:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(ea)
  q.infjump = ea
end)
ds:toggle(g({60, 54, 35}, 90), false, function(eb)
  q.fly = eb
end)
ds:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 10, 350, q.fs, function(ec)
  q.fs = ec
end)
ds:button(g({41, 46, 53, 42, 122, 44, 63, 54, 53, 57, 51, 46, 35}, 90), function()
  local ed = r()
  if (((12 * 12) == 144) and ed) then
    ed.AssemblyLinearVelocity = Vector3.new()
    ed.AssemblyAngularVelocity = Vector3.new()
  end
end)
local ee = p:tab(g({63, 41, 42}, 90))
ee:toggle(g({57, 53, 54, 54, 63, 57, 46, 51, 56, 54, 63, 122, 63, 41, 42}, 90), false, function(ef)
  q.collectEsp = ef
  if (((3 ^ 2) == 9) and (not ef and not q.playerEsp)) then
    bv()
  end
end)
ee:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(eg)
  q.playerEsp = eg
  if (((7 * 7) == 49) and (not eg and not q.collectEsp)) then
    bv()
  end
end)
ee:slider(g({63, 41, 42, 122, 40, 59, 52, 61, 63}, 90), 100, 10000, q.espRange, function(eh)
  q.espRange = eh
end)
ee:button(g({57, 54, 63, 59, 40, 122, 63, 41, 42}, 90), bv)
local ei = p:tab(g({41, 63, 46, 46, 51, 52, 61, 41}, 90))
local ej = ei:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
ei:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(ek)
  q.prompt = ek
end)
ei:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(el)
  q.afk = el
end)
ei:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(em)
  q.full = em
end)
ei:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for en, eo in pairs(q) do
    if (((1 + 1) == 2) and (type(eo) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      q[en] = false
    end
  end
  q.running = true
  bv()
end)
ei:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  bv()
  p:destroy()
end)
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    ej:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. q.status))
    task.wait(.5)
  end
end)