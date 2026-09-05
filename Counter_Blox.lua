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
local p = {running = true, silent = false, aim = false, team = true, visible = false, fov = 180, hitpart = g({18, 63, 59, 62}, 90), prediction = .12, smooth = .18, trigger = false, autoFire = false, rapid = false, rapidValue = .01, recoil = false, spread = false, reload = false, wall = false, headbox = false, headboxSize = 8, bhop = false, bhopSpeed = 55, bhopPower = 42, airAccel = 1, walk = false, walkSpeed = 24, jump = false, jumpPower = 65, noclip = false, infjump = false, fly = false, flySpeed = 80, playerEsp = false, boxEsp = false, nameEsp = false, healthEsp = false, bombEsp = false, weaponEsp = false, espRange = 3000, full = false, noSmoke = false, noFlash = false, noScope = false, fovCircle = true, afk = false, status = g({40, 63, 59, 62, 35}, 90)}
local function q(r)
  return (r and r.Character)
end
local function s(t)
  local u = q((t or n))
  return (u and ((u:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or u.PrimaryPart)))
end
local function v(w)
  local x = q((w or n))
  return (x and x:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function y(z)
  if (((100 % 7) == 2) and (z == n)) then
    return false
  end
  if (((12 * 12) == 144) and not p.team) then
    return true
  end
  return not (((n.Team and z.Team) and (n.Team == z.Team)))
end
local function aa(ab)
  local ac = q(ab)
  if (((3 ^ 2) == 9) and not ac) then
    return
  end
  return ((ac:FindFirstChild(p.hitpart) or ac:FindFirstChild(g({18, 63, 59, 62}, 90))) or ac:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function ad(ae)
  local af = workspace.CurrentCamera
  if (((7 * 7) == 49) and not ((af and ae))) then
    return false
  end
  local ag = RaycastParams.new()
  ag.FilterType = Enum.RaycastFilterType.Exclude
  ag.FilterDescendantsInstances = {q(n), af}
  local ah = workspace:Raycast(af.CFrame.Position, (ae.Position - af.CFrame.Position), ag)
  return (not ah or ah.Instance:IsDescendantOf(ae.Parent))
end
local function ai()
  local aj = workspace.CurrentCamera
  if (((1 + 1) == 2) and not aj) then
    return
  end
  local ak = k:GetMouseLocation()
  local al, am = nil, p.fov
  for an, ao in ipairs(h:GetPlayers()) do
    local ap = v(ao)
    local aq = aa(ao)
    if (((15 * 15) == 225) and (((y(ao) and ap) and (ap.Health > 0)) and aq)) then
      local ar, as = aj:WorldToViewportPoint(aq.Position)
      if (((100 % 7) == 2) and as) then
        local at = ((Vector2.new(ar.X, ar.Y) - ak)).Magnitude
        if (((12 * 12) == 144) and ((at < am) and ((not p.visible or ad(aq))))) then
          al, am = aq, at
        end
      end
    end
  end
  return al, am
end
local au = (Drawing and Drawing.new(g({25, 51, 40, 57, 54, 63}, 90)))
if (((3 ^ 2) == 9) and au) then
  au.Visible = false
  au.Filled = false
  au.Thickness = 1.5
  au.Color = Color3.fromRGB(255, 130, 210)
end
local av
if (((7 * 7) == 49) and ((hookmetamethod and getnamecallmethod) and newcclosure)) then
  av = hookmetamethod(game, g({5, 5, 52, 59, 55, 63, 57, 59, 54, 54}, 90), newcclosure(function(aw, ...)
    local ax = getnamecallmethod()
    local ay = {...}
    if (((1 + 1) == 2) and (((p.running and p.silent) and (aw == workspace)) and (ax == g({8, 59, 35, 57, 59, 41, 46}, 90)))) then
      local az = ai()
      if (((15 * 15) == 225) and ((az and (typeof(ay[1]) == g({12, 63, 57, 46, 53, 40, 105}, 90))) and (typeof(ay[2]) == g({12, 63, 57, 46, 53, 40, 105}, 90)))) then
        local ba = (az.Position + (az.AssemblyLinearVelocity * p.prediction))
        ay[2] = (((ba - ay[1])).Unit * math.max(ay[2].Magnitude, 1000))
        return av(aw, table.unpack(ay))
      end
    elseif (((100 % 7) == 2) and ((p.running and p.silent) and (((ax == g({28, 51, 52, 62, 10, 59, 40, 46, 21, 52, 8, 59, 35}, 90)) or (ax == g({28, 51, 52, 62, 10, 59, 40, 46, 21, 52, 8, 59, 35, 13, 51, 46, 50, 19, 61, 52, 53, 40, 63, 22, 51, 41, 46}, 90)))))) then
      local bb = ai()
      if (((12 * 12) == 144) and (bb and (typeof(ay[1]) == g({8, 59, 35}, 90)))) then
        local bc = ay[1].Origin
        local bd = (bb.Position + (bb.AssemblyLinearVelocity * p.prediction))
        ay[1] = Ray.new(bc, (((bd - bc)).Unit * 5000))
        return av(aw, table.unpack(ay))
      end
    end
    return av(aw, ...)
  end))
end
local be = {}
local function bf(bg, bh)
  if (((3 ^ 2) == 9) and (be[bg] == nil)) then
    be[bg] = bg.Value
  end
  pcall(function()
    bg.Value = bh
  end)
end
local function bi()
  local bj = {i:FindFirstChild(g({13, 63, 59, 42, 53, 52, 41}, 90)), q(n), n:FindFirstChildOfClass(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))}
  for bk, bl in ipairs(bj) do
    if (((7 * 7) == 49) and bl) then
      for bm, bn in ipairs(bl:GetDescendants()) do
        if (((1 + 1) == 2) and (bn:IsA(g({20, 47, 55, 56, 63, 40, 12, 59, 54, 47, 63}, 90)) or bn:IsA(g({19, 52, 46, 12, 59, 54, 47, 63}, 90)))) then
          local bo = bn.Name:lower()
          if (((15 * 15) == 225) and (p.rapid and ((((bo:find(g({60, 51, 40, 63, 40, 59, 46, 63}, 90)) or bo:find(g({57, 53, 53, 54, 62, 53, 45, 52}, 90))) or bo:find(g({62, 63, 54, 59, 35}, 90))) or bo:find(g({41, 50, 53, 53, 46, 45, 59, 51, 46}, 90)))))) then
            bf(bn, p.rapidValue)
          elseif (((100 % 7) == 2) and (p.recoil and bo:find(g({40, 63, 57, 53, 51, 54}, 90)))) then
            bf(bn, 0)
          elseif (((12 * 12) == 144) and (p.spread and ((bo:find(g({41, 42, 40, 63, 59, 62}, 90)) or bo:find(g({59, 57, 57, 47, 40, 59, 57, 35}, 90)))))) then
            bf(bn, ((bo:find(g({59, 57, 57, 47, 40, 59, 57, 35}, 90)) and 100) or 0))
          elseif (((3 ^ 2) == 9) and (p.reload and bo:find(g({40, 63, 54, 53, 59, 62}, 90)))) then
            bf(bn, .01)
          end
        end
      end
    end
  end
  for bp, bq in pairs(be) do
    if (((7 * 7) == 49) and bp.Parent) then
      local br = bp.Name:lower()
      local bs = (((((p.rapid and ((((br:find(g({60, 51, 40, 63, 40, 59, 46, 63}, 90)) or br:find(g({57, 53, 53, 54, 62, 53, 45, 52}, 90))) or br:find(g({62, 63, 54, 59, 35}, 90))) or br:find(g({41, 50, 53, 53, 46, 45, 59, 51, 46}, 90)))))) or ((p.recoil and br:find(g({40, 63, 57, 53, 51, 54}, 90))))) or ((p.spread and ((br:find(g({41, 42, 40, 63, 59, 62}, 90)) or br:find(g({59, 57, 57, 47, 40, 59, 57, 35}, 90))))))) or ((p.reload and br:find(g({40, 63, 54, 53, 59, 62}, 90)))))
      if (((1 + 1) == 2) and not bs) then
        pcall(function()
          bp.Value = bq
        end)
        be[bp] = nil
      end
    else
      be[bp] = nil
    end
  end
end
local bt = {}
local function bu()
  local bv = workspace:FindFirstChild(g({23, 59, 42}, 90))
  local bw = (bv and bv:FindFirstChild(g({29, 63, 53, 55, 63, 46, 40, 35}, 90)))
  if (((15 * 15) == 225) and not bw) then
    return
  end
  for bx, by in ipairs(bw:GetDescendants()) do
    if (((100 % 7) == 2) and by:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
      if (((12 * 12) == 144) and (bt[by] == nil)) then
        bt[by] = by.CanQuery
      end
      by.CanQuery = not p.wall
    end
  end
  if (((3 ^ 2) == 9) and not p.wall) then
    for bz, ca in pairs(bt) do
      if (((7 * 7) == 49) and bz.Parent) then
        bz.CanQuery = ca
      end
      bt[bz] = nil
    end
  end
end
local cb = {}
local function cc()
  for cd, ce in ipairs(h:GetPlayers()) do
    local cf = aa(ce)
    if (((1 + 1) == 2) and (y(ce) and cf)) then
      if (((15 * 15) == 225) and not cb[cf]) then
        cb[cf] = {cf.Size, cf.Transparency, cf.CanCollide}
      end
      if (((100 % 7) == 2) and p.headbox) then
        cf.Size = Vector3.new(p.headboxSize, p.headboxSize, p.headboxSize)
        cf.Transparency = .7
        cf.CanCollide = false
      else
        local cg = cb[cf]
        if (((12 * 12) == 144) and cg) then
          cf.Size = cg[1]
          cf.Transparency = cg[2]
          cf.CanCollide = cg[3]
          cb[cf] = nil
        end
      end
    end
  end
end
j.RenderStepped:Connect(function()
  if (((3 ^ 2) == 9) and not p.running) then
    return
  end
  local ch = workspace.CurrentCamera
  local ci = ai()
  if (((7 * 7) == 49) and au) then
    au.Visible = p.fovCircle
    au.Radius = p.fov
    au.Position = k:GetMouseLocation()
  end
  if (((1 + 1) == 2) and ((p.aim and ch) and ci)) then
    local cj = (ci.Position + (ci.AssemblyLinearVelocity * p.prediction))
    ch.CFrame = ch.CFrame:Lerp(CFrame.lookAt(ch.CFrame.Position, cj), math.clamp(p.smooth, 0.01, 1))
  end
  if (((15 * 15) == 225) and ((((p.trigger or p.autoFire)) and ci) and mouse1press)) then
    if (((100 % 7) == 2) and (p.autoFire or ad(ci))) then
      mouse1press()
      task.wait(.01)
      if (((12 * 12) == 144) and mouse1release) then
        mouse1release()
      end
    end
  end
end)
j.Stepped:Connect(function()
  if (((3 ^ 2) == 9) and not p.running) then
    return
  end
  local ck = v()
  local cl = s()
  if (((7 * 7) == 49) and ck) then
    if (((1 + 1) == 2) and p.walk) then
      ck.WalkSpeed = p.walkSpeed
    end
    if (((15 * 15) == 225) and p.jump) then
      ck.UseJumpPower = true
      ck.JumpPower = p.jumpPower
    end
    if (((100 % 7) == 2) and (p.bhop and (ck.MoveDirection.Magnitude > .05))) then
      ck.Jump = true
      local cm = ck.MoveDirection
      cl.AssemblyLinearVelocity = Vector3.new((cm.X * p.bhopSpeed), math.max(cl.AssemblyLinearVelocity.Y, p.bhopPower), (cm.Z * p.bhopSpeed))
    end
  end
  if (((12 * 12) == 144) and (p.noclip and q(n))) then
    for cn, co in ipairs(q(n):GetDescendants()) do
      if (((3 ^ 2) == 9) and co:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        co.CanCollide = false
      end
    end
  end
end)
k.JumpRequest:Connect(function()
  if (((7 * 7) == 49) and p.infjump) then
    local cp = v()
    if (((1 + 1) == 2) and cp) then
      cp:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local cq
j.RenderStepped:Connect(function()
  local cr = s()
  if (((15 * 15) == 225) and (p.fly and cr)) then
    if (((100 % 7) == 2) and (not cq or (cq.Parent ~= cr))) then
      if (((12 * 12) == 144) and cq) then
        cq:Destroy()
      end
      cq = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      cq.MaxForce = Vector3.new(1e9, 1e9, 1e9)
      cq.Parent = cr
    end
    local cs = workspace.CurrentCamera
    local ct = Vector3.new()
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.W)) then
      ct += cs.CFrame.LookVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.S)) then
      ct -= cs.CFrame.LookVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.A)) then
      ct -= cs.CFrame.RightVector
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.D)) then
      ct += cs.CFrame.RightVector
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.Space)) then
      ct += Vector3.yAxis
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      ct -= Vector3.yAxis
    end
    cq.Velocity = (((ct.Magnitude > 0) and (ct.Unit * p.flySpeed)) or Vector3.new())
  elseif (((3 ^ 2) == 9) and cq) then
    cq:Destroy()
    cq = nil
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and p.running) do
    bi()
    bu()
    cc()
    task.wait(.4)
  end
  for cu, cv in pairs(be) do
    if (((1 + 1) == 2) and cu.Parent) then
      pcall(function()
        cu.Value = cv
      end)
    end
  end
  p.wall = false
  bu()
  p.headbox = false
  cc()
end)
local cw = {}
local function cx(cy, cz, da)
  local db = cw[cy]
  if (((15 * 15) == 225) and db) then
    db.l.Text = cz
    db.h.Enabled = true
    return
  end
  local dc = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  dc.Name = g({23, 51, 54, 54, 35, 31, 9, 10}, 90)
  dc.AlwaysOnTop = true
  dc.Size = UDim2.fromOffset(150, 24)
  dc.StudsOffset = Vector3.new(0, 2.7, 0)
  dc.Adornee = cy
  dc.Parent = cy
  local dd = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  dd.Size = UDim2.fromScale(1, 1)
  dd.BackgroundTransparency = 1
  dd.Text = cz
  dd.TextColor3 = da
  dd.TextStrokeTransparency = .2
  dd.Font = Enum.Font.GothamBold
  dd.TextSize = 13
  dd.Parent = dc
  cw[cy] = {h = dc, l = dd}
end
local function de()
  for df, dg in pairs(cw) do
    if (((100 % 7) == 2) and dg.h) then
      dg.h:Destroy()
    end
    cw[df] = nil
  end
end
task.spawn(function()
  while (((12 * 12) == 144) and p.running) do
    local dh = s()
    if (((3 ^ 2) == 9) and (dh and p.playerEsp)) then
      for di, dj in ipairs(h:GetPlayers()) do
        local dk = s(dj)
        local dl = v(dj)
        if (((7 * 7) == 49) and (((((dj ~= n) and dk) and dl) and (dl.Health > 0)) and (((dk.Position - dh.Position)).Magnitude < p.espRange))) then
          local dm = ((((p.nameEsp and dj.DisplayName) or g({10, 22, 27, 3, 31, 8}, 90))) .. (((p.healthEsp and ((g({122, 1}, 90) .. (math.floor(dl.Health) .. g({7}, 90))))) or "")))
          cx(dk, dm, ((y(dj) and Color3.fromRGB(255, 70, 70)) or Color3.fromRGB(70, 180, 255)))
        end
      end
    end
    if (((1 + 1) == 2) and (dh and ((p.bombEsp or p.weaponEsp)))) then
      for dn, dp in ipairs(workspace:GetDescendants()) do
        if (((15 * 15) == 225) and (dp:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (((dp.Position - dh.Position)).Magnitude < p.espRange))) then
          local dq = dp.Name:lower()
          if (((100 % 7) == 2) and (p.bombEsp and ((dq:find(g({56, 53, 55, 56}, 90)) or dq:find(g({57, 110}, 90)))))) then
            cx(dp, g({24, 21, 23, 24}, 90), Color3.fromRGB(255, 210, 50))
          elseif (((12 * 12) == 144) and (p.weaponEsp and (((dq:find(g({45, 63, 59, 42, 53, 52}, 90)) or dq:find(g({61, 47, 52}, 90))) or dq:find(g({62, 40, 53, 42}, 90)))))) then
            cx(dp, g({13, 31, 27, 10, 21, 20}, 90), Color3.fromRGB(120, 255, 120))
          end
        end
      end
    end
    if (((3 ^ 2) == 9) and not (((p.playerEsp or p.bombEsp) or p.weaponEsp))) then
      de()
    end
    task.wait(1)
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and p.running) do
    if (((1 + 1) == 2) and p.full) then
      l.Brightness = 3
      l.ClockTime = 14
      l.FogEnd = 1e6
      l.GlobalShadows = false
    end
    if (((15 * 15) == 225) and p.noSmoke) then
      for dr, ds in ipairs(workspace:GetDescendants()) do
        if (((100 % 7) == 2) and (ds:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or ds:IsA(g({9, 55, 53, 49, 63}, 90)))) then
          ds.Enabled = false
        end
      end
    end
    if (((12 * 12) == 144) and (p.noFlash or p.noScope)) then
      local dt = n:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
      if (((3 ^ 2) == 9) and dt) then
        for du, dv in ipairs(dt:GetDescendants()) do
          local dw = dv.Name:lower()
          if (((7 * 7) == 49) and (((p.noFlash and ((dw:find(g({60, 54, 59, 41, 50}, 90)) or dw:find(g({56, 54, 51, 52, 62}, 90)))))) or ((p.noScope and dw:find(g({41, 57, 53, 42, 63}, 90)))))) then
            pcall(function()
              dv.Visible = false
            end)
          end
        end
      end
    end
    task.wait(.5)
  end
end)
n.Idled:Connect(function()
  if (((1 + 1) == 2) and p.afk) then
    m:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
    task.wait(.1)
    m:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
  end
end)
local dx = o:tab(g({59, 51, 55}, 90))
dx:toggle(g({41, 51, 54, 63, 52, 46, 122, 59, 51, 55}, 90), false, function(dy)
  p.silent = dy
end)
dx:toggle(g({57, 59, 55, 63, 40, 59, 122, 59, 51, 55, 56, 53, 46}, 90), false, function(dz)
  p.aim = dz
end)
dx:toggle(g({46, 63, 59, 55, 122, 57, 50, 63, 57, 49}, 90), false, function(ea)
  p.team = ea
end)
dx:toggle(g({44, 51, 41, 51, 56, 51, 54, 51, 46, 35, 122, 57, 50, 63, 57, 49}, 90), false, function(eb)
  p.visible = eb
end)
dx:slider(g({59, 51, 55, 122, 60, 53, 44}, 90), 20, 600, p.fov, function(ec)
  p.fov = ec
end)
dx:slider(g({42, 40, 63, 62, 51, 57, 46, 51, 53, 52}, 90), 0, .5, p.prediction, function(ed)
  p.prediction = ed
end)
dx:slider(g({41, 55, 53, 53, 46, 50}, 90), .01, 1, p.smooth, function(ee)
  p.smooth = ee
end)
dx:button(g({46, 59, 40, 61, 63, 46, 122, 50, 63, 59, 62}, 90), function()
  p.hitpart = g({18, 63, 59, 62}, 90)
end)
dx:button(g({46, 59, 40, 61, 63, 46, 122, 56, 53, 62, 35}, 90), function()
  p.hitpart = g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)
end)
dx:toggle(g({46, 40, 51, 61, 61, 63, 40, 56, 53, 46}, 90), false, function(ef)
  p.trigger = ef
end)
dx:toggle(g({59, 47, 46, 53, 122, 60, 51, 40, 63, 122, 46, 59, 40, 61, 63, 46}, 90), false, function(eg)
  p.autoFire = eg
end)
dx:toggle(g({41, 50, 53, 45, 122, 60, 53, 44, 122, 57, 51, 40, 57, 54, 63}, 90), false, function(eh)
  p.fovCircle = eh
end)
local ei = o:tab(g({45, 63, 59, 42, 53, 52}, 90))
ei:toggle(g({40, 59, 42, 51, 62, 122, 60, 51, 40, 63}, 90), false, function(ej)
  p.rapid = ej
end)
ei:slider(g({60, 51, 40, 63, 122, 62, 63, 54, 59, 35}, 90), .01, .3, p.rapidValue, function(ek)
  p.rapidValue = ek
end)
ei:toggle(g({52, 53, 122, 40, 63, 57, 53, 51, 54}, 90), false, function(el)
  p.recoil = el
end)
ei:toggle(g({52, 53, 122, 41, 42, 40, 63, 59, 62}, 90), false, function(em)
  p.spread = em
end)
ei:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 40, 63, 54, 53, 59, 62}, 90), false, function(en)
  p.reload = en
end)
ei:toggle(g({45, 59, 54, 54, 122, 41, 50, 53, 46}, 90), false, function(eo)
  p.wall = eo
end)
ei:toggle(g({50, 63, 59, 62, 122, 50, 51, 46, 56, 53, 34, 122, 63, 34, 46, 63, 52, 62, 63, 40}, 90), false, function(ep)
  p.headbox = ep
end)
ei:slider(g({50, 63, 59, 62, 56, 53, 34, 122, 41, 51, 32, 63}, 90), 2, 25, p.headboxSize, function(eq)
  p.headboxSize = eq
end)
local er = o:tab(g({55, 53, 44, 63, 55, 63, 52, 46}, 90))
er:toggle(g({24, 18, 21, 10}, 90), false, function(es)
  p.bhop = es
end)
er:slider(g({56, 50, 53, 42, 122, 41, 42, 63, 63, 62}, 90), 16, 180, p.bhopSpeed, function(et)
  p.bhopSpeed = et
end)
er:slider(g({56, 50, 53, 42, 122, 48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), 20, 100, p.bhopPower, function(eu)
  p.bhopPower = eu
end)
er:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ev)
  p.walk = ev
end)
er:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62, 122, 44, 59, 54, 47, 63}, 90), 16, 150, p.walkSpeed, function(ew)
  p.walkSpeed = ew
end)
er:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ex)
  p.jump = ex
end)
er:slider(g({48, 47, 55, 42, 122, 44, 59, 54, 47, 63}, 90), 50, 200, p.jumpPower, function(ey)
  p.jumpPower = ey
end)
er:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(ez)
  p.noclip = ez
end)
er:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(fa)
  p.infjump = fa
end)
er:toggle(g({60, 54, 35}, 90), false, function(fb)
  p.fly = fb
end)
er:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 10, 250, p.flySpeed, function(fc)
  p.flySpeed = fc
end)
local fd = o:tab(g({44, 51, 41, 47, 59, 54, 41}, 90))
fd:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(fe)
  p.playerEsp = fe
end)
fd:toggle(g({52, 59, 55, 63, 41}, 90), false, function(ff)
  p.nameEsp = ff
end)
fd:toggle(g({50, 63, 59, 54, 46, 50}, 90), false, function(fg)
  p.healthEsp = fg
end)
fd:toggle(g({56, 53, 55, 56, 122, 63, 41, 42}, 90), false, function(fh)
  p.bombEsp = fh
end)
fd:toggle(g({45, 63, 59, 42, 53, 52, 122, 63, 41, 42}, 90), false, function(fi)
  p.weaponEsp = fi
end)
fd:slider(g({63, 41, 42, 122, 40, 59, 52, 61, 63}, 90), 100, 10000, p.espRange, function(fj)
  p.espRange = fj
end)
fd:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(fk)
  p.full = fk
end)
fd:toggle(g({52, 53, 122, 41, 55, 53, 49, 63}, 90), false, function(fl)
  p.noSmoke = fl
end)
fd:toggle(g({52, 53, 122, 60, 54, 59, 41, 50}, 90), false, function(fm)
  p.noFlash = fm
end)
fd:toggle(g({52, 53, 122, 41, 57, 53, 42, 63, 122, 53, 44, 63, 40, 54, 59, 35}, 90), false, function(fn)
  p.noScope = fn
end)
fd:button(g({57, 54, 63, 59, 40, 122, 63, 41, 42}, 90), de)
local fo = o:tab(g({41, 63, 46, 46, 51, 52, 61, 41}, 90))
local fp = fo:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
fo:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(fq)
  p.afk = fq
end)
fo:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for fr, fs in pairs(p) do
    if (((15 * 15) == 225) and (type(fs) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      p[fr] = false
    end
  end
  p.running = true
  de()
end)
fo:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  p.running = false
  de()
  if (((100 % 7) == 2) and au) then
    au:Remove()
  end
  o:destroy()
end)
task.spawn(function()
  while (((12 * 12) == 144) and p.running) do
    fp:set((g({46, 59, 40, 61, 63, 46, 96, 122}, 90) .. tostring((select(2, ai()) or g({52, 53, 52, 63}, 90)))))
    task.wait(.4)
  end
end)