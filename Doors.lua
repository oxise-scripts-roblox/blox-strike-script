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
local m = game:GetService(g({9, 46, 59, 40, 46, 63, 40, 29, 47, 51}, 90))
local n = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local o = h.LocalPlayer
local p = getgenv().MillyMenu
if (((15 * 15) == 225) and not p) then
  return
end
local q = {running = true, autoDoor = false, autoLoot = false, autoKey = false, autoLever = false, autoHide = false, autoExitHide = true, hideRange = 220, prompt = false, promptRange = 18, doorDelay = .25, lootDelay = .2, antiScreech = false, antiA90 = false, antiEyes = false, antiDupe = false, antiHalt = false, antiSeek = false, antiFigure = false, antiRush = false, heartbeat = false, money = false, moneyValue = 9999999, walk = false, walkSpeed = 22, velocity = false, velocitySpeed = 38, jump = false, jumpPower = 55, noclip = false, infjump = false, fly = false, flySpeed = 65, doorEsp = false, keyEsp = false, itemEsp = false, goldEsp = false, lockerEsp = false, entityEsp = false, playerEsp = false, espRange = 2500, notify = true, full = false, noFog = false, noShake = false, noEffects = false, fov = false, fovValue = 90, afk = false, status = g({40, 63, 59, 62, 35}, 90)}
local function r()
  local s = o.Character
  return (s and ((s:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or s.PrimaryPart)))
end
local function t()
  local u = o.Character
  return (u and u:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function v(w)
  if (((100 % 7) == 2) and w:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return w
  end
  if (((12 * 12) == 144) and w:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (w.PrimaryPart or w:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
  return (w:FindFirstAncestorWhichIsA(g({23, 53, 62, 63, 54}, 90)) and w:FindFirstAncestorWhichIsA(g({23, 53, 62, 63, 54}, 90)).PrimaryPart)
end
local function x(y)
  if (((3 ^ 2) == 9) and y:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
    return y
  end
  return y:FindFirstChildWhichIsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90), true)
end
local function z(aa)
  if (((7 * 7) == 49) and not ((aa and aa.Enabled))) then
    return
  end
  aa.HoldDuration = 0
  aa.MaxActivationDistance = math.max(aa.MaxActivationDistance, q.promptRange)
  if (((1 + 1) == 2) and fireproximityprompt) then
    pcall(fireproximityprompt, aa)
  else
    aa:InputHoldBegin()
    task.wait(.03)
    aa:InputHoldEnd()
  end
end
local function ab(ac, ad)
  local ae = r()
  if (((15 * 15) == 225) and not ae) then
    return
  end
  local af, ag = nil, (ad or math.huge)
  for ah, ai in ipairs(workspace:GetDescendants()) do
    if (((100 % 7) == 2) and (ai:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and ai.Enabled)) then
      local aj = ((ai.Name .. (g({122}, 90) .. (ai.ActionText .. (g({122}, 90) .. (ai.ObjectText .. (g({122}, 90) .. (((ai.Parent and ai.Parent.Name) or ""))))))))):lower()
      local ak = false
      for al, am in ipairs(ac) do
        if (((12 * 12) == 144) and aj:find(am, 1, true)) then
          ak = true
          break
        end
      end
      local an = v(ai.Parent)
      if (((3 ^ 2) == 9) and (ak and an)) then
        local ao = ((an.Position - ae.Position)).Magnitude
        if (((7 * 7) == 49) and (ao < ag)) then
          af, ag = ai, ao
        end
      end
    end
  end
  return af, ag
end
local function ap(aq, ar)
  local as = r()
  if (((1 + 1) == 2) and not as) then
    return
  end
  local at, au = nil, (ar or math.huge)
  for av, aw in ipairs(workspace:GetDescendants()) do
    local ax = aw.Name:lower()
    for ay, az in ipairs(aq) do
      if (((15 * 15) == 225) and ax:find(az, 1, true)) then
        local ba = v(aw)
        if (((100 % 7) == 2) and ba) then
          local bb = ((ba.Position - as.Position)).Magnitude
          if (((12 * 12) == 144) and (bb < au)) then
            at, au = aw, bb
          end
        end
        break
      end
    end
  end
  return at, au
end
local function bc(bd, be)
  if (((3 ^ 2) == 9) and q.notify) then
    pcall(m.SetCore, m, g({9, 63, 52, 62, 20, 53, 46, 51, 60, 51, 57, 59, 46, 51, 53, 52}, 90), {Title = bd, Text = be, Duration = 5})
  end
  q.status = (bd .. (g({96, 122}, 90) .. be))
end
local bf = {g({40, 47, 41, 50, 55, 53, 44, 51, 52, 61}, 90), g({40, 47, 41, 50, 52, 63, 45}, 90), g({56, 59, 57, 49, 62, 53, 53, 40, 40, 47, 41, 50}, 90), g({59, 55, 56, 47, 41, 50, 55, 53, 44, 51, 52, 61}, 90), g({59, 55, 56, 47, 41, 50}, 90), g({60, 51, 61, 47, 40, 63}, 90), g({41, 63, 63, 49, 55, 53, 44, 51, 52, 61}, 90), g({59, 108, 106}, 90), g({59, 107, 104, 106}, 90), g({61, 40, 47, 55, 56, 54, 63}, 90), g({61, 51, 61, 61, 54, 63}, 90), g({63, 35, 63, 41}, 90), g({41, 57, 40, 63, 63, 57, 50}, 90), g({50, 59, 54, 46}, 90)}
local function bg()
  local bh = r()
  if (((7 * 7) == 49) and not bh) then
    return
  end
  local bi, bj = nil, math.huge
  for bk, bl in ipairs(workspace:GetDescendants()) do
    if (((1 + 1) == 2) and (bl:IsA(g({23, 53, 62, 63, 54}, 90)) or bl:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
      local bm = bl.Name:lower()
      for bn, bo in ipairs(bf) do
        if (((15 * 15) == 225) and bm:find(bo, 1, true)) then
          local bp = v(bl)
          if (((100 % 7) == 2) and bp) then
            local bq = ((bp.Position - bh.Position)).Magnitude
            if (((12 * 12) == 144) and (bq < bj)) then
              bi, bj = bl, bq
            end
          end
          break
        end
      end
    end
  end
  return bi, bj
end
local function br()
  local bs = o.Character
  return (bs and ((((bs:GetAttribute(g({18, 51, 62, 51, 52, 61}, 90)) == true) or (bs:GetAttribute(g({19, 52, 13, 59, 40, 62, 40, 53, 56, 63}, 90)) == true)) or (bs:GetAttribute(g({19, 52, 25, 54, 53, 41, 63, 46}, 90)) == true))))
end
local function bt()
  local bu = r()
  if (((3 ^ 2) == 9) and not bu) then
    return
  end
  local bv, bw = nil, math.huge
  for bx, by in ipairs(workspace:GetDescendants()) do
    if (((7 * 7) == 49) and (by:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and by.Enabled)) then
      local bz = ((by.Name .. (g({122}, 90) .. (by.ActionText .. (g({122}, 90) .. (by.ObjectText .. (g({122}, 90) .. (((by.Parent and by.Parent.Name) or ""))))))))):lower()
      if (((1 + 1) == 2) and ((((bz:find(g({50, 51, 62, 63}, 90)) or bz:find(g({45, 59, 40, 62, 40, 53, 56, 63}, 90))) or bz:find(g({57, 54, 53, 41, 63, 46}, 90))) or bz:find(g({54, 53, 57, 49, 63, 40}, 90))) or bz:find(g({56, 63, 62}, 90)))) then
        local ca = v(by.Parent)
        if (((15 * 15) == 225) and ca) then
          local cb = ((ca.Position - bu.Position)).Magnitude
          if (((100 % 7) == 2) and (cb < bw)) then
            bv, bw = by, cb
          end
        end
      end
    end
  end
  return bv, bw
end
local function cc()
  local cd, ce = bt()
  if (((12 * 12) == 144) and not cd) then
    q.status = g({50, 51, 62, 63, 122, 42, 40, 53, 55, 42, 46, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62}, 90)
    return false
  end
  local cf = v(cd.Parent)
  local cg = r()
  if (((3 ^ 2) == 9) and (cf and cg)) then
    cg.CFrame = (cf.CFrame * CFrame.new(0, 0, 1.05))
    cg.AssemblyLinearVelocity = Vector3.new()
  end
  for ch = 1, 4 do
    if (((7 * 7) == 49) and br()) then
      break
    end
    z(cd)
    task.wait(.08)
  end
  q.status = ((br() and g({50, 51, 62, 62, 63, 52, 122, 60, 40, 53, 55, 122, 63, 52, 46, 51, 46, 35}, 90)) or g({50, 51, 62, 63, 122, 42, 40, 53, 55, 42, 46, 122, 59, 57, 46, 51, 44, 59, 46, 63, 62}, 90))
  return true
end
task.spawn(function()
  while (((1 + 1) == 2) and q.running) do
    if (((15 * 15) == 225) and q.autoDoor) then
      local ci = ab({g({53, 42, 63, 52}, 90), g({47, 52, 54, 53, 57, 49}, 90), g({62, 53, 53, 40}, 90)}, q.promptRange)
      if (((100 % 7) == 2) and ci) then
        z(ci)
      end
    end
    if (((12 * 12) == 144) and q.autoKey) then
      local cj = ab({g({49, 63, 35}, 90), g({42, 51, 57, 49, 47, 42}, 90)}, q.promptRange)
      if (((3 ^ 2) == 9) and cj) then
        z(cj)
      end
    end
    if (((7 * 7) == 49) and q.autoLever) then
      local ck = ab({g({54, 63, 44, 63, 40}, 90), g({41, 45, 51, 46, 57, 50}, 90), g({59, 57, 46, 51, 44, 59, 46, 63}, 90)}, q.promptRange)
      if (((1 + 1) == 2) and ck) then
        z(ck)
      end
    end
    task.wait(q.doorDelay)
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    if (((100 % 7) == 2) and q.autoLoot) then
      local cl = ab({g({54, 53, 53, 46}, 90), g({42, 51, 57, 49, 47, 42}, 90), g({46, 59, 49, 63}, 90), g({61, 53, 54, 62}, 90), g({62, 40, 59, 45, 63, 40}, 90), g({57, 50, 63, 41, 46}, 90), g({51, 46, 63, 55}, 90)}, q.promptRange)
      if (((12 * 12) == 144) and cl) then
        z(cl)
      end
    end
    task.wait(q.lootDelay)
  end
end)
local cm = i:FindFirstChild(g({8, 63, 55, 53, 46, 63, 41, 28, 53, 54, 62, 63, 40}, 90))
local cn = {}
local co = false
task.spawn(function()
  while (((3 ^ 2) == 9) and q.running) do
    local cp, cq = bg()
    if (((7 * 7) == 49) and (cp and not cn[cp])) then
      cn[cp] = true
      bc(g({31, 20, 14, 19, 14, 3}, 90), (cp.Name .. (g({122, 38, 122}, 90) .. (math.floor(cq) .. g({122, 41, 46, 47, 62, 41}, 90)))))
    end
    if (((1 + 1) == 2) and ((((q.autoHide and cp) and (cq < q.hideRange)) and not br()) and not co)) then
      co = true
      cc()
      task.wait(.35)
      co = false
    elseif (((15 * 15) == 225) and ((((q.autoHide and q.autoExitHide) and not cp) and br()) and cm)) then
      local cr = cm:FindFirstChild(g({29, 63, 46, 21, 47, 46, 21, 60, 18, 51, 62, 51, 52, 61}, 90))
      if (((100 % 7) == 2) and cr) then
        pcall(cr.FireServer, cr)
      end
    end
    task.wait(.08)
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and q.running) do
    local cs = o.Character
    if (((3 ^ 2) == 9) and cs) then
      if (((7 * 7) == 49) and q.antiScreech) then
        cs:SetAttribute(g({9, 57, 40, 63, 63, 57, 50, 21, 52}, 90), false)
        cs:SetAttribute(g({9, 57, 40, 63, 63, 57, 50}, 90), false)
      end
      if (((1 + 1) == 2) and q.antiEyes) then
        cs:SetAttribute(g({31, 35, 63, 41, 30, 59, 55, 59, 61, 63}, 90), false)
      end
      if (((15 * 15) == 225) and q.antiHalt) then
        cs:SetAttribute(g({18, 59, 54, 46}, 90), false)
      end
      if (((100 % 7) == 2) and q.antiSeek) then
        cs:SetAttribute(g({19, 52, 25, 47, 46, 41, 57, 63, 52, 63}, 90), false)
        cs:SetAttribute(g({25, 54, 51, 55, 56, 51, 52, 61}, 90), false)
      end
      if (((12 * 12) == 144) and q.antiFigure) then
        cs:SetAttribute(g({9, 46, 47, 52, 52, 63, 62}, 90), false)
      end
    end
    if (((3 ^ 2) == 9) and (q.heartbeat and cm)) then
      local ct = cm:FindFirstChild(g({25, 54, 47, 46, 57, 50, 18, 63, 59, 40, 46, 56, 63, 59, 46}, 90))
      if (((7 * 7) == 49) and ct) then
        pcall(ct.FireServer, ct, true)
      end
    end
    if (((1 + 1) == 2) and q.antiA90) then
      local cu = o:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
      if (((15 * 15) == 225) and cu) then
        for cv, cw in ipairs(cu:GetDescendants()) do
          if (((100 % 7) == 2) and cw.Name:lower():find(g({59, 99, 106}, 90))) then
            pcall(function()
              cw.Enabled = false
            end)
            pcall(function()
              cw.Visible = false
            end)
          end
        end
      end
    end
    task.wait(.1)
  end
end)
local cx
do
  local cy = i:FindFirstChild(g({8, 63, 42, 54, 51, 57, 59, 30, 59, 46, 59, 23, 53, 62, 47, 54, 63}, 90))
  if (((12 * 12) == 144) and cy) then
    pcall(function()
      cx = require(cy)
    end)
  end
end
local function cz()
  if (((3 ^ 2) == 9) and (cx and cx.data)) then
    cx.data.Knobs = q.moneyValue
    cx.data.Gold = q.moneyValue
    if (((7 * 7) == 49) and cx.event) then
      for da, db in ipairs({g({17, 52, 53, 56, 41}, 90), g({29, 53, 54, 62}, 90)}) do
        local dc = cx.event[db]
        if (((1 + 1) == 2) and (dc and dc.Fire)) then
          pcall(dc.Fire, dc, q.moneyValue)
        end
      end
    end
  end
  local dd = o:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
  if (((15 * 15) == 225) and dd) then
    for de, df in ipairs(dd:GetDescendants()) do
      if (((100 % 7) == 2) and ((df:IsA(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90)) or df:IsA(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90))))) then
        local dg = df.Name:lower()
        if (((12 * 12) == 144) and ((dg:find(g({49, 52, 53, 56}, 90)) or (dg == g({61, 53, 54, 62}, 90))) or dg:find(g({57, 47, 40, 40, 63, 52, 57, 35}, 90)))) then
          df.Text = tostring(q.moneyValue)
        end
      end
    end
  end
  q.status = (g({55, 53, 52, 63, 35, 122, 41, 63, 46, 122, 46, 53, 122}, 90) .. q.moneyValue)
end
task.spawn(function()
  while (((3 ^ 2) == 9) and q.running) do
    if (((7 * 7) == 49) and q.money) then
      cz()
    end
    task.wait(.5)
  end
end)
local dh
j.Stepped:Connect(function()
  if (((1 + 1) == 2) and not q.running) then
    return
  end
  local di = t()
  local dj = r()
  if (((15 * 15) == 225) and di) then
    if (((100 % 7) == 2) and q.walk) then
      di.WalkSpeed = q.walkSpeed
    end
    if (((12 * 12) == 144) and q.jump) then
      di.UseJumpPower = true
      di.JumpPower = q.jumpPower
    end
    if (((3 ^ 2) == 9) and ((q.velocity and (di.MoveDirection.Magnitude > .05)) and dj)) then
      local dk = di.MoveDirection
      dj.AssemblyLinearVelocity = Vector3.new((dk.X * q.velocitySpeed), dj.AssemblyLinearVelocity.Y, (dk.Z * q.velocitySpeed))
    end
  end
  if (((7 * 7) == 49) and (q.noclip and o.Character)) then
    for dl, dm in ipairs(o.Character:GetDescendants()) do
      if (((1 + 1) == 2) and dm:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        dm.CanCollide = false
      end
    end
  end
end)
j.RenderStepped:Connect(function()
  local dn = r()
  if (((15 * 15) == 225) and (q.fly and dn)) then
    if (((100 % 7) == 2) and (not dh or (dh.Parent ~= dn))) then
      if (((12 * 12) == 144) and dh) then
        dh:Destroy()
      end
      dh = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      dh.MaxForce = Vector3.new(1e9, 1e9, 1e9)
      dh.Parent = dn
    end
    local dp = workspace.CurrentCamera
    local dq = Vector3.new()
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.W)) then
      dq += dp.CFrame.LookVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.S)) then
      dq -= dp.CFrame.LookVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.A)) then
      dq -= dp.CFrame.RightVector
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.D)) then
      dq += dp.CFrame.RightVector
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.Space)) then
      dq += Vector3.yAxis
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      dq -= Vector3.yAxis
    end
    dh.Velocity = (((dq.Magnitude > 0) and (dq.Unit * q.flySpeed)) or Vector3.new())
  elseif (((3 ^ 2) == 9) and dh) then
    dh:Destroy()
    dh = nil
  end
  local dr = workspace.CurrentCamera
  if (((7 * 7) == 49) and (dr and q.fov)) then
    dr.FieldOfView = q.fovValue
  end
end)
k.JumpRequest:Connect(function()
  if (((1 + 1) == 2) and q.infjump) then
    local ds = t()
    if (((15 * 15) == 225) and ds) then
      ds:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local dt = {}
local function du(dv, dw, dx)
  local dy = dt[dv]
  if (((100 % 7) == 2) and dy) then
    dy.l.Text = dw
    dy.g.Enabled = true
    return
  end
  local dz = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  dz.Name = g({23, 51, 54, 54, 35, 31, 9, 10}, 90)
  dz.AlwaysOnTop = true
  dz.Size = UDim2.fromOffset(160, 24)
  dz.StudsOffset = Vector3.new(0, 2.5, 0)
  dz.Adornee = dv
  dz.Parent = dv
  local ea = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  ea.Size = UDim2.fromScale(1, 1)
  ea.BackgroundTransparency = 1
  ea.Text = dw
  ea.TextColor3 = dx
  ea.TextStrokeTransparency = .2
  ea.Font = Enum.Font.GothamBold
  ea.TextSize = 13
  ea.Parent = dz
  dt[dv] = {g = dz, l = ea}
end
local function eb()
  for ec, ed in pairs(dt) do
    if (((12 * 12) == 144) and ed.g) then
      ed.g:Destroy()
    end
    dt[ec] = nil
  end
end
task.spawn(function()
  while (((3 ^ 2) == 9) and q.running) do
    local ee = r()
    if (((7 * 7) == 49) and ee) then
      local ef = 0
      for eg, eh in ipairs(workspace:GetDescendants()) do
        if (((1 + 1) == 2) and (ef > 250)) then
          break
        end
        local ei = v(eh)
        if (((15 * 15) == 225) and (ei and (((ei.Position - ee.Position)).Magnitude < q.espRange))) then
          local ej = eh.Name:lower()
          local ek, el
          if (((100 % 7) == 2) and (q.doorEsp and (((ej == g({62, 53, 53, 40}, 90)) or ej:find(g({62, 53, 53, 40}, 90)))))) then
            ek, el = g({30, 21, 21, 8}, 90), Color3.fromRGB(80, 190, 255)
          elseif (((12 * 12) == 144) and (q.keyEsp and ej:find(g({49, 63, 35}, 90)))) then
            ek, el = g({17, 31, 3}, 90), Color3.fromRGB(255, 230, 40)
          elseif (((3 ^ 2) == 9) and (q.goldEsp and ((ej:find(g({61, 53, 54, 62}, 90)) or ej:find(g({57, 53, 51, 52}, 90)))))) then
            ek, el = g({29, 21, 22, 30}, 90), Color3.fromRGB(255, 190, 30)
          elseif (((7 * 7) == 49) and (q.lockerEsp and ((((ej:find(g({45, 59, 40, 62, 40, 53, 56, 63}, 90)) or ej:find(g({57, 54, 53, 41, 63, 46}, 90))) or ej:find(g({54, 53, 57, 49, 63, 40}, 90))) or ej:find(g({56, 63, 62}, 90)))))) then
            ek, el = g({18, 19, 30, 31}, 90), Color3.fromRGB(90, 255, 120)
          elseif (((1 + 1) == 2) and (q.itemEsp and ((((((ej:find(g({51, 46, 63, 55}, 90)) or ej:find(g({54, 51, 61, 50, 46, 63, 40}, 90))) or ej:find(g({44, 51, 46, 59, 55, 51, 52}, 90))) or ej:find(g({54, 53, 57, 49, 42, 51, 57, 49}, 90))) or ej:find(g({60, 54, 59, 41, 50, 54, 51, 61, 50, 46}, 90))) or ej:find(g({57, 40, 47, 57, 51, 60, 51, 34}, 90)))))) then
            ek, el = eh.Name, Color3.fromRGB(200, 120, 255)
          elseif (((15 * 15) == 225) and q.entityEsp) then
            for em, en in ipairs(bf) do
              if (((100 % 7) == 2) and ej:find(en, 1, true)) then
                ek, el = (g({31, 20, 14, 19, 14, 3, 96, 122}, 90) .. eh.Name), Color3.fromRGB(255, 60, 60)
                break
              end
            end
          end
          if (((12 * 12) == 144) and ek) then
            du(ei, ek, el)
            ef += 1
          end
        end
      end
      if (((3 ^ 2) == 9) and q.playerEsp) then
        for eo, ep in ipairs(h:GetPlayers()) do
          local eq = (((ep ~= o) and ep.Character) and ep.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
          if (((7 * 7) == 49) and eq) then
            du(eq, ep.DisplayName, Color3.fromRGB(80, 220, 255))
          end
        end
      end
    end
    if (((1 + 1) == 2) and not (((((((q.doorEsp or q.keyEsp) or q.itemEsp) or q.goldEsp) or q.lockerEsp) or q.entityEsp) or q.playerEsp))) then
      eb()
    end
    task.wait(1)
  end
end)
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    if (((100 % 7) == 2) and q.prompt) then
      for er, es in ipairs(workspace:GetDescendants()) do
        if (((12 * 12) == 144) and es:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
          es.HoldDuration = 0
          es.MaxActivationDistance = math.max(es.MaxActivationDistance, q.promptRange)
        end
      end
    end
    if (((3 ^ 2) == 9) and q.full) then
      l.Brightness = 3
      l.Ambient = Color3.new(1, 1, 1)
      l.FogEnd = 1e6
      l.GlobalShadows = false
    end
    if (((7 * 7) == 49) and q.noFog) then
      l.FogEnd = 1e9
      for et, eu in ipairs(l:GetChildren()) do
        if (((1 + 1) == 2) and eu:IsA(g({27, 46, 55, 53, 41, 42, 50, 63, 40, 63}, 90))) then
          eu.Density = 0
          eu.Haze = 0
        end
      end
    end
    if (((15 * 15) == 225) and q.noEffects) then
      for ev, ew in ipairs(workspace:GetDescendants()) do
        if (((100 % 7) == 2) and ((ew:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or ew:IsA(g({14, 40, 59, 51, 54}, 90))) or ew:IsA(g({24, 63, 59, 55}, 90)))) then
          ew.Enabled = false
        end
      end
    end
    task.wait(1)
  end
end)
o.Idled:Connect(function()
  if (((12 * 12) == 144) and q.afk) then
    n:Button2Down(Vector2.new(), workspace.CurrentCamera.CFrame)
    task.wait(.1)
    n:Button2Up(Vector2.new(), workspace.CurrentCamera.CFrame)
  end
end)
local ex = p:tab(g({60, 59, 40, 55}, 90))
ex:toggle(g({59, 47, 46, 53, 122, 53, 42, 63, 52, 122, 62, 53, 53, 40, 41}, 90), false, function(ey)
  q.autoDoor = ey
end)
ex:toggle(g({59, 47, 46, 53, 122, 54, 53, 53, 46}, 90), false, function(ez)
  q.autoLoot = ez
end)
ex:toggle(g({59, 47, 46, 53, 122, 49, 63, 35, 41}, 90), false, function(fa)
  q.autoKey = fa
end)
ex:toggle(g({59, 47, 46, 53, 122, 54, 63, 44, 63, 40, 41}, 90), false, function(fb)
  q.autoLever = fb
end)
ex:slider(g({42, 40, 53, 55, 42, 46, 122, 40, 59, 52, 61, 63}, 90), 5, 40, q.promptRange, function(fc)
  q.promptRange = fc
end)
ex:slider(g({59, 57, 46, 51, 53, 52, 122, 62, 63, 54, 59, 35}, 90), .05, 2, q.doorDelay, function(fd)
  q.doorDelay = fd
end)
ex:button(g({53, 42, 63, 52, 122, 52, 63, 59, 40, 63, 41, 46, 122, 62, 53, 53, 40}, 90), function()
  z(ab({g({53, 42, 63, 52}, 90), g({47, 52, 54, 53, 57, 49}, 90), g({62, 53, 53, 40}, 90)}, 100))
end)
ex:button(g({54, 53, 53, 46, 122, 52, 63, 59, 40, 63, 41, 46}, 90), function()
  z(ab({g({54, 53, 53, 46}, 90), g({42, 51, 57, 49, 47, 42}, 90), g({46, 59, 49, 63}, 90), g({61, 53, 54, 62}, 90), g({62, 40, 59, 45, 63, 40}, 90), g({57, 50, 63, 41, 46}, 90)}, 100))
end)
local fe = p:tab(g({63, 52, 46, 51, 46, 51, 63, 41}, 90))
fe:toggle(g({63, 52, 46, 51, 46, 35, 122, 52, 53, 46, 51, 60, 51, 57, 59, 46, 51, 53, 52, 41}, 90), false, function(ff)
  q.notify = ff
end)
fe:toggle(g({59, 47, 46, 53, 122, 50, 51, 62, 63, 122, 40, 47, 41, 50, 117, 59, 55, 56, 47, 41, 50}, 90), false, function(fg)
  q.autoHide = fg
end)
fe:toggle(g({63, 34, 51, 46, 122, 50, 51, 62, 51, 52, 61, 122, 45, 50, 63, 52, 122, 41, 59, 60, 63}, 90), false, function(fh)
  q.autoExitHide = fh
end)
fe:slider(g({59, 47, 46, 53, 122, 50, 51, 62, 63, 122, 40, 59, 52, 61, 63}, 90), 30, 1000, q.hideRange, function(fi)
  q.hideRange = fi
end)
fe:button(g({50, 51, 62, 63, 122, 52, 53, 45}, 90), cc)
fe:toggle(g({59, 52, 46, 51, 122, 41, 57, 40, 63, 63, 57, 50}, 90), false, function(fj)
  q.antiScreech = fj
end)
fe:toggle(g({59, 52, 46, 51, 122, 27, 99, 106}, 90), false, function(fk)
  q.antiA90 = fk
end)
fe:toggle(g({59, 52, 46, 51, 122, 63, 35, 63, 41, 122, 54, 53, 57, 59, 54}, 90), false, function(fl)
  q.antiEyes = fl
end)
fe:toggle(g({59, 52, 46, 51, 122, 50, 59, 54, 46, 122, 54, 53, 57, 59, 54}, 90), false, function(fm)
  q.antiHalt = fm
end)
fe:toggle(g({59, 52, 46, 51, 122, 41, 63, 63, 49, 122, 40, 63, 41, 46, 40, 59, 51, 52, 46, 41}, 90), false, function(fn)
  q.antiSeek = fn
end)
fe:toggle(g({59, 52, 46, 51, 122, 60, 51, 61, 47, 40, 63, 122, 41, 46, 47, 52}, 90), false, function(fo)
  q.antiFigure = fo
end)
fe:toggle(g({59, 47, 46, 53, 122, 50, 63, 59, 40, 46, 56, 63, 59, 46, 122, 41, 47, 57, 57, 63, 41, 41}, 90), false, function(fp)
  q.heartbeat = fp
end)
local fq = p:tab(g({63, 41, 42}, 90))
fq:toggle(g({62, 53, 53, 40, 122, 63, 41, 42}, 90), false, function(fr)
  q.doorEsp = fr
end)
fq:toggle(g({49, 63, 35, 122, 63, 41, 42}, 90), false, function(fs)
  q.keyEsp = fs
end)
fq:toggle(g({51, 46, 63, 55, 122, 63, 41, 42}, 90), false, function(ft)
  q.itemEsp = ft
end)
fq:toggle(g({61, 53, 54, 62, 122, 63, 41, 42}, 90), false, function(fu)
  q.goldEsp = fu
end)
fq:toggle(g({54, 53, 57, 49, 63, 40, 122, 63, 41, 42}, 90), false, function(fv)
  q.lockerEsp = fv
end)
fq:toggle(g({63, 52, 46, 51, 46, 35, 122, 63, 41, 42}, 90), false, function(fw)
  q.entityEsp = fw
end)
fq:toggle(g({42, 54, 59, 35, 63, 40, 122, 63, 41, 42}, 90), false, function(fx)
  q.playerEsp = fx
end)
fq:slider(g({63, 41, 42, 122, 40, 59, 52, 61, 63}, 90), 100, 10000, q.espRange, function(fy)
  q.espRange = fy
end)
fq:button(g({57, 54, 63, 59, 40, 122, 63, 41, 42}, 90), eb)
local fz = p:tab(g({55, 53, 44, 63, 55, 63, 52, 46}, 90))
fz:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(ga)
  q.walk = ga
end)
fz:slider(g({41, 42, 63, 63, 62}, 90), 12, 100, q.walkSpeed, function(gb)
  q.walkSpeed = gb
end)
fz:toggle(g({44, 63, 54, 53, 57, 51, 46, 35, 122, 41, 42, 63, 63, 62}, 90), false, function(gc)
  q.velocity = gc
end)
fz:slider(g({44, 63, 54, 53, 57, 51, 46, 35}, 90), 12, 150, q.velocitySpeed, function(gd)
  q.velocitySpeed = gd
end)
fz:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ge)
  q.jump = ge
end)
fz:slider(g({48, 47, 55, 42}, 90), 40, 150, q.jumpPower, function(gf)
  q.jumpPower = gf
end)
fz:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(gg)
  q.noclip = gg
end)
fz:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(gh)
  q.infjump = gh
end)
fz:toggle(g({60, 54, 35}, 90), false, function(gi)
  q.fly = gi
end)
fz:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 10, 200, q.flySpeed, function(gj)
  q.flySpeed = gj
end)
local gk = p:tab(g({44, 51, 41, 47, 59, 54}, 90))
gk:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(gl)
  q.full = gl
end)
gk:toggle(g({52, 53, 122, 60, 53, 61}, 90), false, function(gm)
  q.noFog = gm
end)
gk:toggle(g({62, 51, 41, 59, 56, 54, 63, 122, 42, 59, 40, 46, 51, 57, 54, 63, 41}, 90), false, function(gn)
  q.noEffects = gn
end)
gk:toggle(g({57, 47, 41, 46, 53, 55, 122, 60, 53, 44}, 90), false, function(go)
  q.fov = go
end)
gk:slider(g({60, 53, 44}, 90), 50, 120, q.fovValue, function(gp)
  q.fovValue = gp
end)
local gq = p:tab(g({55, 53, 52, 63, 35}, 90))
gq:section(g({54, 53, 57, 59, 54, 122, 57, 47, 40, 40, 63, 52, 57, 35}, 90))
gq:input(g({55, 53, 52, 63, 35, 122, 44, 59, 54, 47, 63}, 90), g({99, 99, 99, 99, 99, 99, 99}, 90), function(gr)
  local gs = tonumber(gr)
  if (((3 ^ 2) == 9) and gs) then
    q.moneyValue = math.max(0, math.floor(gs))
  end
end)
gq:toggle(g({54, 53, 57, 49, 122, 55, 53, 52, 63, 35, 122, 44, 59, 54, 47, 63}, 90), false, function(gt)
  q.money = gt
  if (((7 * 7) == 49) and gt) then
    cz()
  end
end)
gq:button(g({41, 63, 46, 122, 55, 53, 52, 63, 35, 122, 53, 52, 57, 63}, 90), cz)
gq:button(g({41, 63, 46, 122, 99, 99, 99, 99, 99, 99, 99}, 90), function()
  q.moneyValue = 9999999
  cz()
end)
gq:label(g({57, 50, 59, 52, 61, 63, 41, 122, 8, 63, 42, 54, 51, 57, 59, 30, 59, 46, 59, 122, 113, 122, 18, 15, 30, 97, 122, 41, 63, 40, 44, 63, 40, 122, 42, 47, 40, 57, 50, 59, 41, 63, 41, 122, 55, 59, 35, 122, 44, 59, 54, 51, 62, 59, 46, 63, 122, 56, 59, 54, 59, 52, 57, 63}, 90))
local gu = p:tab(g({41, 63, 46, 46, 51, 52, 61, 41}, 90))
local gv = gu:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
gu:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(gw)
  q.prompt = gw
end)
gu:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(gx)
  q.afk = gx
end)
gu:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for gy, gz in pairs(q) do
    if (((1 + 1) == 2) and (type(gz) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      q[gy] = false
    end
  end
  q.running = true
  eb()
end)
gu:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  eb()
  p:destroy()
end)
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    gv:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. q.status))
    task.wait(.5)
  end
end)