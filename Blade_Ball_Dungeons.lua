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
local l = game:GetService(g({9, 46, 59, 46, 41}, 90))
local m = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local n = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local o = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 19, 52, 42, 47, 46, 23, 59, 52, 59, 61, 63, 40}, 90))
local p = h.LocalPlayer
local q = getgenv().MillyMenu
if (((15 * 15) == 225) and not q) then
  return
end
local r = getgenv().MillyBladeBall
if (((100 % 7) == 2) and (type(r) == g({46, 59, 56, 54, 63}, 90))) then
  r.running = false
end
local s = {running = true, parry = false, mode = g({42, 40, 63, 62, 51, 57, 46}, 90), time = .32, range = 22, ping = true, extra = .05, cooldown = .12, spam = false, spamDelay = .08, onlyTarget = true, look = false, follow = false, followDistance = 14, ballEsp = false, tracer = false, playerEsp = false, espRange = 3000, walk = false, ws = 16, jump = false, jp = 50, noclip = false, fly = false, fs = 60, infJump = false, afk = false, full = false, status = g({40, 63, 59, 62, 35}, 90), parries = 0, last = 0}
getgenv().MillyBladeBall = s
local t = i:FindFirstChild(g({8, 63, 55, 53, 46, 63, 41}, 90))
local function u()
  local v = p.Character
  return (v and v:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function w()
  local x = p.Character
  return (x and x:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function y()
  local z, aa = pcall(function()
    return (l.Network.ServerStatsItem[g({30, 59, 46, 59, 122, 10, 51, 52, 61}, 90)]:GetValue() / 1000)
  end)
  return ((z and aa) or 0)
end
local function ab()
  local ac, ad
  local ae = u()
  for af, ag in ipairs({workspace:FindFirstChild(g({24, 59, 54, 54, 41}, 90)), workspace:FindFirstChild(g({14, 40, 59, 51, 52, 51, 52, 61, 24, 59, 54, 54, 41}, 90))}) do
    if (((12 * 12) == 144) and ag) then
      for ah, ai in ipairs(ag:GetChildren()) do
        if (((3 ^ 2) == 9) and (ai:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (((ai:GetAttribute(g({40, 63, 59, 54, 24, 59, 54, 54}, 90)) == true) or (ag.Name == g({14, 40, 59, 51, 52, 51, 52, 61, 24, 59, 54, 54, 41}, 90)))))) then
          local aj = ((ae and ((ai.Position - ae.Position)).Magnitude) or 0)
          if (((7 * 7) == 49) and (not ad or (aj < ad))) then
            ac = ai
            ad = aj
          end
        end
      end
    end
  end
  return ac, ad
end
local function ak(al)
  local am = (al and al:GetAttribute(g({46, 59, 40, 61, 63, 46}, 90)))
  return (((am == p.Name) or (am == tostring(p.UserId))) or ((typeof(am) == g({19, 52, 41, 46, 59, 52, 57, 63}, 90)) and (((am == p) or (am == p.Character)))))
end
local function an()
  if (((1 + 1) == 2) and ((os.clock() - s.last) < s.cooldown)) then
    return false
  end
  s.last = os.clock()
  local ao = pcall(function()
    o:SendKeyEvent(true, Enum.KeyCode.F, false, game)
    task.wait(.015)
    o:SendKeyEvent(false, Enum.KeyCode.F, false, game)
  end)
  if (((15 * 15) == 225) and not ao) then
    return false
  end
  s.parries += 1
  return true
end
local function ap(aq)
  local ar = u()
  if (((100 % 7) == 2) and (not aq or not ar)) then
    return math.huge, 0, math.huge
  end
  local as = (ar.Position - aq.Position)
  local at = as.Magnitude
  local au = aq.AssemblyLinearVelocity
  local av = (((at > 0) and au:Dot(as.Unit)) or 0)
  local aw = (((av > 1) and (at / av)) or math.huge)
  return at, av, aw
end
local ax = q
local ay = ax:tab(g({27, 15, 14, 21, 122, 10, 27, 8, 8, 3}, 90))
ay:section(g({42, 40, 63, 62, 51, 57, 46, 51, 53, 52}, 90))
local az = ay:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
ay:toggle(g({59, 47, 46, 53, 122, 42, 59, 40, 40, 35}, 90), false, function(ba)
  s.parry = ba
end)
ay:toggle(g({53, 52, 54, 35, 122, 45, 50, 63, 52, 122, 46, 59, 40, 61, 63, 46, 63, 62}, 90), false, function(bb)
  s.onlyTarget = bb
end)
ay:slider(g({40, 63, 59, 57, 46, 51, 53, 52, 122, 46, 51, 55, 63}, 90), .05, .8, s.time, function(bc)
  s.time = bc
end)
ay:slider(g({56, 59, 57, 49, 47, 42, 122, 40, 59, 52, 61, 63}, 90), 5, 60, s.range, function(bd)
  s.range = bd
end)
ay:toggle(g({42, 51, 52, 61, 122, 57, 53, 55, 42, 63, 52, 41, 59, 46, 51, 53, 52}, 90), false, function(be)
  s.ping = be
end)
ay:slider(g({63, 34, 46, 40, 59, 122, 42, 40, 63, 62, 51, 57, 46, 51, 53, 52}, 90), 0, .3, s.extra, function(bf)
  s.extra = bf
end)
ay:slider(g({42, 59, 40, 40, 35, 122, 57, 53, 53, 54, 62, 53, 45, 52}, 90), .08, 1, s.cooldown, function(bg)
  s.cooldown = bg
end)
ay:toggle(g({60, 59, 57, 63, 122, 56, 59, 54, 54}, 90), false, function(bh)
  s.look = bh
end)
ay:button(g({42, 59, 40, 40, 35, 122, 52, 53, 45}, 90), function()
  an()
end)
ay:section(g({59, 61, 61, 40, 63, 41, 41, 51, 44, 63}, 90))
ay:toggle(g({41, 42, 59, 55, 122, 42, 59, 40, 40, 35}, 90), false, function(bi)
  s.spam = bi
end)
ay:slider(g({41, 42, 59, 55, 122, 62, 63, 54, 59, 35}, 90), .05, .5, s.spamDelay, function(bj)
  s.spamDelay = bj
end)
local bk = ax:tab(g({24, 27, 22, 22}, 90))
bk:section(g({46, 40, 59, 57, 49, 51, 52, 61}, 90))
local bl = bk:label(g({56, 59, 54, 54, 96, 122, 52, 53, 52, 63}, 90))
bk:toggle(g({56, 59, 54, 54, 122, 63, 41, 42}, 90), false, function(bm)
  s.ballEsp = bm
end)
bk:toggle(g({56, 59, 54, 54, 122, 46, 40, 59, 57, 63, 40}, 90), false, function(bn)
  s.tracer = bn
end)
bk:toggle(g({60, 53, 54, 54, 53, 45, 122, 56, 59, 54, 54}, 90), false, function(bo)
  s.follow = bo
end)
bk:slider(g({60, 53, 54, 54, 53, 45, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 7, 35, s.followDistance, function(bp)
  s.followDistance = bp
end)
bk:button(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 56, 63, 50, 51, 52, 62, 122, 56, 59, 54, 54}, 90), function()
  local bq = ab()
  local br = u()
  if (((12 * 12) == 144) and (bq and br)) then
    local bs = bq.AssemblyLinearVelocity
    local bt = (((bs.Magnitude > 1) and bs.Unit) or Vector3.zAxis)
    br.CFrame = CFrame.new((bq.Position - (bt * s.followDistance)), bq.Position)
  end
end)
local bu = ax:tab(g({31, 9, 10}, 90))
bu:section(g({42, 54, 59, 35, 63, 40, 41}, 90))
bu:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(bv)
  s.playerEsp = bv
end)
bu:slider(g({63, 41, 42, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 10000, s.espRange, function(bw)
  s.espRange = bw
end)
local bx = ax:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
bx:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(by)
  s.walk = by
end)
bx:slider(g({41, 42, 63, 63, 62}, 90), 0, 250, s.ws, function(bz)
  s.ws = bz
end)
bx:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ca)
  s.jump = ca
end)
bx:slider(g({48, 47, 55, 42}, 90), 0, 300, s.jp, function(cb)
  s.jp = cb
end)
bx:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(cc)
  s.noclip = cc
end)
bx:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(cd)
  s.infJump = cd
end)
bx:toggle(g({60, 54, 35}, 90), false, function(ce)
  s.fly = ce
end)
bx:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 250, s.fs, function(cf)
  s.fs = cf
end)
local cg = ax:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
cg:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(ch)
  s.afk = ch
end)
cg:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(ci)
  s.full = ci
end)
cg:label(g({59, 54, 54, 122, 60, 47, 52, 57, 46, 51, 53, 52, 41, 122, 41, 46, 59, 40, 46, 122, 21, 28, 28}, 90))
cg:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for cj, ck in ipairs({g({42, 59, 40, 40, 35}, 90), g({41, 42, 59, 55}, 90), g({54, 53, 53, 49}, 90), g({60, 53, 54, 54, 53, 45}, 90), g({56, 59, 54, 54, 31, 41, 42}, 90), g({46, 40, 59, 57, 63, 40}, 90), g({42, 54, 59, 35, 63, 40, 31, 41, 42}, 90), g({45, 59, 54, 49}, 90), g({48, 47, 55, 42}, 90), g({52, 53, 57, 54, 51, 42}, 90), g({51, 52, 60, 16, 47, 55, 42}, 90), g({60, 54, 35}, 90)}) do
    s[ck] = false
  end
end)
cg:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  s.running = false
  ax:destroy()
end)
ay:show()
p.Idled:Connect(function()
  if (((3 ^ 2) == 9) and s.afk) then
    m:CaptureController()
    m:ClickButton2(Vector2.new())
  end
end)
k.JumpRequest:Connect(function()
  if (((7 * 7) == 49) and s.infJump) then
    local cl = w()
    if (((1 + 1) == 2) and cl) then
      cl:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local cm, cn, co
task.spawn(function()
  while (((15 * 15) == 225) and s.running) do
    local cp, cq = ab()
    local cr = (cp and cp:GetAttribute(g({46, 59, 40, 61, 63, 46}, 90)))
    if (((100 % 7) == 2) and ((cp ~= cm) or (cr ~= co))) then
      cn = os.clock()
      cm = cp
      co = cr
    end
    if (((12 * 12) == 144) and cp) then
      local cs, ct, cu = ap(cp)
      local cv = ak(cp)
      local cw = ((s.time + s.extra) + (((s.ping and y()) or 0)))
      local cx = ((os.clock() - ((cn or 0))) > .04)
      local cy = ((((s.parry and cx) and ((not s.onlyTarget or cv))) and (ct > 0)) and (((cu <= cw) or ((cs <= s.range) and (cu < 1.2)))))
      if (((3 ^ 2) == 9) and cy) then
        an()
      end
      if (((7 * 7) == 49) and (((s.spam and cv) and (cs <= math.max(s.range, 45))) and ((os.clock() - s.last) >= s.spamDelay))) then
        an()
      end
      local cz = u()
      if (((1 + 1) == 2) and (cz and s.look)) then
        cz.CFrame = CFrame.lookAt(cz.Position, Vector3.new(cp.Position.X, cz.Position.Y, cp.Position.Z))
      end
      if (((15 * 15) == 225) and ((cz and s.follow) and cv)) then
        local da = cp.AssemblyLinearVelocity
        local db = (((da.Magnitude > 1) and da.Unit) or ((cp.Position - cz.Position)).Unit)
        cz.CFrame = CFrame.new((cp.Position - (db * s.followDistance)), cp.Position)
      end
      s.status = ((cv and g({14, 27, 8, 29, 31, 14, 31, 30}, 90)) or tostring((cr or g({52, 53, 122, 46, 59, 40, 61, 63, 46}, 90))))
      az:set((g({41, 46, 59, 46, 47, 41, 96, 122, 127, 41, 122, 38, 122, 127, 116, 107, 60, 55, 122, 38, 122, 127, 116, 106, 60, 122, 41, 42, 63, 63, 62, 122, 38, 122, 14, 14, 25, 122, 127, 116, 104, 60, 122, 38, 122, 42, 59, 40, 40, 51, 63, 41, 122, 127, 62}, 90)):format(s.status, cs, cp.AssemblyLinearVelocity.Magnitude, (((cu == math.huge) and 99) or cu), s.parries))
      bl:set((g({56, 59, 54, 54, 96, 122, 127, 41, 122, 38, 122, 46, 59, 40, 61, 63, 46, 122, 127, 41, 122, 38, 122, 42, 51, 52, 61, 122, 127, 62, 55, 41}, 90)):format(cp.Name, tostring(cr), math.floor((y() * 1000))))
    else
      az:set(g({41, 46, 59, 46, 47, 41, 96, 122, 45, 59, 51, 46, 51, 52, 61, 122, 60, 53, 40, 122, 56, 59, 54, 54}, 90))
      bl:set(g({56, 59, 54, 54, 96, 122, 52, 53, 52, 63}, 90))
    end
    task.wait(.015)
  end
end)
local dc, dd
task.spawn(function()
  while (((100 % 7) == 2) and s.running) do
    local de = ab()
    if (((12 * 12) == 144) and (s.ballEsp and de)) then
      if (((3 ^ 2) == 9) and (not dc or not dc.Parent)) then
        dc = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
        dc.Name = g({23, 51, 54, 54, 35, 24, 59, 54, 54, 31, 9, 10}, 90)
        dc.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        dc.FillTransparency = .35
        dc.Parent = de
      end
      local df = ak(de)
      dc.FillColor = ((df and Color3.fromRGB(255, 35, 35)) or Color3.fromRGB(60, 180, 255))
      dc.OutlineColor = Color3.new(1, 1, 1)
    elseif (((7 * 7) == 49) and dc) then
      dc:Destroy()
      dc = nil
    end
    if (((1 + 1) == 2) and (s.tracer and de)) then
      if (((15 * 15) == 225) and (not dd or not dd.Parent)) then
        dd = Instance.new(g({24, 63, 59, 55}, 90))
        dd.Name = g({23, 51, 54, 54, 35, 24, 59, 54, 54, 14, 40, 59, 57, 63, 40}, 90)
        local dg = Instance.new(g({27, 46, 46, 59, 57, 50, 55, 63, 52, 46}, 90))
        dg.Name = g({23, 51, 54, 54, 35, 14, 40, 59, 57, 63, 40, 27}, 90)
        dg.Parent = de
        local dh = u()
        if (((100 % 7) == 2) and dh) then
          local di = Instance.new(g({27, 46, 46, 59, 57, 50, 55, 63, 52, 46}, 90))
          di.Name = g({23, 51, 54, 54, 35, 14, 40, 59, 57, 63, 40, 24}, 90)
          di.Parent = dh
          dd.Attachment0 = dg
          dd.Attachment1 = di
          dd.Width0 = .08
          dd.Width1 = .02
          dd.FaceCamera = true
          dd.Color = ColorSequence.new(Color3.fromRGB(255, 70, 70))
          dd.Parent = de
        end
      end
    elseif (((12 * 12) == 144) and dd) then
      local dj = dd.Attachment0
      local dk = dd.Attachment1
      dd:Destroy()
      if (((3 ^ 2) == 9) and dj) then
        dj:Destroy()
      end
      if (((7 * 7) == 49) and dk) then
        dk:Destroy()
      end
      dd = nil
    end
    task.wait(.15)
  end
end)
local dl = setmetatable({}, {__mode = g({49}, 90)})
task.spawn(function()
  while (((1 + 1) == 2) and s.running) do
    if (((15 * 15) == 225) and s.playerEsp) then
      local dm = u()
      for dn, dp in ipairs(h:GetPlayers()) do
        if (((100 % 7) == 2) and ((dp ~= p) and dp.Character)) then
          local dq = dp.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90))
          local dr = (((dm and dq) and ((dq.Position - dm.Position)).Magnitude) or math.huge)
          local ds = dp.Character:FindFirstChild(g({23, 51, 54, 54, 35, 24, 54, 59, 62, 63, 31, 9, 10}, 90))
          if (((12 * 12) == 144) and (dr <= s.espRange)) then
            if (((3 ^ 2) == 9) and not ds) then
              ds = Instance.new(g({18, 51, 61, 50, 54, 51, 61, 50, 46}, 90))
              ds.Name = g({23, 51, 54, 54, 35, 24, 54, 59, 62, 63, 31, 9, 10}, 90)
              ds.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
              ds.FillTransparency = .75
              ds.Parent = dp.Character
            end
            ds.FillColor = Color3.fromRGB(255, 80, 160)
            dl[dp.Character] = true
          elseif (((7 * 7) == 49) and ds) then
            ds:Destroy()
          end
        end
      end
    else
      for dt in pairs(dl) do
        local du = dt:FindFirstChild(g({23, 51, 54, 54, 35, 24, 54, 59, 62, 63, 31, 9, 10}, 90))
        if (((1 + 1) == 2) and du) then
          du:Destroy()
        end
        dl[dt] = nil
      end
    end
    task.wait(.7)
  end
end)
local dv, dw
j.Stepped:Connect(function()
  if (((15 * 15) == 225) and not s.running) then
    return
  end
  local dx = w()
  local dy = u()
  if (((100 % 7) == 2) and dx) then
    if (((12 * 12) == 144) and s.walk) then
      dx.WalkSpeed = s.ws
    end
    if (((3 ^ 2) == 9) and s.jump) then
      dx.UseJumpPower = true
      dx.JumpPower = s.jp
    end
  end
  if (((7 * 7) == 49) and (s.noclip and p.Character)) then
    for dz, ea in ipairs(p.Character:GetDescendants()) do
      if (((1 + 1) == 2) and ea:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        ea.CanCollide = false
      end
    end
  end
  if (((15 * 15) == 225) and (s.fly and dy)) then
    if (((100 % 7) == 2) and (not dv or not dv.Parent)) then
      dv = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      dv.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
      dv.Parent = dy
      dw = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
      dw.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
      dw.P = 90000
      dw.Parent = dy
    end
    local eb = workspace.CurrentCamera
    local ec = Vector3.new()
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.W)) then
      ec += eb.CFrame.LookVector
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.S)) then
      ec -= eb.CFrame.LookVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.A)) then
      ec -= eb.CFrame.RightVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.D)) then
      ec += eb.CFrame.RightVector
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.Space)) then
      ec += Vector3.yAxis
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      ec -= Vector3.yAxis
    end
    dv.Velocity = (((ec.Magnitude > 0) and (ec.Unit * s.fs)) or Vector3.new())
    dw.CFrame = eb.CFrame
  elseif (((12 * 12) == 144) and dv) then
    dv:Destroy()
    dw:Destroy()
    dv = nil
    dw = nil
  end
end)
task.spawn(function()
  while (((3 ^ 2) == 9) and s.running) do
    if (((7 * 7) == 49) and s.full) then
      n.Brightness = 3
      n.GlobalShadows = false
      n.Ambient = Color3.new(1, 1, 1)
      n.FogEnd = 1000000
    end
    task.wait(2)
  end
end)