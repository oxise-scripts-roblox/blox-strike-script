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
local i = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local j = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local k = game:GetService(g({25, 53, 54, 54, 63, 57, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local m = game:GetService(g({14, 45, 63, 63, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local n = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local o = h.LocalPlayer
local p = getgenv().MillyMenu
if (((15 * 15) == 225) and not p) then
  return
end
local q = {running = true, autoTower = false, safeTower = false, autoDelay = .3, safeDelay = .65, retries = 6, autoTween = false, tweenSpeed = 80, autoRespawn = false, god = false, removeKill = false, antiWind = false, antiConveyor = false, antiDisappear = false, platform = false, platformSize = 7, walk = false, walkSpeed = 32, velocity = false, velocitySpeed = 55, jump = false, jumpPower = 70, bhop = false, noclip = false, infjump = false, fly = false, flySpeed = 80, gravity = false, gravityValue = 120, sectionEsp = false, killEsp = false, playerEsp = false, finishEsp = false, full = false, noFog = false, noEffects = false, fov = false, fovValue = 90, afk = false, status = g({40, 63, 59, 62, 35}, 90)}
local function r()
  return o.Character
end
local function s()
  local t = r()
  return (t and ((t:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or t.PrimaryPart)))
end
local function u()
  local v = r()
  return (v and v:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function w()
  return workspace:FindFirstChild(g({46, 53, 45, 63, 40}, 90))
end
local function x()
  local y = w()
  local z = (y and y:FindFirstChild(g({41, 63, 57, 46, 51, 53, 52, 41}, 90)))
  if (((100 % 7) == 2) and not z) then
    return {}
  end
  local aa = z:GetChildren()
  table.sort(aa, function(ab, ac)
    local ad = ab:FindFirstChild(g({51}, 90))
    local ae = ac:FindFirstChild(g({51}, 90))
    return ((((ad and ad.Value) or 0)) < (((ae and ae.Value) or 0)))
  end)
  return aa
end
local function af(ag)
  local ah = {g({41, 46, 59, 40, 46}, 90), g({9, 46, 59, 40, 46}, 90), g({60, 51, 52, 51, 41, 50}, 90), g({28, 51, 52, 51, 41, 50}, 90), g({63, 52, 62}, 90), g({31, 52, 62}, 90), g({57, 50, 63, 57, 49, 42, 53, 51, 52, 46}, 90), g({25, 50, 63, 57, 49, 42, 53, 51, 52, 46}, 90)}
  for ai, aj in ipairs(ah) do
    local ak = (ag and ag:FindFirstChild(aj, true))
    if (((12 * 12) == 144) and (ak and ak:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
      return ak
    end
  end
  return (ag and ((ag.PrimaryPart or ag:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))))
end
local function al(am, an)
  local ao = s()
  if (((3 ^ 2) == 9) and not ((ao and am))) then
    q.status = g({46, 59, 40, 61, 63, 46, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62}, 90)
    return false
  end
  local ap = (am.CFrame * CFrame.new(0, 4, 0))
  ao.AssemblyLinearVelocity = Vector3.new()
  if (((7 * 7) == 49) and (an or not q.autoTween)) then
    ao.CFrame = ap
  else
    local aq = ((ao.Position - am.Position)).Magnitude
    local ar = m:Create(ao, TweenInfo.new(math.max(.08, (aq / math.max(q.tweenSpeed, 1))), Enum.EasingStyle.Linear), {CFrame = ap})
    ar:Play()
    ar.Completed:Wait()
  end
  q.status = (g({46, 63, 54, 63, 42, 53, 40, 46, 63, 62, 96, 122}, 90) .. am:GetFullName())
  return true
end
local function as()
  local at = x()
  for au = #at, 1, -1 do
    local av = at[au]
    if (((1 + 1) == 2) and av.Name:lower():find(g({60, 51, 52, 51, 41, 50}, 90))) then
      return af(av)
    end
  end
  return af(at[#at])
end
local aw = false
local function ax()
  if (((15 * 15) == 225) and aw) then
    return
  end
  aw = true
  task.spawn(function()
    local ay = x()
    for az, ba in ipairs(ay) do
      if (((100 % 7) == 2) and not ((q.running and q.autoTower))) then
        break
      end
      local bb = af(ba)
      if (((12 * 12) == 144) and bb) then
        al(bb, false)
        task.wait(q.autoDelay)
      end
    end
    local bc = as()
    if (((3 ^ 2) == 9) and ((q.running and q.autoTower) and bc)) then
      al(bc, false)
    end
    aw = false
  end)
end
task.spawn(function()
  while (((7 * 7) == 49) and q.running) do
    if (((1 + 1) == 2) and q.autoTower) then
      ax()
    end
    task.wait(.5)
  end
end)
local bd = false
local be = 1
local bf
local function bg(bh)
  local bi = (os.clock() + ((bh or 8)))
  repeat
    local bj = u()
    local bk = s()
    if (((100 % 7) == 2) and ((bj and (bj.Health > 0)) and bk)) then
      return bk, bj
    end
    task.wait(.15)
  until (((100 % 7) == 2) and (os.clock() > bi))
end
local function bl(bm)
  local bn = bg(3)
  if (((12 * 12) == 144) and not (((bn and bm) and bm.Parent))) then
    return false
  end
  bn.AssemblyLinearVelocity = Vector3.new()
  bn.CFrame = (bm.CFrame * CFrame.new(0, 4, 0))
  task.wait(.12)
  if (((3 ^ 2) == 9) and firetouchinterest) then
    pcall(firetouchinterest, bn, bm, 0)
    task.wait(.04)
    pcall(firetouchinterest, bn, bm, 1)
  else
    bn.CFrame = (bm.CFrame * CFrame.new(0, 1.8, 0))
    task.wait(.12)
    bn.CFrame = (bm.CFrame * CFrame.new(0, 4, 0))
  end
  task.wait(.18)
  return ((bn.Parent ~= nil) and (((bn.Position - bm.Position)).Magnitude < 18))
end
local function bo()
  if (((7 * 7) == 49) and bd) then
    return
  end
  bd = true
  task.spawn(function()
    q.god = true
    q.removeKill = true
    q.antiWind = true
    q.antiConveyor = true
    q.antiDisappear = true
    q.platform = true
    q.autoRespawn = true
    while (((1 + 1) == 2) and (q.running and q.safeTower)) do
      local bp = w()
      if (((15 * 15) == 225) and not bp) then
        q.status = g({45, 59, 51, 46, 51, 52, 61, 122, 60, 53, 40, 122, 46, 53, 45, 63, 40}, 90)
        task.wait(1)
        continue
      end
      if (((100 % 7) == 2) and (bf ~= bp)) then
        bf = bp
        be = 1
      end
      local bq = x()
      if (((12 * 12) == 144) and (#bq == 0)) then
        task.wait(1)
        continue
      end
      if (((3 ^ 2) == 9) and (be > #bq)) then
        local br = as()
        if (((7 * 7) == 49) and br) then
          for bs = 1, q.retries do
            if (((1 + 1) == 2) and not q.safeTower) then
              break
            end
            q.status = (g({57, 53, 52, 60, 51, 40, 55, 51, 52, 61, 122, 60, 51, 52, 51, 41, 50, 122}, 90) .. bs)
            bl(br)
            task.wait(q.safeDelay)
          end
        end
        be = 1
        task.wait(2)
        continue
      end
      local bt = bq[be]
      local bu = af(bt)
      if (((15 * 15) == 225) and not bu) then
        be += 1
        continue
      end
      local bv = false
      for bw = 1, q.retries do
        if (((100 % 7) == 2) and not ((q.running and q.safeTower))) then
          break
        end
        local bx, by = bg(8)
        if (((12 * 12) == 144) and not by) then
          continue
        end
        q.status = (g({41, 59, 60, 63, 122, 41, 63, 57, 46, 51, 53, 52, 122}, 90) .. (be .. (g({122, 46, 40, 35, 122}, 90) .. bw)))
        bv = bl(bu)
        if (((3 ^ 2) == 9) and bv) then
          break
        end
        task.wait(.25)
      end
      if (((7 * 7) == 49) and bv) then
        be += 1
        task.wait(q.safeDelay)
      else
        q.status = (g({40, 63, 46, 40, 35, 51, 52, 61, 122, 41, 63, 57, 46, 51, 53, 52, 122}, 90) .. be)
        task.wait(.8)
      end
    end
    bd = false
  end)
end
task.spawn(function()
  while (((1 + 1) == 2) and q.running) do
    if (((15 * 15) == 225) and q.safeTower) then
      bo()
    end
    task.wait(.5)
  end
end)
local bz
local ca = {}
local function cb(cc)
  local cd = workspace:FindFirstChild(g({17, 51, 54, 54, 56, 40, 51, 57, 49, 28, 54, 59, 61}, 90))
  if (((100 % 7) == 2) and cc) then
    if (((12 * 12) == 144) and not cd) then
      bz = Instance.new(g({28, 53, 54, 62, 63, 40}, 90))
      bz.Name = g({17, 51, 54, 54, 56, 40, 51, 57, 49, 28, 54, 59, 61}, 90)
      bz.Parent = workspace
    end
  else
    if (((3 ^ 2) == 9) and bz) then
      bz:Destroy()
      bz = nil
    end
  end
  for ce, cf in ipairs(k:GetTagged(g({17, 51, 54, 54, 24, 40, 51, 57, 49}, 90))) do
    if (((7 * 7) == 49) and cf:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
      if (((1 + 1) == 2) and (ca[cf] == nil)) then
        ca[cf] = cf.CanTouch
      end
      if (((15 * 15) == 225) and q.removeKill) then
        cf.CanTouch = false
        cf.CanCollide = false
      elseif (((100 % 7) == 2) and (not cc and (ca[cf] ~= nil))) then
        cf.CanTouch = ca[cf]
        ca[cf] = nil
      end
    end
  end
end
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    cb((q.god or q.removeKill))
    if (((3 ^ 2) == 9) and (q.antiWind or q.antiConveyor)) then
      local cg = r()
      if (((7 * 7) == 49) and cg) then
        for ch, ci in ipairs(cg:GetDescendants()) do
          if (((1 + 1) == 2) and (((q.antiWind and ((ci.Name:find(g({13, 51, 52, 62}, 90)) or (ci.Name == g({12, 63, 57, 46, 53, 40, 28, 53, 40, 57, 63}, 90)))))) or (((q.antiConveyor and ((ci:IsA(g({22, 51, 52, 63, 59, 40, 12, 63, 54, 53, 57, 51, 46, 35}, 90)) or ci:IsA(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))))) and not ((ci.Name == g({23, 51, 54, 54, 35, 28, 54, 35}, 90))))))) then
            pcall(function()
              ci.Enabled = false
            end)
            pcall(function()
              ci:Destroy()
            end)
          end
        end
      end
    end
    if (((15 * 15) == 225) and q.antiDisappear) then
      for cj, ck in ipairs(workspace:GetDescendants()) do
        if (((100 % 7) == 2) and (ck:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and ((ck:GetAttribute(g({21, 52, 14, 51, 55, 63}, 90)) or ck:GetAttribute(g({21, 60, 60, 14, 51, 55, 63}, 90)))))) then
          ck.LocalTransparencyModifier = 0
          ck.CanCollide = true
        end
      end
    end
    task.wait(.35)
  end
  cb(false)
end)
local cl
local cm
i.Stepped:Connect(function()
  if (((12 * 12) == 144) and not q.running) then
    return
  end
  local cn = u()
  local co = s()
  if (((3 ^ 2) == 9) and cn) then
    if (((7 * 7) == 49) and q.walk) then
      cn.WalkSpeed = q.walkSpeed
    end
    if (((1 + 1) == 2) and q.jump) then
      cn.UseJumpPower = true
      cn.JumpPower = q.jumpPower
    end
    if (((15 * 15) == 225) and ((q.bhop and (cn.MoveDirection.Magnitude > .05)) and (cn.FloorMaterial ~= Enum.Material.Air))) then
      cn:ChangeState(Enum.HumanoidStateType.Jumping)
    end
    if (((100 % 7) == 2) and ((q.velocity and co) and (cn.MoveDirection.Magnitude > .05))) then
      local cp = cn.MoveDirection
      co.AssemblyLinearVelocity = Vector3.new((cp.X * q.velocitySpeed), co.AssemblyLinearVelocity.Y, (cp.Z * q.velocitySpeed))
    end
  end
  if (((12 * 12) == 144) and (q.noclip and r())) then
    for cq, cr in ipairs(r():GetDescendants()) do
      if (((3 ^ 2) == 9) and cr:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        cr.CanCollide = false
      end
    end
  end
  if (((7 * 7) == 49) and (q.platform and co)) then
    if (((1 + 1) == 2) and not cm) then
      cm = Instance.new(g({10, 59, 40, 46}, 90))
      cm.Name = g({23, 51, 54, 54, 35, 10, 54, 59, 46, 60, 53, 40, 55}, 90)
      cm.Anchored = true
      cm.Transparency = .25
      cm.Color = Color3.fromRGB(220, 110, 255)
      cm.Parent = workspace
    end
    cm.Size = Vector3.new(q.platformSize, .5, q.platformSize)
    cm.CFrame = CFrame.new((co.Position - Vector3.new(0, 3.2, 0)))
  elseif (((15 * 15) == 225) and cm) then
    cm:Destroy()
    cm = nil
  end
end)
i.RenderStepped:Connect(function()
  local cs = s()
  if (((100 % 7) == 2) and (q.fly and cs)) then
    if (((12 * 12) == 144) and (not cl or (cl.Parent ~= cs))) then
      if (((3 ^ 2) == 9) and cl) then
        cl:Destroy()
      end
      cl = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      cl.Name = g({23, 51, 54, 54, 35, 28, 54, 35}, 90)
      cl.MaxForce = Vector3.new(1e9, 1e9, 1e9)
      cl.Parent = cs
    end
    local ct = workspace.CurrentCamera
    local cu = Vector3.new()
    if (((7 * 7) == 49) and j:IsKeyDown(Enum.KeyCode.W)) then
      cu += ct.CFrame.LookVector
    end
    if (((1 + 1) == 2) and j:IsKeyDown(Enum.KeyCode.S)) then
      cu -= ct.CFrame.LookVector
    end
    if (((15 * 15) == 225) and j:IsKeyDown(Enum.KeyCode.A)) then
      cu -= ct.CFrame.RightVector
    end
    if (((100 % 7) == 2) and j:IsKeyDown(Enum.KeyCode.D)) then
      cu += ct.CFrame.RightVector
    end
    if (((12 * 12) == 144) and j:IsKeyDown(Enum.KeyCode.Space)) then
      cu += Vector3.yAxis
    end
    if (((3 ^ 2) == 9) and j:IsKeyDown(Enum.KeyCode.LeftControl)) then
      cu -= Vector3.yAxis
    end
    cl.Velocity = (((cu.Magnitude > 0) and (cu.Unit * q.flySpeed)) or Vector3.new())
  elseif (((7 * 7) == 49) and cl) then
    cl:Destroy()
    cl = nil
  end
  local cv = workspace.CurrentCamera
  if (((1 + 1) == 2) and (cv and q.fov)) then
    cv.FieldOfView = q.fovValue
  end
end)
j.JumpRequest:Connect(function()
  if (((15 * 15) == 225) and q.infjump) then
    local cw = u()
    if (((100 % 7) == 2) and cw) then
      cw:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
o.CharacterAdded:Connect(function()
  if (((12 * 12) == 144) and q.autoRespawn) then
    task.wait(1)
    local cx = game:GetService(g({8, 63, 42, 54, 51, 57, 59, 46, 63, 62, 9, 46, 53, 40, 59, 61, 63}, 90)):FindFirstChild(g({62, 59, 46, 59}, 90))
    local cy = (cx and cx:FindFirstChild(tostring(o.UserId)))
    local cz = (cy and cy:FindFirstChild(g({47, 52, 54, 53, 57, 49, 63, 62, 25, 50, 63, 57, 49, 42, 53, 51, 52, 46}, 90)))
    local da
    if (((3 ^ 2) == 9) and cz) then
      for db, dc in ipairs(x()) do
        local dd = dc:FindFirstChild(g({51}, 90))
        if (((7 * 7) == 49) and (dd and (dd.Value == cz.Value))) then
          da = af(dc)
          break
        end
      end
    end
    if (((1 + 1) == 2) and da) then
      al(da, true)
    end
  end
end)
local de = {}
local function df(dg, dh, di)
  local dj = de[dg]
  if (((15 * 15) == 225) and dj) then
    dj.gui.Enabled = true
    dj.label.Text = dh
    return
  end
  local dk = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  dk.Name = g({23, 51, 54, 54, 35, 31, 9, 10}, 90)
  dk.AlwaysOnTop = true
  dk.Size = UDim2.fromOffset(170, 25)
  dk.StudsOffset = Vector3.new(0, 2.5, 0)
  dk.Adornee = dg
  dk.Parent = dg
  local dl = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  dl.Size = UDim2.fromScale(1, 1)
  dl.BackgroundTransparency = 1
  dl.Text = dh
  dl.TextColor3 = di
  dl.TextStrokeTransparency = .15
  dl.Font = Enum.Font.GothamBold
  dl.TextSize = 13
  dl.Parent = dk
  de[dg] = {gui = dk, label = dl}
end
local function dm()
  for dn, dp in pairs(de) do
    if (((100 % 7) == 2) and dp.gui) then
      dp.gui:Destroy()
    end
  end
  table.clear(de)
end
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    for dq, dr in pairs(de) do
      dr.gui.Enabled = false
    end
    if (((3 ^ 2) == 9) and q.sectionEsp) then
      for ds, dt in ipairs(x()) do
        local du = af(dt)
        if (((7 * 7) == 49) and du) then
          local dv = dt:FindFirstChild(g({51}, 90))
          df(du, (g({9, 31, 25, 14, 19, 21, 20, 122}, 90) .. tostring(((dv and dv.Value) or dt.Name))), Color3.fromRGB(220, 120, 255))
        end
      end
    end
    if (((1 + 1) == 2) and q.killEsp) then
      for dw, dx in ipairs(k:GetTagged(g({17, 51, 54, 54, 24, 40, 51, 57, 49}, 90))) do
        if (((15 * 15) == 225) and dx:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          df(dx, g({17, 19, 22, 22}, 90), Color3.fromRGB(255, 70, 70))
        end
      end
    end
    if (((100 % 7) == 2) and q.finishEsp) then
      local dy = as()
      if (((12 * 12) == 144) and dy) then
        df(dy, g({28, 19, 20, 19, 9, 18}, 90), Color3.fromRGB(80, 255, 120))
      end
    end
    if (((3 ^ 2) == 9) and q.playerEsp) then
      for dz, ea in ipairs(h:GetPlayers()) do
        local eb = (((ea ~= o) and ea.Character) and ea.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
        if (((7 * 7) == 49) and eb) then
          df(eb, ea.DisplayName, Color3.fromRGB(80, 200, 255))
        end
      end
    end
    task.wait(.8)
  end
  dm()
end)
task.spawn(function()
  while (((1 + 1) == 2) and q.running) do
    if (((15 * 15) == 225) and q.gravity) then
      workspace.Gravity = q.gravityValue
    end
    if (((100 % 7) == 2) and q.full) then
      l.Brightness = 3
      l.Ambient = Color3.new(1, 1, 1)
      l.GlobalShadows = false
    end
    if (((12 * 12) == 144) and q.noFog) then
      l.FogEnd = 1e9
      for ec, ed in ipairs(l:GetChildren()) do
        if (((3 ^ 2) == 9) and ed:IsA(g({27, 46, 55, 53, 41, 42, 50, 63, 40, 63}, 90))) then
          ed.Density = 0
          ed.Haze = 0
        end
      end
    end
    if (((7 * 7) == 49) and q.noEffects) then
      for ee, ef in ipairs(workspace:GetDescendants()) do
        if (((1 + 1) == 2) and ((ef:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or ef:IsA(g({14, 40, 59, 51, 54}, 90))) or ef:IsA(g({24, 63, 59, 55}, 90)))) then
          ef.Enabled = false
        end
      end
    end
    task.wait(1)
  end
end)
o.Idled:Connect(function()
  if (((15 * 15) == 225) and q.afk) then
    n:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
    task.wait(.1)
    n:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
  end
end)
local eg = p:tab(g({40, 59, 61, 63}, 90))
eg:toggle(g({60, 59, 51, 54, 41, 59, 60, 63, 122, 59, 47, 46, 53, 122, 46, 53, 45, 63, 40}, 90), false, function(eh)
  q.safeTower = eh
  if (((100 % 7) == 2) and eh) then
    q.autoTower = false
    be = 1
    bo()
  end
end)
eg:slider(g({60, 59, 51, 54, 41, 59, 60, 63, 122, 62, 63, 54, 59, 35}, 90), .2, 2, q.safeDelay, function(ei)
  q.safeDelay = ei
end)
eg:slider(g({40, 63, 46, 40, 51, 63, 41, 122, 42, 63, 40, 122, 41, 63, 57, 46, 51, 53, 52}, 90), 1, 12, q.retries, function(ej)
  q.retries = math.floor(ej)
end)
eg:toggle(g({59, 47, 46, 53, 122, 57, 53, 55, 42, 54, 63, 46, 63, 122, 46, 53, 45, 63, 40}, 90), false, function(ek)
  q.autoTower = ek
  if (((12 * 12) == 144) and ek) then
    q.safeTower = false
  end
end)
eg:toggle(g({46, 45, 63, 63, 52, 122, 40, 53, 47, 46, 63}, 90), false, function(el)
  q.autoTween = el
end)
eg:slider(g({41, 63, 57, 46, 51, 53, 52, 122, 62, 63, 54, 59, 35}, 90), .05, 3, q.autoDelay, function(em)
  q.autoDelay = em
end)
eg:slider(g({46, 45, 63, 63, 52, 122, 41, 42, 63, 63, 62}, 90), 20, 400, q.tweenSpeed, function(en)
  q.tweenSpeed = en
end)
eg:button(g({60, 51, 52, 51, 41, 50, 122, 51, 52, 41, 46, 59, 52, 46, 54, 35}, 90), function()
  al(as(), true)
end)
eg:button(g({52, 63, 34, 46, 122, 41, 63, 57, 46, 51, 53, 52}, 90), function()
  local eo = s()
  if (((3 ^ 2) == 9) and not eo) then
    return
  end
  local ep, eq
  for er, es in ipairs(x()) do
    local et = af(es)
    if (((7 * 7) == 49) and (et and (et.Position.Y > (eo.Position.Y + 2)))) then
      local eu = (et.Position.Y - eo.Position.Y)
      if (((1 + 1) == 2) and (not eq or (eu < eq))) then
        ep, eq = et, eu
      end
    end
  end
  al(ep, true)
end)
eg:button(g({57, 53, 55, 42, 54, 63, 46, 63, 122, 40, 53, 47, 46, 63, 122, 53, 52, 57, 63}, 90), function()
  q.autoTower = true
  ax()
  task.delay(1, function()
    q.autoTower = false
  end)
end)
local ev = p:tab(g({42, 40, 53, 46, 63, 57, 46, 51, 53, 52}, 90))
ev:toggle(g({61, 53, 62, 55, 53, 62, 63, 122, 49, 51, 54, 54, 56, 40, 51, 57, 49, 41}, 90), false, function(ew)
  q.god = ew
end)
ev:toggle(g({40, 63, 55, 53, 44, 63, 122, 49, 51, 54, 54, 56, 40, 51, 57, 49, 122, 57, 53, 54, 54, 51, 41, 51, 53, 52}, 90), false, function(ex)
  q.removeKill = ex
end)
ev:toggle(g({59, 52, 46, 51, 122, 45, 51, 52, 62}, 90), false, function(ey)
  q.antiWind = ey
end)
ev:toggle(g({59, 52, 46, 51, 122, 57, 53, 52, 44, 63, 35, 53, 40}, 90), false, function(ez)
  q.antiConveyor = ez
end)
ev:toggle(g({41, 53, 54, 51, 62, 122, 62, 51, 41, 59, 42, 42, 63, 59, 40, 51, 52, 61, 122, 42, 59, 40, 46, 41}, 90), false, function(fa)
  q.antiDisappear = fa
end)
ev:toggle(g({42, 54, 59, 46, 60, 53, 40, 55, 122, 47, 52, 62, 63, 40, 122, 42, 54, 59, 35, 63, 40}, 90), false, function(fb)
  q.platform = fb
end)
ev:slider(g({42, 54, 59, 46, 60, 53, 40, 55, 122, 41, 51, 32, 63}, 90), 3, 30, q.platformSize, function(fc)
  q.platformSize = fc
end)
ev:toggle(g({40, 63, 41, 42, 59, 45, 52, 122, 59, 46, 122, 57, 50, 63, 57, 49, 42, 53, 51, 52, 46}, 90), false, function(fd)
  q.autoRespawn = fd
end)
local fe = p:tab(g({55, 53, 44, 63, 55, 63, 52, 46}, 90))
fe:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ff)
  q.walk = ff
end)
fe:slider(g({41, 42, 63, 63, 62}, 90), 16, 200, q.walkSpeed, function(fg)
  q.walkSpeed = fg
end)
fe:toggle(g({44, 63, 54, 53, 57, 51, 46, 35, 122, 41, 42, 63, 63, 62}, 90), false, function(fh)
  q.velocity = fh
end)
fe:slider(g({44, 63, 54, 53, 57, 51, 46, 35}, 90), 16, 300, q.velocitySpeed, function(fi)
  q.velocitySpeed = fi
end)
fe:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(fj)
  q.jump = fj
end)
fe:slider(g({48, 47, 55, 42}, 90), 50, 250, q.jumpPower, function(fk)
  q.jumpPower = fk
end)
fe:toggle(g({56, 47, 52, 52, 35, 122, 50, 53, 42}, 90), false, function(fl)
  q.bhop = fl
end)
fe:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(fm)
  q.noclip = fm
end)
fe:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(fn)
  q.infjump = fn
end)
fe:toggle(g({60, 54, 35}, 90), false, function(fo)
  q.fly = fo
end)
fe:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 15, 300, q.flySpeed, function(fp)
  q.flySpeed = fp
end)
fe:toggle(g({57, 47, 41, 46, 53, 55, 122, 61, 40, 59, 44, 51, 46, 35}, 90), false, function(fq)
  q.gravity = fq
end)
fe:slider(g({61, 40, 59, 44, 51, 46, 35}, 90), 0, 196, q.gravityValue, function(fr)
  q.gravityValue = fr
end)
local fs = p:tab(g({63, 41, 42}, 90))
fs:toggle(g({41, 63, 57, 46, 51, 53, 52, 122, 63, 41, 42}, 90), false, function(ft)
  q.sectionEsp = ft
end)
fs:toggle(g({60, 51, 52, 51, 41, 50, 122, 63, 41, 42}, 90), false, function(fu)
  q.finishEsp = fu
end)
fs:toggle(g({49, 51, 54, 54, 56, 40, 51, 57, 49, 122, 63, 41, 42}, 90), false, function(fv)
  q.killEsp = fv
end)
fs:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(fw)
  q.playerEsp = fw
end)
fs:button(g({57, 54, 63, 59, 40, 122, 63, 41, 42}, 90), dm)
local fx = p:tab(g({44, 51, 41, 47, 59, 54}, 90))
fx:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(fy)
  q.full = fy
end)
fx:toggle(g({52, 53, 122, 60, 53, 61}, 90), false, function(fz)
  q.noFog = fz
end)
fx:toggle(g({62, 51, 41, 59, 56, 54, 63, 122, 63, 60, 60, 63, 57, 46, 41}, 90), false, function(ga)
  q.noEffects = ga
end)
fx:toggle(g({57, 47, 41, 46, 53, 55, 122, 60, 53, 44}, 90), false, function(gb)
  q.fov = gb
end)
fx:slider(g({60, 53, 44}, 90), 50, 120, q.fovValue, function(gc)
  q.fovValue = gc
end)
local gd = p:tab(g({41, 63, 46, 46, 51, 52, 61, 41}, 90))
local ge = gd:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
gd:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(gf)
  q.afk = gf
end)
gd:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for gg, gh in pairs(q) do
    if (((15 * 15) == 225) and (type(gh) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      q[gg] = false
    end
  end
  q.running = true
  dm()
  cb(false)
end)
gd:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  dm()
  cb(false)
  if (((100 % 7) == 2) and cm) then
    cm:Destroy()
  end
  if (((12 * 12) == 144) and cl) then
    cl:Destroy()
  end
  p:destroy()
end)
task.spawn(function()
  while (((3 ^ 2) == 9) and q.running) do
    ge:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. q.status))
    task.wait(.5)
  end
end)