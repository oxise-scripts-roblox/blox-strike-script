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
local m = game:GetService(g({25, 53, 54, 54, 63, 57, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local n = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local o = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 19, 52, 42, 47, 46, 23, 59, 52, 59, 61, 63, 40}, 90))
local p = h.LocalPlayer
local q = getgenv().MillyMenu
if (((15 * 15) == 225) and not q) then
  return
end
local r = i:WaitForChild(g({8, 63, 55, 53, 46, 63, 41}, 90), 10)
if (((100 % 7) == 2) and not r) then
  return
end
local s = {running = true, auraMan = false, auraSurvivor = false, auraGenerator = false, auraPallet = false, auraWindow = false, auraRange = 18, auraDelay = .15, lunge = false, tpTarget = false, faceTarget = false, lockTarget = false, targetMode = g({59, 54, 54}, 90), killAll = false, killDelay = .12, hitbox = false, hitboxSize = 16, godDodge = false, dodgeRange = 15, dodgeDistance = 24, dodgeDirection = g({59, 45, 59, 35}, 90), projectileAim = false, projectilePrediction = .06, projectileSpeed = 185, projectileGravity = workspace.Gravity, projectileFov = 700, autoExit = false, autoUnhook = false, autoHeal = false, autoPallet = false, autoGen = false, autoSkillCheck = false, genDelay = .5, fastGenBursts = 12, infPerks = false, noDebuffs = false, infSkills = false, infItems = false, noItemCooldown = false, walk = false, walkSpeed = 28, velocity = false, velocitySpeed = 55, jump = false, jumpPower = 80, noclip = false, infJump = false, fly = false, flySpeed = 70, antiSlow = false, antiStun = false, invisible = false, xray = false, noEffects = false, noCamera = false, fullbright = false, noFog = false, fov = false, fovValue = 100, instantPrompt = false, espSurvivor = false, espKiller = false, espGenerator = false, espItem = false, espExit = false, espPallet = false, espWindow = false, espRange = 2500, antiAfk = false, killerName = g({16, 59, 41, 53, 52}, 90), skinName = g({30, 63, 60, 59, 47, 54, 46}, 90), status = g({40, 63, 59, 62, 35}, 90)}
local function t(u)
  return ((u or p)).Character
end
local function v(w)
  local x = t(w)
  return (x and ((x:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or x.PrimaryPart)))
end
local function y(z)
  local aa = t(z)
  return (aa and aa:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function ab(...)
  local ac = r
  for ad, ae in ipairs({...}) do
    ac = (ac and ac:FindFirstChild(ae))
  end
  return ac
end
local function af(ag, ...)
  if (((12 * 12) == 144) and (not ag or not ag:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    return false
  end
  local ah, ai = pcall(ag.FireServer, ag, ...)
  if (((3 ^ 2) == 9) and not ah) then
    s.status = tostring(ai)
  end
  return ah
end
local aj = ab(g({27, 46, 46, 59, 57, 49, 41}, 90), g({24, 59, 41, 51, 57, 27, 46, 46, 59, 57, 49}, 90))
local ak = ab(g({27, 46, 46, 59, 57, 49, 41}, 90), g({22, 47, 52, 61, 63}, 90))
local al = ab(g({27, 46, 46, 59, 57, 49, 31, 44, 63, 52, 46}, 90))
local am = ab(g({17, 51, 54, 54, 63, 40, 41}, 90), g({17, 51, 54, 54, 63, 40}, 90), g({28, 40, 63, 52, 32, 35, 18, 51, 46, 31, 44, 63, 52, 46}, 90))
local an = ab(g({10, 59, 54, 54, 63, 46}, 90), g({16, 59, 41, 53, 52}, 90), g({9, 46, 47, 52, 53, 44, 63, 40}, 90))
local ao = ab(g({29, 63, 52, 63, 40, 59, 46, 53, 40}, 90), g({8, 63, 42, 59, 51, 40, 31, 44, 63, 52, 46}, 90))
local ap = ab(g({29, 63, 52, 63, 40, 59, 46, 53, 40}, 90), g({24, 40, 63, 59, 49, 29, 63, 52, 31, 44, 63, 52, 46}, 90))
local aq = ab(g({29, 63, 52, 63, 40, 59, 46, 53, 40}, 90), g({24, 40, 63, 59, 49, 29, 63, 52, 25, 53, 55, 55, 51, 46}, 90))
local ar = ab(g({18, 63, 59, 54, 51, 52, 61}, 90), g({18, 63, 59, 54, 31, 44, 63, 52, 46}, 90))
local as = ab(g({31, 34, 51, 46}, 90), g({22, 63, 44, 63, 40, 31, 44, 63, 52, 46}, 90))
local at = ab(g({25, 59, 40, 40, 35}, 90), g({15, 52, 18, 53, 53, 49, 31, 44, 63, 52, 46}, 90))
local au = ab(g({25, 59, 40, 40, 35}, 90), g({9, 63, 54, 60, 15, 52, 18, 53, 53, 49, 31, 44, 63, 52, 46}, 90))
local av = ab(g({10, 59, 54, 54, 63, 46}, 90), g({10, 59, 54, 54, 63, 46, 30, 40, 53, 42, 31, 44, 63, 52, 46}, 90))
local aw = ab(g({10, 59, 54, 54, 63, 46}, 90), g({16, 59, 41, 53, 52}, 90), g({30, 63, 41, 46, 40, 53, 35, 119, 29, 54, 53, 56, 59, 54}, 90))
local ax = ab(g({10, 59, 54, 54, 63, 46}, 90), g({16, 59, 41, 53, 52}, 90), g({10, 59, 54, 54, 63, 46, 24, 40, 63, 59, 49, 25, 53, 55, 55, 51, 46}, 90))
local ay = ab(g({13, 51, 52, 62, 53, 45}, 90), g({12, 59, 47, 54, 46, 31, 44, 63, 52, 46}, 90))
local az = ab(g({13, 51, 52, 62, 53, 45}, 90), g({12, 59, 47, 54, 46, 31, 44, 63, 52, 46, 119, 48, 59, 41, 53, 52}, 90))
local ba = ab(g({13, 51, 52, 62, 53, 45}, 90), g({12, 59, 47, 54, 46, 25, 53, 55, 55, 51, 46}, 90))
local bb = ab(g({9, 50, 53, 42}, 90), g({31, 43, 47, 51, 42, 17, 51, 54, 54, 63, 40}, 90))
local bc = ab(g({9, 50, 53, 42}, 90), g({31, 43, 47, 51, 42, 19, 46, 63, 55, 9, 49, 51, 52}, 90))
local bd = ab(g({19, 46, 63, 55, 41}, 90), g({10, 59, 40, 40, 35, 51, 52, 61, 122, 30, 59, 61, 61, 63, 40}, 90), g({42, 59, 40, 40, 35}, 90))
local be = ab(g({17, 51, 54, 54, 63, 40, 41}, 90), g({12, 63, 51, 54}, 90), g({9, 42, 63, 59, 40, 46, 50, 40, 53, 45}, 90))
local bf = ab(g({17, 51, 54, 54, 63, 40, 41}, 90), g({12, 63, 51, 54}, 90), g({47, 42, 62, 59, 46, 63, 45, 63, 42}, 90))
local bg = ab(g({23, 63, 57, 50, 59, 52, 51, 57, 41}, 90), g({44, 51, 41, 47, 59, 54, 51, 32, 63}, 90))
local bh = {generator = {}, pallet = {}, window = {}, item = {}, exit = {}, hook = {}}
local bi = setmetatable({}, {__mode = g({49}, 90)})
local function bj(bk)
  if (((7 * 7) == 49) and (not bk or not bk.Parent)) then
    return
  end
  if (((1 + 1) == 2) and bk:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return bk
  end
  if (((15 * 15) == 225) and bk:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (bk.PrimaryPart or bk:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
  return bk:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true)
end
local bl = {generator = {g({61, 63, 52, 63, 40, 59, 46, 53, 40, 42, 53, 51, 52, 46}, 90), g({61, 63, 52, 63, 40, 59, 46, 53, 40, 56, 53, 62, 35}, 90), g({61, 63, 52, 63, 40, 59, 46, 53, 40}, 90)}, pallet = {g({42, 59, 54, 54, 63, 46, 62, 40, 53, 42, 42, 53, 51, 52, 46}, 90), g({42, 59, 54, 54, 63, 46, 41, 54, 51, 62, 63, 42, 53, 51, 52, 46}, 90), g({42, 59, 54, 54, 63, 46}, 90)}, window = {g({44, 59, 47, 54, 46, 42, 53, 51, 52, 46}, 90), g({45, 51, 52, 62, 53, 45, 42, 53, 51, 52, 46}, 90), g({45, 51, 52, 62, 53, 45}, 90)}, item = {g({42, 51, 57, 49, 47, 42}, 90), g({51, 46, 63, 55}, 90), g({60, 54, 59, 41, 50, 54, 51, 61, 50, 46}, 90), g({56, 59, 52, 62, 59, 61, 63}, 90), g({62, 59, 61, 61, 63, 40}, 90), g({41, 50, 51, 63, 54, 62}, 90), g({59, 62, 40, 63, 52, 59, 54, 51, 52, 63}, 90), g({50, 53, 54, 35, 122, 45, 59, 46, 63, 40}, 90), g({46, 40, 59, 57, 49, 63, 40}, 90), g({57, 59, 52, 62, 54, 63}, 90)}, exit = {g({63, 34, 51, 46, 42, 53, 51, 52, 46}, 90), g({54, 63, 44, 63, 40}, 90)}, hook = {g({50, 53, 53, 49, 42, 53, 51, 52, 46}, 90), g({50, 53, 53, 49}, 90)}}
local function bm(bn)
  if (((100 % 7) == 2) and (bi[bn] or not (((bn:IsA(g({23, 53, 62, 63, 54}, 90)) or bn:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) or bn:IsA(g({14, 53, 53, 54}, 90)))))) then
    return
  end
  local bo = bn.Name:lower()
  for bp, bq in pairs(bl) do
    for br, bs in ipairs(bq) do
      if (((12 * 12) == 144) and bo:find(bs, 1, true)) then
        bh[bp][bn] = true
        bi[bn] = bp
        return
      end
    end
  end
end
local function bt(bu)
  local bv = bi[bu]
  if (((3 ^ 2) == 9) and bv) then
    bh[bv][bu] = nil
    bi[bu] = nil
  end
end
for bw, bx in ipairs(workspace:GetDescendants()) do
  bm(bx)
end
workspace.DescendantAdded:Connect(bm)
workspace.DescendantRemoving:Connect(bt)
local function by(bz, ca)
  local cb = v()
  if (((7 * 7) == 49) and not cb) then
    return
  end
  local cc, cd = nil, (ca or math.huge)
  for ce in pairs(bh[bz]) do
    if (((1 + 1) == 2) and not ce:IsDescendantOf(workspace)) then
      bt(ce)
    else
      local cf = bj(ce)
      if (((15 * 15) == 225) and cf) then
        local cg = ((cf.Position - cb.Position)).Magnitude
        if (((100 % 7) == 2) and (cg < cd)) then
          cc, cd = {object = ce, part = cf}, cg
        end
      end
    end
  end
  return cc, cd
end
local function ch(ci)
  local cj = (((ci and ci.Team) and ci.Team.Name:lower()) or "")
  return ((((cj:find(g({49, 51, 54, 54, 63, 40}, 90)) or cj:find(g({55, 59, 52, 51, 59, 57}, 90)))) and g({49, 51, 54, 54, 63, 40}, 90)) or g({41, 47, 40, 44, 51, 44, 53, 40}, 90))
end
local function ck(cl, cm)
  local cn = v()
  if (((12 * 12) == 144) and not cn) then
    return
  end
  local co, cp = nil, (cm or math.huge)
  for cq, cr in ipairs(h:GetPlayers()) do
    if (((3 ^ 2) == 9) and ((cr ~= p) and ((not cl or (ch(cr) == cl))))) then
      local cs = v(cr)
      local ct = y(cr)
      if (((7 * 7) == 49) and ((cs and ct) and (ct.Health > 0))) then
        local cu = ((cs.Position - cn.Position)).Magnitude
        if (((1 + 1) == 2) and (cu < cp)) then
          co, cp = cr, cu
        end
      end
    end
  end
  return co, cp
end
local function cv()
  local cw = workspace.CurrentCamera
  if (((15 * 15) == 225) and not cw) then
    return
  end
  local cx = (cw.ViewportSize / 2)
  local cy, cz
  local da = (ch(p) == g({49, 51, 54, 54, 63, 40}, 90))
  for db, dc in ipairs(h:GetPlayers()) do
    if (((100 % 7) == 2) and ((dc ~= p) and ((not da or (ch(dc) == g({41, 47, 40, 44, 51, 44, 53, 40}, 90)))))) then
      local dd = t(dc)
      local de = y(dc)
      local df = (dd and (((dd:FindFirstChild(g({15, 42, 42, 63, 40, 14, 53, 40, 41, 53}, 90)) or dd:FindFirstChild(g({14, 53, 40, 41, 53}, 90))) or v(dc))))
      if (((12 * 12) == 144) and ((df and de) and (de.Health > 0))) then
        local dg, dh = cw:WorldToViewportPoint(df.Position)
        local di = (((dh and (dg.Z > 0)) and ((Vector2.new(dg.X, dg.Y) - cx)).Magnitude) or math.huge)
        if (((3 ^ 2) == 9) and ((di <= s.projectileFov) and ((not cz or (di < cz))))) then
          cy, cz = df, di
        end
      end
    end
  end
  return cy
end
local function dj()
  local dk = v()
  if (((7 * 7) == 49) and not dk) then
    return
  end
  return ((dk.Position + (dk.CFrame.LookVector * 3)) + Vector3.new(0, 1.5, 0))
end
local function dl(dm)
  local dn = cv()
  dm = (dm or dj())
  if (((1 + 1) == 2) and not ((dn and dm))) then
    return
  end
  local dp = (dn.Position + Vector3.new(0, .35, 0))
  local dq = dn.AssemblyLinearVelocity
  local dr = math.max(25, s.projectileSpeed)
  local ds = math.clamp(s.projectilePrediction, 0, .35)
  local dt = math.clamp(((((dp - dm)).Magnitude / dr) + ds), .02, 2.5)
  local du
  for dv = 1, 6 do
    du = ((dp + (dq * dt)) + Vector3.new(0, (((.5 * s.projectileGravity) * dt) * dt), 0))
    dt = math.clamp(((((du - dm)).Magnitude / dr) + ds), .02, 2.5)
  end
  return du, dm, dn, dt
end
local function dw(dx)
  local dy = dj()
  if (((15 * 15) == 225) and not dy) then
    return dx
  end
  local dz = v()
  local ea = workspace.CurrentCamera
  for eb, ec in ipairs(dx) do
    local ed = typeof(ec)
    if (((100 % 7) == 2) and (ed == g({25, 28, 40, 59, 55, 63}, 90))) then
      local ee = (not dz or (((ec.Position - dz.Position)).Magnitude < 35))
      local ef = (not ea or (((ec.Position - ea.CFrame.Position)).Magnitude < 35))
      if (((12 * 12) == 144) and (ee or ef)) then
        dy = ec.Position
        break
      end
    elseif (((3 ^ 2) == 9) and ((ed == g({12, 63, 57, 46, 53, 40, 105}, 90)) and (ec.Magnitude > 2.5))) then
      local eg = (dz and (((ec - dz.Position)).Magnitude < 18))
      local eh = (ea and (((ec - ea.CFrame.Position)).Magnitude < 18))
      if (((7 * 7) == 49) and (eg or eh)) then
        dy = ec
        break
      end
    end
  end
  local ei = dl(dy)
  if (((1 + 1) == 2) and not ei) then
    return dx
  end
  local ej = ((ei - dy)).Unit
  for ek, el in ipairs(dx) do
    local em = typeof(el)
    if (((15 * 15) == 225) and (em == g({25, 28, 40, 59, 55, 63}, 90))) then
      dx[ek] = CFrame.lookAt(el.Position, ei)
    elseif (((100 % 7) == 2) and (em == g({12, 63, 57, 46, 53, 40, 105}, 90))) then
      if (((12 * 12) == 144) and ((el.Magnitude > .45) and (el.Magnitude < 1.55))) then
        dx[ek] = ej
      else
        local en = (((el - dy)).Magnitude < 2)
        if (((3 ^ 2) == 9) and not en) then
          dx[ek] = ei
        end
      end
    end
  end
  s.status = g({12, 63, 51, 54, 122, 59, 51, 55, 122, 54, 53, 57, 49, 63, 62}, 90)
  return dx
end
if (((7 * 7) == 49) and bg) then
  bg.OnClientEvent:Connect(function(eo, ep, eq, er)
    if (((1 + 1) == 2) and ((((eo == t()) and (typeof(ep) == g({12, 63, 57, 46, 53, 40, 105}, 90))) and (type(eq) == g({52, 47, 55, 56, 63, 40}, 90))) and (eq > 20))) then
      s.projectileSpeed = eq
      s.projectileGravity = (workspace.Gravity * ((((type(er) == g({52, 47, 55, 56, 63, 40}, 90)) and er) or 1)))
      s.status = (g({12, 63, 51, 54, 122, 57, 59, 54, 51, 56, 40, 59, 46, 63, 62, 96, 122}, 90) .. math.floor((eq + .5)))
    end
  end)
end
if (((15 * 15) == 225) and (((hookmetamethod and getnamecallmethod) and newcclosure) and be)) then
  local es
  es = hookmetamethod(game, g({5, 5, 52, 59, 55, 63, 57, 59, 54, 54}, 90), newcclosure(function(et, ...)
    local eu = getnamecallmethod()
    if (((100 % 7) == 2) and (((s.running and s.projectileAim) and (eu == g({28, 51, 40, 63, 9, 63, 40, 44, 63, 40}, 90))) and (((et == be) or (et == bf))))) then
      local ev = dw({...})
      return es(et, table.unpack(ev))
    end
    return es(et, ...)
  end))
else
  task.spawn(function()
    while (((12 * 12) == 144) and s.running) do
      if (((3 ^ 2) == 9) and s.projectileAim) then
        local ew = t()
        local ex = workspace.CurrentCamera
        local ey = dl((ex and ex.CFrame.Position))
        if (((7 * 7) == 49) and (((ew and ex) and ey) and ((ew:GetAttribute(g({19, 55, 55, 53, 56, 51, 54, 63}, 90)) or ew:GetAttribute(g({53, 44, 63, 40, 40, 51, 62, 63, 54, 53, 53, 49, 41, 57, 40, 51, 42, 46}, 90)))))) then
          ex.CFrame = CFrame.lookAt(ex.CFrame.Position, ey)
        end
      end
      j.RenderStepped:Wait()
    end
  end)
end
local function ez(fa)
  return ((s.targetMode == g({59, 54, 54}, 90)) or (ch(fa) == s.targetMode))
end
local function fb(fc)
  local fd = v(fc)
  if (((1 + 1) == 2) and not fd) then
    return
  end
  af(aj)
  af(aj, fc.Character)
  af(al, fc.Character, fd.Position)
  af(am, fc.Character)
  if (((15 * 15) == 225) and s.lunge) then
    af(ak)
    af(ak, fc.Character)
  end
end
local function fe()
  local ff, fg = ck(nil, s.auraRange)
  if (((100 % 7) == 2) and ((ff and fg) and ez(ff))) then
    local fh, fi = v(), v(ff)
    if (((12 * 12) == 144) and (fh and fi)) then
      if (((3 ^ 2) == 9) and s.tpTarget) then
        fh.CFrame = (fi.CFrame * CFrame.new(0, 0, 2.7))
      end
      if (((7 * 7) == 49) and s.faceTarget) then
        fh.CFrame = CFrame.lookAt(fh.Position, fi.Position)
      end
    end
    fb(ff)
    s.status = (g({55, 59, 52, 122, 59, 47, 40, 59, 96, 122}, 90) .. ff.Name)
  end
end
local function fj()
  local fk = v()
  if (((1 + 1) == 2) and not fk) then
    return
  end
  for fl, fm in ipairs(h:GetPlayers()) do
    if (((15 * 15) == 225) and ((fm ~= p) and ez(fm))) then
      local fn = v(fm)
      local fo = y(fm)
      if (((100 % 7) == 2) and ((fn and fo) and (fo.Health > 0))) then
        for fp = 1, 6 do
          if (((12 * 12) == 144) and not ((s.running and fn.Parent))) then
            break
          end
          fk.CFrame = (fn.CFrame * CFrame.new(0, 0, 2.4))
          fk.CFrame = CFrame.lookAt(fk.Position, fn.Position)
          fb(fm)
          task.wait(s.killDelay)
        end
      end
    end
  end
end
local function fq()
  local fr, fs = ck(g({41, 47, 40, 44, 51, 44, 53, 40}, 90), s.auraRange)
  if (((3 ^ 2) == 9) and (fr and fs)) then
    af(ar, v(fr), true)
    s.status = (g({41, 47, 40, 44, 51, 44, 53, 40, 122, 59, 47, 40, 59, 96, 122}, 90) .. fr.Name)
  end
end
local function ft()
  local fu = by(g({61, 63, 52, 63, 40, 59, 46, 53, 40}, 90), s.auraRange)
  if (((7 * 7) == 49) and not fu) then
    return
  end
  if (((1 + 1) == 2) and (ch(p) == g({49, 51, 54, 54, 63, 40}, 90))) then
    af(ap, fu.part)
    af(aq, fu.part)
  else
    af(ao, fu.part, true)
  end
  s.status = g({61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 59, 47, 40, 59}, 90)
end
local function fv()
  local fw = by(g({42, 59, 54, 54, 63, 46}, 90), s.auraRange)
  if (((15 * 15) == 225) and not fw) then
    return
  end
  if (((100 % 7) == 2) and (ch(p) == g({49, 51, 54, 54, 63, 40}, 90))) then
    af(aw, fw.part)
    af(ax, fw.part)
  else
    af(av, fw.part)
  end
  s.status = g({42, 59, 54, 54, 63, 46, 122, 59, 47, 40, 59}, 90)
end
local function fx()
  local fy = by(g({45, 51, 52, 62, 53, 45}, 90), s.auraRange)
  if (((12 * 12) == 144) and not fy) then
    return
  end
  if (((3 ^ 2) == 9) and (ch(p) == g({49, 51, 54, 54, 63, 40}, 90))) then
    af(az, fy.part)
    af(ba, fy.part)
  else
    af(ay, fy.part, ((p.Character and p.Character:GetAttribute(g({9, 42, 40, 51, 52, 46, 51, 52, 61}, 90))) or false))
  end
  s.status = g({45, 51, 52, 62, 53, 45, 122, 59, 47, 40, 59}, 90)
end
task.spawn(function()
  while (((7 * 7) == 49) and s.running) do
    if (((1 + 1) == 2) and s.auraMan) then
      fe()
    end
    if (((15 * 15) == 225) and s.auraSurvivor) then
      fq()
    end
    if (((100 % 7) == 2) and s.auraGenerator) then
      ft()
    end
    if (((12 * 12) == 144) and s.auraPallet) then
      fv()
    end
    if (((3 ^ 2) == 9) and s.auraWindow) then
      fx()
    end
    task.wait(math.max(.12, s.auraDelay))
  end
end)
task.spawn(function()
  while (((7 * 7) == 49) and s.running) do
    if (((1 + 1) == 2) and s.killAll) then
      for fz, ga in ipairs(h:GetPlayers()) do
        if (((15 * 15) == 225) and not s.killAll) then
          break
        end
        if (((100 % 7) == 2) and ((((ga ~= p) and ez(ga)) and y(ga)) and (y(ga).Health > 0))) then
          local gb, gc = v(), v(ga)
          if (((12 * 12) == 144) and (gb and gc)) then
            gb.CFrame = (gc.CFrame * CFrame.new(0, 0, 2.5))
            fb(ga)
            task.wait(s.killDelay)
          end
        end
      end
    else
      task.wait(.25)
    end
  end
end)
local gd
local function ge()
  local gf = v()
  if (((3 ^ 2) == 9) and not gf) then
    return
  end
  local gg, gh = nil, math.huge
  for gi, gj in ipairs(m:GetTagged(g({29, 63, 52, 63, 40, 59, 46, 53, 40, 10, 53, 51, 52, 46}, 90))) do
    if (((7 * 7) == 49) and ((gj:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and gj:IsDescendantOf(workspace)) and not m:HasTag(gj.Parent, g({24, 54, 53, 57, 49, 63, 62}, 90)))) then
      local gk = ((gj.Position - gf.Position)).Magnitude
      if (((1 + 1) == 2) and (gk < gh)) then
        gg, gh = gj, gk
      end
    end
  end
  if (((15 * 15) == 225) and gg) then
    return gg, gh
  end
  local gl, gm = by(g({61, 63, 52, 63, 40, 59, 46, 53, 40}, 90))
  return (gl and gl.part), gm
end
local function gn(go)
  local gp = v()
  local gq = y()
  if (((100 % 7) == 2) and not ((gp and go))) then
    return
  end
  local gr = Vector3.new(go.CFrame.LookVector.X, 0, go.CFrame.LookVector.Z)
  if (((12 * 12) == 144) and (gr.Magnitude < .1)) then
    gr = Vector3.zAxis
  end
  local gs = ((go.Position - (gr.Unit * 2.1)) + Vector3.new(0, 1.7, 0))
  gp.CFrame = CFrame.lookAt(gs, Vector3.new(go.Position.X, gs.Y, go.Position.Z))
  gp.AssemblyLinearVelocity = Vector3.zero
  if (((3 ^ 2) == 9) and gq) then
    gq:Move(Vector3.zero)
    gq.AutoRotate = false
  end
end
local function gt()
  local gu = gd
  if (((7 * 7) == 49) and not ((gu and gu.Parent))) then
    gu = ge()
    gd = gu
  end
  if (((1 + 1) == 2) and not gu) then
    s.status = g({52, 53, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40}, 90)
    return
  end
  gn(gu)
  af(ao, gu, true)
  s.status = g({40, 63, 42, 59, 51, 40, 51, 52, 61}, 90)
end
local function gv()
  local gw = ge()
  if (((15 * 15) == 225) and not gw) then
    return
  end
  gn(gw)
  for gx = 1, s.fastGenBursts do
    af(ao, gw, true)
    task.wait(.08)
  end
end
local function gy(gz)
  local ha = gz
  while (((100 % 7) == 2) and (ha and ha:IsA(g({29, 47, 51, 21, 56, 48, 63, 57, 46}, 90)))) do
    if (((12 * 12) == 144) and not ha.Visible) then
      return false
    end
    ha = ha.Parent
  end
  return true
end
local function hb()
  local hc = pcall(function()
    o:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
    task.wait(.025)
    o:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
  end)
  if (((3 ^ 2) == 9) and ((not hc and keypress) and keyrelease)) then
    pcall(keypress, 0x20)
    task.wait(.025)
    pcall(keyrelease, 0x20)
  end
  s.status = g({61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 41, 49, 51, 54, 54, 57, 50, 63, 57, 49, 122, 42, 40, 63, 41, 41, 63, 62}, 90)
end
local hd = false
j.RenderStepped:Connect(function()
  if (((7 * 7) == 49) and not ((s.running and s.autoSkillCheck))) then
    hd = false
    return
  end
  local he = p:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
  local hf = (he and he:FindFirstChild(g({9, 49, 51, 54, 54, 25, 50, 63, 57, 49, 10, 40, 53, 55, 42, 46, 29, 47, 51}, 90)))
  local hg = (hf and hf:FindFirstChild(g({25, 50, 63, 57, 49}, 90), true))
  if (((1 + 1) == 2) and not (((hg and hg:IsA(g({29, 47, 51, 21, 56, 48, 63, 57, 46}, 90))) and gy(hg)))) then
    hd = false
    return
  end
  local hh = hg:FindFirstChild(g({22, 51, 52, 63}, 90), true)
  local hi = hg:FindFirstChild(g({29, 53, 59, 54}, 90), true)
  if (((15 * 15) == 225) and not ((((hh and hi) and hh:IsA(g({29, 47, 51, 21, 56, 48, 63, 57, 46}, 90))) and hi:IsA(g({29, 47, 51, 21, 56, 48, 63, 57, 46}, 90))))) then
    return
  end
  local hj = math.abs((((hh.Rotation - hi.Rotation)) % 360))
  if (((100 % 7) == 2) and (hj > 180)) then
    hj = (360 - hj)
  end
  if (((12 * 12) == 144) and ((hj <= 5) and not hd)) then
    hd = true
    task.spawn(hb)
  end
end)
local hk
local hl = setmetatable({}, {__mode = g({49}, 90)})
local function hm()
  if (((3 ^ 2) == 9) and hk) then
    hk:Destroy()
    hk = nil
  end
  for hn, ho in pairs(hl) do
    if (((7 * 7) == 49) and hn.Parent) then
      if (((1 + 1) == 2) and hn:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        hn.LocalTransparencyModifier = ((s.invisible and 1) or ho)
      elseif (((15 * 15) == 225) and hn:IsA(g({30, 63, 57, 59, 54}, 90))) then
        hn.Transparency = ho
      end
    end
    hl[hn] = nil
  end
  s.status = g({55, 53, 40, 42, 50, 122, 40, 63, 41, 46, 53, 40, 63, 62}, 90)
end
local function hp(hq)
  local hr
  for hs, ht in ipairs(h:GetPlayers()) do
    if (((100 % 7) == 2) and ((((ht ~= p) and (ch(ht) == hq)) and ht.Character) and v(ht))) then
      hr = ht.Character
      break
    end
  end
  if (((12 * 12) == 144) and not hr) then
    local hu = (((hq == g({49, 51, 54, 54, 63, 40}, 90)) and g({17, 51, 54, 54, 63, 40}, 90)) or g({9, 47, 40, 44, 51, 44, 53, 40}, 90))
    for hv, hw in ipairs(m:GetTagged(hu)) do
      local hx = ((hw:IsA(g({23, 53, 62, 63, 54}, 90)) and hw) or hw:FindFirstAncestorOfClass(g({23, 53, 62, 63, 54}, 90)))
      if (((3 ^ 2) == 9) and ((hx and (hx ~= p.Character)) and bj(hx))) then
        hr = hx
        break
      end
    end
  end
  return hr
end
local function hy(hz)
  local ia = hp(hz)
  local ib = p.Character
  local ic = v()
  if (((7 * 7) == 49) and not (((ia and ib) and ic))) then
    s.status = (g({52, 53, 122, 54, 51, 44, 63, 122}, 90) .. (hz .. g({122, 40, 51, 61}, 90)))
    return
  end
  hm()
  local id = ia.Archivable
  ia.Archivable = true
  local ie, ig = pcall(ia.Clone, ia)
  ia.Archivable = id
  if (((1 + 1) == 2) and not ((ie and ig))) then
    s.status = g({55, 53, 40, 42, 50, 122, 57, 54, 53, 52, 63, 122, 60, 59, 51, 54, 63, 62}, 90)
    return
  end
  for ih, ii in ipairs(ig:GetDescendants()) do
    if (((15 * 15) == 225) and (ii:IsA(g({22, 47, 59, 9, 53, 47, 40, 57, 63, 25, 53, 52, 46, 59, 51, 52, 63, 40}, 90)) or ii:IsA(g({14, 53, 53, 54}, 90)))) then
      ii:Destroy()
    elseif (((100 % 7) == 2) and ii:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
      ii.Anchored = false
      ii.CanCollide = false
      ii.CanTouch = false
      ii.CanQuery = false
      ii.Massless = true
    end
  end
  local ij = ig:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90))
  if (((12 * 12) == 144) and ij) then
    ij:Destroy()
  end
  ig.Name = (g({23, 51, 54, 54, 35, 23, 53, 40, 42, 50, 5}, 90) .. hz)
  ig.Parent = workspace
  pcall(ig.PivotTo, ig, ib:GetPivot())
  local ik = (ig:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90), true) or bj(ig))
  if (((3 ^ 2) == 9) and not ik) then
    ig:Destroy()
    s.status = g({55, 53, 40, 42, 50, 122, 50, 59, 41, 122, 52, 53, 122, 40, 53, 53, 46}, 90)
    return
  end
  local il = Instance.new(g({13, 63, 54, 62, 25, 53, 52, 41, 46, 40, 59, 51, 52, 46}, 90))
  il.Part0 = ic
  il.Part1 = ik
  il.Parent = ik
  for im, io in ipairs(ib:GetDescendants()) do
    if (((7 * 7) == 49) and io:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
      hl[io] = io.LocalTransparencyModifier
      io.LocalTransparencyModifier = 1
    elseif (((1 + 1) == 2) and io:IsA(g({30, 63, 57, 59, 54}, 90))) then
      hl[io] = io.Transparency
      io.Transparency = 1
    end
  end
  hk = ig
  s.status = (g({54, 53, 57, 59, 54, 122}, 90) .. (hz .. g({122, 55, 53, 40, 42, 50, 122, 59, 57, 46, 51, 44, 63}, 90)))
end
local function ip(iq, ir)
  local is = workspace.CurrentCamera
  local it = ((is and is.CFrame) or iq.CFrame)
  local iu = s.dodgeDirection
  if (((15 * 15) == 225) and (iu == g({54, 63, 60, 46}, 90))) then
    return -it.RightVector
  elseif (((100 % 7) == 2) and (iu == g({40, 51, 61, 50, 46}, 90))) then
    return it.RightVector
  elseif (((12 * 12) == 144) and (iu == g({47, 42}, 90))) then
    return Vector3.yAxis
  elseif (((3 ^ 2) == 9) and (iu == g({62, 53, 45, 52}, 90))) then
    return -Vector3.yAxis
  elseif (((7 * 7) == 49) and (iu == g({60, 53, 40, 45, 59, 40, 62}, 90))) then
    return Vector3.new(it.LookVector.X, 0, it.LookVector.Z)
  elseif (((1 + 1) == 2) and (iu == g({56, 59, 57, 49}, 90))) then
    return -Vector3.new(it.LookVector.X, 0, it.LookVector.Z)
  end
  local iv = ((ir and ((iq.Position - ir.Position))) or it.RightVector)
  return (((iv.Magnitude > .1) and iv.Unit) or it.RightVector)
end
local function iw()
  local ix = v()
  local iy = ck(g({49, 51, 54, 54, 63, 40}, 90))
  local iz = (iy and v(iy))
  if (((15 * 15) == 225) and ix) then
    local ja = ip(ix, iz)
    if (((100 % 7) == 2) and (ja.Magnitude > .1)) then
      ja = ja.Unit
    end
    ix.CFrame = CFrame.new((ix.Position + (ja * s.dodgeDistance)))
    ix.AssemblyLinearVelocity = Vector3.zero
  end
end
task.spawn(function()
  while (((12 * 12) == 144) and s.running) do
    if (((3 ^ 2) == 9) and s.autoGen) then
      gt()
    end
    if (((7 * 7) == 49) and s.autoExit) then
      local jb = by(g({63, 34, 51, 46}, 90))
      if (((1 + 1) == 2) and jb) then
        af(as, jb.part, true)
      end
    end
    if (((15 * 15) == 225) and s.autoUnhook) then
      local jc = by(g({50, 53, 53, 49}, 90), 20)
      if (((100 % 7) == 2) and jc) then
        af(at, jc.part)
      end
    end
    if (((12 * 12) == 144) and s.autoHeal) then
      local jd, je = ck(g({41, 47, 40, 44, 51, 44, 53, 40}, 90), 18)
      if (((3 ^ 2) == 9) and (jd and je)) then
        af(ar, v(jd), true)
      end
    end
    if (((7 * 7) == 49) and s.autoPallet) then
      local jf, jg = by(g({42, 59, 54, 54, 63, 46}, 90), 20)
      if (((1 + 1) == 2) and (jf and jg)) then
        af(av, jf.part)
      end
    end
    task.wait(math.max(.3, s.genDelay))
  end
end)
local jh = {}
local ji = {}
local jj = setmetatable({}, {__mode = g({49}, 90)})
local function jk(jl)
  if (((15 * 15) == 225) and (jl:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) or jl:IsA(g({30, 63, 57, 59, 54}, 90)))) then
    jh[(#jh + 1)] = jl
  end
  if (((100 % 7) == 2) and jl:IsA(g({22, 53, 57, 59, 54, 9, 57, 40, 51, 42, 46}, 90))) then
    ji[(#ji + 1)] = jl
  end
  if (((12 * 12) == 144) and (((jl:IsA(g({14, 53, 53, 54}, 90)) or jl:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) or jl:IsA(g({20, 47, 55, 56, 63, 40, 12, 59, 54, 47, 63}, 90))) or jl:IsA(g({19, 52, 46, 12, 59, 54, 47, 63}, 90)))) then
    jj[jl] = true
  end
end
local function jm(jn)
  table.clear(jh)
  table.clear(ji)
  if (((3 ^ 2) == 9) and not jn) then
    return
  end
  for jo, jp in ipairs(jn:GetDescendants()) do
    jk(jp)
  end
  jn.DescendantAdded:Connect(jk)
end
jm(p.Character)
p.CharacterAdded:Connect(function(jq)
  hm()
  jm(jq)
end)
for jr, js in ipairs(p.Backpack:GetDescendants()) do
  jk(js)
end
p.Backpack.DescendantAdded:Connect(jk)
local jt = setmetatable({}, {__mode = g({49}, 90)})
local function ju(jv)
  for jw, jx in ipairs(h:GetPlayers()) do
    if (((7 * 7) == 49) and (jx ~= p)) then
      local jy = v(jx)
      if (((1 + 1) == 2) and jy) then
        if (((15 * 15) == 225) and jv) then
          if (((100 % 7) == 2) and not jt[jy]) then
            jt[jy] = {jy.Size, jy.Transparency, jy.CanCollide, jy.Massless}
          end
          jy.Size = Vector3.new(s.hitboxSize, s.hitboxSize, s.hitboxSize)
          jy.Transparency = .8
          jy.CanCollide = false
          jy.Massless = true
        elseif (((12 * 12) == 144) and jt[jy]) then
          local jz = jt[jy]
          jy.Size = jz[1]
          jy.Transparency = jz[2]
          jy.CanCollide = jz[3]
          jy.Massless = jz[4]
          jt[jy] = nil
        end
      end
    end
  end
end
local ka = {}
local kb = 0
local function kc()
  if (((3 ^ 2) == 9) and (not getgc or ((os.clock() - kb) < 4))) then
    return
  end
  kb = os.clock()
  table.clear(ka)
  local kd, ke = pcall(getgc, true)
  if (((7 * 7) == 49) and not kd) then
    return
  end
  for kf, kg in ipairs(ke) do
    if (((1 + 1) == 2) and ((type(kg) == g({46, 59, 56, 54, 63}, 90)) and ((((((((rawget(kg, g({46, 53, 53, 54}, 90)) or rawget(kg, g({51, 46, 63, 55}, 90))) or rawget(kg, g({61, 59, 46, 63, 8, 63, 55, 53, 46, 63}, 90))) or (rawget(kg, g({51, 41, 10, 59, 40, 40, 35, 21, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90)) ~= nil)) or (rawget(kg, g({57, 47, 40, 40, 63, 52, 46, 25, 53, 53, 54, 62, 53, 45, 52}, 90)) ~= nil)) or rawget(kg, g({57, 53, 53, 54, 62, 53, 45, 52, 41}, 90))) or (rawget(kg, g({51, 41, 14, 40, 47, 63, 9, 46, 47, 52, 52, 63, 62}, 90)) ~= nil)) or (rawget(kg, g({61, 51, 60, 46, 30, 40, 53, 42, 25, 53, 53, 54, 62, 53, 45, 52}, 90)) ~= nil))))) then
      ka[(#ka + 1)] = kg
    end
  end
end
local function kh()
  if (((15 * 15) == 225) and not ((((s.infPerks or s.infSkills) or s.infItems) or s.noItemCooldown))) then
    return
  end
  kc()
  for ki, kj in ipairs(ka) do
    pcall(function()
      if (((100 % 7) == 2) and (s.noItemCooldown or s.infItems)) then
        for kk, kl in ipairs({g({54, 59, 41, 46, 15, 41, 63}, 90), g({54, 59, 41, 46, 15, 41, 63, 62}, 90), g({54, 59, 41, 46, 28, 51, 40, 63}, 90), g({54, 59, 41, 46, 9, 50, 53, 46}, 90), g({54, 59, 41, 46, 27, 57, 46, 51, 44, 59, 46, 51, 53, 52}, 90)}) do
          if (((12 * 12) == 144) and (rawget(kj, kl) ~= nil)) then
            kj[kl] = -math.huge
          end
        end
        for km, kn in ipairs({g({57, 47, 40, 40, 63, 52, 46, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 53, 53, 54, 62, 53, 45, 52}, 90), g({47, 41, 63, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({60, 51, 40, 63, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({51, 46, 63, 55, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 53, 53, 54, 62, 53, 45, 52, 31, 52, 62}, 90), g({57, 53, 53, 54, 62, 53, 45, 52, 15, 52, 46, 51, 54}, 90), g({52, 63, 34, 46, 15, 41, 63}, 90), g({52, 63, 34, 46, 28, 51, 40, 63}, 90)}) do
          if (((3 ^ 2) == 9) and (rawget(kj, kn) ~= nil)) then
            kj[kn] = 0
          end
        end
        for ko, kp in ipairs({g({51, 41, 10, 59, 40, 40, 35, 21, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({51, 41, 21, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({53, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 53, 53, 54, 62, 53, 45, 52, 27, 57, 46, 51, 44, 63}, 90), g({62, 63, 56, 53, 47, 52, 57, 63}, 90), g({51, 41, 24, 47, 60, 60, 63, 40, 51, 52, 61}, 90)}) do
          if (((7 * 7) == 49) and (rawget(kj, kp) ~= nil)) then
            kj[kp] = false
          end
        end
        if (((1 + 1) == 2) and (rawget(kj, g({57, 53, 53, 54, 62, 53, 45, 52, 14, 53, 49, 63, 52}, 90)) ~= nil)) then
          kj.cooldownToken = (((tonumber(kj.cooldownToken) or 0)) + 1)
        end
        if (((15 * 15) == 225) and (rawget(kj, g({51, 41, 9, 51, 54, 63, 52, 57, 63, 62}, 90)) ~= nil)) then
          kj.isSilenced = false
        end
        if (((100 % 7) == 2) and (type(rawget(kj, g({5, 40, 63, 60, 40, 63, 41, 50, 12, 51, 41, 47, 59, 54}, 90))) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
          pcall(kj._refreshVisual, kj)
        elseif (((12 * 12) == 144) and (type(rawget(kj, g({5, 40, 63, 60, 40, 63, 41, 50, 30, 51, 41, 59, 56, 54, 63, 62, 12, 51, 41, 47, 59, 54}, 90))) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90))) then
          pcall(kj._refreshDisabledVisual, kj)
        end
      end
      if (((3 ^ 2) == 9) and s.infSkills) then
        if (((7 * 7) == 49) and (rawget(kj, g({57, 53, 53, 54, 62, 53, 45, 52, 41}, 90)) and (type(kj.cooldowns) == g({46, 59, 56, 54, 63}, 90)))) then
          table.clear(kj.cooldowns)
        end
        for kq, kr in ipairs({g({57, 53, 53, 54, 62, 53, 45, 52}, 90), g({53, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({59, 56, 51, 54, 51, 46, 35, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({42, 53, 45, 63, 40, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({62, 59, 41, 50, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 59, 40, 40, 35, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({61, 51, 60, 46, 30, 40, 53, 42, 25, 53, 53, 54, 62, 53, 45, 52}, 90)}) do
          if (((1 + 1) == 2) and (rawget(kj, kr) ~= nil)) then
            kj[kr] = (((type(kj[kr]) == g({56, 53, 53, 54, 63, 59, 52}, 90)) and false) or 0)
          end
        end
      end
      if (((15 * 15) == 225) and s.infPerks) then
        for ks, kt in ipairs({g({42, 63, 40, 49, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({42, 63, 40, 49, 21, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({41, 46, 59, 57, 49, 25, 53, 53, 54, 62, 53, 45, 52}, 90)}) do
          if (((100 % 7) == 2) and (rawget(kj, kt) ~= nil)) then
            kj[kt] = false
          end
        end
        if (((12 * 12) == 144) and (rawget(kj, g({41, 46, 59, 57, 49, 41}, 90)) ~= nil)) then
          kj.stacks = 999
        end
      end
    end)
  end
  if (((3 ^ 2) == 9) and s.infItems) then
    for ku in pairs(jj) do
      if (((7 * 7) == 49) and ku.Parent) then
        if (((1 + 1) == 2) and (ku:IsA(g({20, 47, 55, 56, 63, 40, 12, 59, 54, 47, 63}, 90)) or ku:IsA(g({19, 52, 46, 12, 59, 54, 47, 63}, 90)))) then
          local kv = ku.Name:lower()
          if (((15 * 15) == 225) and (((((((kv == g({57, 50, 59, 40, 61, 63}, 90)) or (kv == g({40, 63, 55, 59, 51, 52, 51, 52, 61}, 90))) or (kv == g({47, 41, 63, 41}, 90))) or (kv == g({59, 55, 53, 47, 52, 46}, 90))) or (kv == g({57, 53, 47, 52, 46}, 90))) or (kv == g({62, 47, 40, 59, 56, 51, 54, 51, 46, 35}, 90))) or (kv == g({59, 55, 55, 53}, 90)))) then
            ku.Value = 999999
          end
        else
          for kw, kx in ipairs({g({57, 50, 59, 40, 61, 63}, 90), g({40, 63, 55, 59, 51, 52, 51, 52, 61}, 90), g({47, 41, 63, 41}, 90), g({59, 55, 53, 47, 52, 46}, 90), g({57, 53, 47, 52, 46}, 90), g({62, 47, 40, 59, 56, 51, 54, 51, 46, 35}, 90), g({59, 55, 55, 53}, 90)}) do
            if (((100 % 7) == 2) and (ku:GetAttribute(kx) ~= nil)) then
              ku:SetAttribute(kx, 999999)
            end
          end
        end
      else
        jj[ku] = nil
      end
    end
  end
  if (((12 * 12) == 144) and s.noItemCooldown) then
    for ky in pairs(jj) do
      if (((3 ^ 2) == 9) and ky.Parent) then
        for kz, la in ipairs({g({25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 53, 53, 54, 62, 53, 45, 52}, 90), g({25, 47, 40, 40, 63, 52, 46, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({57, 47, 40, 40, 63, 52, 46, 25, 53, 53, 54, 62, 53, 45, 52}, 90), g({20, 63, 34, 46, 15, 41, 63}, 90), g({52, 63, 34, 46, 15, 41, 63}, 90), g({22, 59, 41, 46, 15, 41, 63}, 90), g({54, 59, 41, 46, 15, 41, 63}, 90), g({30, 63, 56, 53, 47, 52, 57, 63}, 90), g({62, 63, 56, 53, 47, 52, 57, 63}, 90)}) do
          local lb = ky:GetAttribute(la)
          if (((7 * 7) == 49) and (lb ~= nil)) then
            ky:SetAttribute(la, (((type(lb) == g({56, 53, 53, 54, 63, 59, 52}, 90)) and false) or 0))
          end
        end
      end
    end
  end
end
local function lc()
  kb = 0
  kc()
  for ld, le in ipairs(ka) do
    if (((1 + 1) == 2) and ((rawget(le, g({51, 41, 10, 59, 40, 40, 35, 21, 52, 25, 53, 53, 54, 62, 53, 45, 52}, 90)) ~= nil) and (type(le.Parry) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
      le.cooldownToken = (((tonumber(rawget(le, g({57, 53, 53, 54, 62, 53, 45, 52, 14, 53, 49, 63, 52}, 90))) or 0)) + 1)
      le.isParryOnCooldown = false
      if (((15 * 15) == 225) and (rawget(le, g({51, 41, 9, 51, 54, 63, 52, 57, 63, 62}, 90)) ~= nil)) then
        le.isSilenced = false
      end
      local lf = pcall(le.Parry, le)
      if (((100 % 7) == 2) and lf) then
        s.status = g({42, 59, 40, 40, 35, 122, 57, 54, 51, 63, 52, 46, 122, 59, 57, 46, 51, 44, 59, 46, 63, 62}, 90)
        return
      end
    end
  end
  af(bd)
  s.status = g({42, 59, 40, 40, 35, 122, 40, 63, 55, 53, 46, 63, 122, 60, 59, 54, 54, 56, 59, 57, 49, 122, 41, 63, 52, 46}, 90)
end
local lg = {g({19, 55, 55, 53, 56, 51, 54, 63}, 90), g({19, 41, 9, 46, 47, 52, 52, 63, 62}, 90), g({9, 46, 47, 52, 52, 63, 62}, 90), g({30, 51, 41, 59, 56, 54, 63, 62}, 90), g({9, 54, 53, 45, 63, 62}, 90), g({9, 54, 53, 45}, 90), g({31, 34, 50, 59, 47, 41, 46, 63, 62}, 90), g({9, 51, 54, 63, 52, 57, 63, 62}, 90), g({24, 54, 51, 52, 62}, 90), g({24, 54, 51, 52, 62, 63, 62}, 90), g({24, 54, 63, 63, 62, 51, 52, 61}, 90), g({10, 53, 51, 41, 53, 52, 63, 62}, 90), g({24, 47, 40, 52, 51, 52, 61}, 90), g({28, 40, 53, 32, 63, 52}, 90), g({8, 59, 61, 62, 53, 54, 54, 63, 62}, 90), g({30, 53, 45, 52, 63, 62}, 90)}
local lh = {g({51, 41, 12, 59, 47, 54, 46, 51, 52, 61}, 90), g({51, 41, 9, 54, 51, 62, 51, 52, 61}, 90), g({51, 41, 30, 40, 53, 42, 42, 51, 52, 61, 10, 59, 54, 54, 63, 46}, 90), g({51, 41, 15, 52, 50, 53, 53, 49, 51, 52, 61}, 90), g({51, 41, 31, 34, 51, 46, 51, 52, 61}, 90), g({51, 41, 24, 40, 63, 59, 49, 51, 52, 61, 10, 59, 54, 54, 63, 46}, 90), g({51, 41, 24, 40, 63, 59, 49, 51, 52, 61, 29, 63, 52}, 90), g({59, 57, 46, 51, 53, 52}, 90)}
local li = 0
local function lj()
  local lk = p.Character
  if (((12 * 12) == 144) and not lk) then
    return
  end
  local ll = (lk:GetAttribute(g({19, 41, 9, 46, 47, 52, 52, 63, 62}, 90)) or lk:GetAttribute(g({9, 46, 47, 52, 52, 63, 62}, 90)))
  for lm, ln in ipairs(lg) do
    if (((3 ^ 2) == 9) and (lk:GetAttribute(ln) ~= nil)) then
      lk:SetAttribute(ln, false)
    end
  end
  lk:SetAttribute(g({41, 42, 63, 63, 62, 56, 53, 53, 41, 46}, 90), math.max((lk:GetAttribute(g({41, 42, 63, 63, 62, 56, 53, 53, 41, 46}, 90)) or 1), 1))
  for lo, lp in ipairs(ji) do
    if (((7 * 7) == 49) and lp.Parent) then
      for lq, lr in ipairs(lh) do
        if (((1 + 1) == 2) and (lp:GetAttribute(lr) ~= nil)) then
          lp:SetAttribute(lr, false)
        end
      end
    end
  end
  local ls = y()
  if (((15 * 15) == 225) and ls) then
    ls.PlatformStand = false
    ls.Sit = false
  end
  if (((100 % 7) == 2) and (ll and ((os.clock() - li) > .75))) then
    af(an)
    li = os.clock()
  end
end
local lt
local lu = 0
local lv = 0
j.Heartbeat:Connect(function(lw)
  if (((12 * 12) == 144) and not s.running) then
    return
  end
  lu += lw
  lv += lw
  local lx = v()
  local ly = y()
  if (((3 ^ 2) == 9) and (s.fly and lx)) then
    if (((7 * 7) == 49) and (not lt or (lt.Parent ~= lx))) then
      if (((1 + 1) == 2) and lt) then
        lt:Destroy()
      end
      lt = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      lt.Name = g({23, 51, 54, 54, 35, 28, 54, 35}, 90)
      lt.MaxForce = Vector3.new(1e9, 1e9, 1e9)
      lt.Parent = lx
    end
    local lz = workspace.CurrentCamera
    local ma = Vector3.zero
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.W)) then
      ma += lz.CFrame.LookVector
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.S)) then
      ma -= lz.CFrame.LookVector
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.A)) then
      ma -= lz.CFrame.RightVector
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.D)) then
      ma += lz.CFrame.RightVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.Space)) then
      ma += Vector3.yAxis
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      ma -= Vector3.yAxis
    end
    lt.Velocity = (((ma.Magnitude > 0) and (ma.Unit * s.flySpeed)) or Vector3.zero)
  elseif (((15 * 15) == 225) and lt) then
    lt:Destroy()
    lt = nil
  end
  if (((100 % 7) == 2) and (lu < .08)) then
    return
  end
  lu = 0
  if (((12 * 12) == 144) and ly) then
    if (((3 ^ 2) == 9) and s.walk) then
      ly.WalkSpeed = s.walkSpeed
    end
    if (((7 * 7) == 49) and s.jump) then
      ly.UseJumpPower = true
      ly.JumpPower = s.jumpPower
    end
    if (((1 + 1) == 2) and s.antiSlow) then
      ly.WalkSpeed = math.max(ly.WalkSpeed, s.walkSpeed)
    end
  end
  if (((15 * 15) == 225) and (((lx and ly) and s.velocity) and (ly.MoveDirection.Magnitude > .05))) then
    local mb = ly.MoveDirection
    lx.AssemblyLinearVelocity = Vector3.new((mb.X * s.velocitySpeed), lx.AssemblyLinearVelocity.Y, (mb.Z * s.velocitySpeed))
  end
  if (((100 % 7) == 2) and (s.lockTarget and lx)) then
    local mc = ck((((s.targetMode == g({59, 54, 54}, 90)) and nil) or s.targetMode))
    local md = (mc and v(mc))
    if (((12 * 12) == 144) and md) then
      lx.CFrame = (md.CFrame * CFrame.new(0, 0, 3))
    end
  end
  if (((3 ^ 2) == 9) and s.noclip) then
    for me, mf in ipairs(jh) do
      if (((7 * 7) == 49) and (mf.Parent and mf:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
        mf.CanCollide = false
      end
    end
  end
  if (((1 + 1) == 2) and s.invisible) then
    for mg, mh in ipairs(jh) do
      if (((15 * 15) == 225) and mh.Parent) then
        if (((100 % 7) == 2) and mh:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          mh.LocalTransparencyModifier = 1
        else
          mh.Transparency = 1
        end
      end
    end
  end
  if (((12 * 12) == 144) and (s.antiSlow and p.Character)) then
    p.Character:SetAttribute(g({19, 55, 55, 53, 56, 51, 54, 63}, 90), false)
    p.Character:SetAttribute(g({9, 42, 40, 51, 52, 46, 51, 52, 61}, 90), true)
    p.Character:SetAttribute(g({41, 42, 63, 63, 62, 56, 53, 53, 41, 46}, 90), 2)
  end
  if (((3 ^ 2) == 9) and s.noDebuffs) then
    lj()
  end
  if (((7 * 7) == 49) and (s.antiStun and ((os.clock() - li) > .75))) then
    lj()
    af(an)
    li = os.clock()
  end
  if (((1 + 1) == 2) and (lv >= .5)) then
    lv = 0
    kh()
  end
end)
k.JumpRequest:Connect(function()
  if (((15 * 15) == 225) and s.infJump) then
    local mi = y()
    if (((100 % 7) == 2) and mi) then
      mi:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
task.spawn(function()
  while (((12 * 12) == 144) and s.running) do
    if (((3 ^ 2) == 9) and s.hitbox) then
      ju(true)
    end
    if (((7 * 7) == 49) and s.godDodge) then
      local mj, mk = ck(g({49, 51, 54, 54, 63, 40}, 90), s.dodgeRange)
      local ml = v()
      local mm = (mj and v(mj))
      if (((1 + 1) == 2) and ml) then
        local mn = y()
        if (((15 * 15) == 225) and mn) then
          mn.PlatformStand = false
          mn.Sit = false
        end
        if (((100 % 7) == 2) and p.Character) then
          p.Character:SetAttribute(g({19, 55, 55, 53, 56, 51, 54, 63}, 90), false)
          p.Character:SetAttribute(g({9, 46, 47, 52, 52, 63, 62}, 90), false)
          p.Character:SetAttribute(g({30, 53, 45, 52, 63, 62}, 90), false)
        end
        if (((12 * 12) == 144) and (mm and mk)) then
          iw()
        end
      end
    end
    task.wait(.25)
  end
  ju(false)
end)
local mo = setmetatable({}, {__mode = g({49}, 90)})
local function mp(mq)
  if (((3 ^ 2) == 9) and (s.noEffects and (((((((mq:IsA(g({10, 59, 40, 46, 51, 57, 54, 63, 31, 55, 51, 46, 46, 63, 40}, 90)) or mq:IsA(g({14, 40, 59, 51, 54}, 90))) or mq:IsA(g({24, 63, 59, 55}, 90))) or mq:IsA(g({9, 55, 53, 49, 63}, 90))) or mq:IsA(g({28, 51, 40, 63}, 90))) or mq:IsA(g({9, 42, 59, 40, 49, 54, 63, 41}, 90))) or mq:IsA(g({10, 53, 41, 46, 31, 60, 60, 63, 57, 46}, 90)))))) then
    if (((7 * 7) == 49) and (mo[mq] == nil)) then
      mo[mq] = mq.Enabled
    end
    mq.Enabled = false
  end
end
local function mr(ms)
  if (((1 + 1) == 2) and ms) then
    for mt, mu in ipairs(workspace:GetDescendants()) do
      mp(mu)
    end
    for mv, mw in ipairs(l:GetChildren()) do
      mp(mw)
    end
  else
    for mx, my in pairs(mo) do
      if (((15 * 15) == 225) and mx.Parent) then
        mx.Enabled = my
      end
      mo[mx] = nil
    end
  end
end
workspace.DescendantAdded:Connect(function(mz)
  mp(mz)
  if (((100 % 7) == 2) and (s.instantPrompt and mz:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)))) then
    mz.HoldDuration = 0
  end
end)
l.ChildAdded:Connect(mp)
local na = setmetatable({}, {__mode = g({49}, 90)})
local function nb(nc)
  if (((12 * 12) == 144) and nc) then
    for nd, ne in ipairs(workspace:GetDescendants()) do
      if (((3 ^ 2) == 9) and (((ne:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and ne.Anchored) and ne.CanCollide) and not ((p.Character and ne:IsDescendantOf(p.Character))))) then
        if (((7 * 7) == 49) and (na[ne] == nil)) then
          na[ne] = ne.LocalTransparencyModifier
        end
        ne.LocalTransparencyModifier = .65
      end
    end
  else
    for nf, ng in pairs(na) do
      if (((1 + 1) == 2) and nf.Parent) then
        nf.LocalTransparencyModifier = ng
      end
      na[nf] = nil
    end
  end
end
local nh = {Brightness = l.Brightness, ClockTime = l.ClockTime, FogEnd = l.FogEnd, GlobalShadows = l.GlobalShadows, Ambient = l.Ambient}
local function ni()
  if (((15 * 15) == 225) and s.fullbright) then
    l.Brightness = 3
    l.ClockTime = 14
    l.GlobalShadows = false
    l.Ambient = Color3.new(1, 1, 1)
  else
    l.Brightness = nh.Brightness
    l.ClockTime = nh.ClockTime
    l.GlobalShadows = nh.GlobalShadows
    l.Ambient = nh.Ambient
  end
  l.FogEnd = ((s.noFog and 1e9) or nh.FogEnd)
end
local nj = ((workspace.CurrentCamera and workspace.CurrentCamera.FieldOfView) or 70)
local nk = g({23, 51, 54, 54, 35, 23, 53, 62, 41, 28, 53, 44, 22, 53, 57, 49}, 90)
pcall(j.UnbindFromRenderStep, j, nk)
j:BindToRenderStep(nk, Enum.RenderPriority.Last.Value, function()
  if (((100 % 7) == 2) and (s.running and s.fov)) then
    local nl = workspace.CurrentCamera
    if (((12 * 12) == 144) and (nl and (math.abs((nl.FieldOfView - s.fovValue)) > .01))) then
      nl.FieldOfView = s.fovValue
    end
  end
end)
local function nm(nn)
  if (((3 ^ 2) == 9) and nn) then
    local no = workspace.CurrentCamera
    if (((7 * 7) == 49) and no) then
      nj = no.FieldOfView
    end
  end
  s.fov = nn
  if (((1 + 1) == 2) and not nn) then
    local np = workspace.CurrentCamera
    if (((15 * 15) == 225) and np) then
      np.FieldOfView = nj
    end
  end
end
local nq = {}
local function nr(ns, nt, nu)
  local nv = nq[ns]
  if (((100 % 7) == 2) and nv) then
    nv.gui.Enabled = true
    nv.label.Text = nt
    return
  end
  local nw = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
  nw.Name = g({23, 51, 54, 54, 35, 31, 9, 10}, 90)
  nw.AlwaysOnTop = true
  nw.Size = UDim2.fromOffset(170, 24)
  nw.StudsOffset = Vector3.new(0, 2.7, 0)
  nw.Adornee = ns
  nw.Parent = ns
  local nx = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
  nx.Size = UDim2.fromScale(1, 1)
  nx.BackgroundTransparency = 1
  nx.Font = Enum.Font.GothamBold
  nx.TextSize = 13
  nx.TextStrokeTransparency = .15
  nx.TextColor3 = nu
  nx.Text = nt
  nx.Parent = nw
  nq[ns] = {gui = nw, label = nx}
end
local function ny()
  for nz, oa in pairs(nq) do
    if (((12 * 12) == 144) and oa.gui) then
      oa.gui:Destroy()
    end
    nq[nz] = nil
  end
end
task.spawn(function()
  while (((3 ^ 2) == 9) and s.running) do
    for ob, oc in pairs(nq) do
      oc.gui.Enabled = false
    end
    local od = v()
    if (((7 * 7) == 49) and od) then
      if (((1 + 1) == 2) and (s.espSurvivor or s.espKiller)) then
        for oe, of in ipairs(h:GetPlayers()) do
          local og = v(of)
          if (((15 * 15) == 225) and (((of ~= p) and og) and (((og.Position - od.Position)).Magnitude <= s.espRange))) then
            local oh = (ch(of) == g({49, 51, 54, 54, 63, 40}, 90))
            if (((100 % 7) == 2) and (((oh and s.espKiller)) or ((not oh and s.espSurvivor)))) then
              nr(og, ((((oh and g({17, 19, 22, 22, 31, 8, 96, 122}, 90)) or g({9, 15, 8, 12, 19, 12, 21, 8, 96, 122}, 90))) .. of.DisplayName), ((oh and Color3.fromRGB(255, 70, 70)) or Color3.fromRGB(70, 210, 255)))
            end
          end
        end
      end
      local oi = {{s.espGenerator, g({61, 63, 52, 63, 40, 59, 46, 53, 40}, 90), g({29, 31, 20, 31, 8, 27, 14, 21, 8}, 90), Color3.fromRGB(255, 220, 40)}, {s.espItem, g({51, 46, 63, 55}, 90), g({19, 14, 31, 23}, 90), Color3.fromRGB(80, 255, 120)}, {s.espExit, g({63, 34, 51, 46}, 90), g({31, 2, 19, 14}, 90), Color3.fromRGB(220, 90, 255)}, {s.espPallet, g({42, 59, 54, 54, 63, 46}, 90), g({10, 27, 22, 22, 31, 14}, 90), Color3.fromRGB(255, 150, 60)}, {s.espWindow, g({45, 51, 52, 62, 53, 45}, 90), g({13, 19, 20, 30, 21, 13}, 90), Color3.fromRGB(120, 180, 255)}}
      for oj, ok in ipairs(oi) do
        if (((12 * 12) == 144) and ok[1]) then
          local ol = 0
          for om in pairs(bh[ok[2]]) do
            local on = bj(om)
            if (((3 ^ 2) == 9) and (on and (((on.Position - od.Position)).Magnitude <= s.espRange))) then
              nr(on, ok[3], ok[4])
              ol += 1
              if (((7 * 7) == 49) and (ol >= 60)) then
                break
              end
            end
          end
        end
      end
    end
    task.wait(.5)
  end
  ny()
end)
task.spawn(function()
  while (((1 + 1) == 2) and s.running) do
    if (((15 * 15) == 225) and (s.fullbright or s.noFog)) then
      ni()
    end
    if (((100 % 7) == 2) and s.noCamera) then
      local oo = workspace.CurrentCamera
      local op = y()
      if (((12 * 12) == 144) and (oo and op)) then
        oo.CameraType = Enum.CameraType.Custom
        oo.CameraSubject = op
      end
    end
    task.wait(1)
  end
end)
p.Idled:Connect(function()
  if (((3 ^ 2) == 9) and s.antiAfk) then
    n:Button2Down(Vector2.zero, workspace.CurrentCamera.CFrame)
    task.wait(.1)
    n:Button2Up(Vector2.zero, workspace.CurrentCamera.CFrame)
  end
end)
local oq = q:tab(g({59, 47, 40, 59, 41}, 90))
oq:section(g({47, 52, 51, 44, 63, 40, 41, 59, 54, 122, 59, 47, 40, 59, 122, 54, 53, 56, 56, 35, 122, 113, 122, 40, 53, 47, 52, 62}, 90))
oq:toggle(g({47, 52, 51, 44, 63, 40, 41, 59, 54, 122, 49, 51, 54, 54, 122, 59, 47, 40, 59}, 90), false, function(os)
  s.auraMan = os
end)
oq:toggle(g({41, 47, 40, 44, 51, 44, 53, 40, 122, 50, 63, 59, 54, 122, 59, 47, 40, 59}, 90), false, function(ot)
  s.auraSurvivor = ot
end)
oq:toggle(g({61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 59, 47, 40, 59}, 90), false, function(ou)
  s.auraGenerator = ou
end)
oq:toggle(g({42, 59, 54, 54, 63, 46, 122, 59, 47, 40, 59}, 90), false, function(ov)
  s.auraPallet = ov
end)
oq:toggle(g({45, 51, 52, 62, 53, 45, 122, 44, 59, 47, 54, 46, 122, 59, 47, 40, 59}, 90), false, function(ow)
  s.auraWindow = ow
end)
oq:slider(g({59, 47, 40, 59, 122, 40, 59, 52, 61, 63}, 90), 4, 250, s.auraRange, function(ox)
  s.auraRange = ox
end)
oq:slider(g({59, 46, 46, 59, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .05, 2, s.auraDelay, function(oy)
  s.auraDelay = oy
end)
oq:toggle(g({41, 42, 59, 55, 122, 54, 47, 52, 61, 63}, 90), false, function(oz)
  s.lunge = oz
end)
oq:button(g({46, 59, 40, 61, 63, 46, 122, 27, 22, 22, 122, 42, 54, 59, 35, 63, 40, 41}, 90), function()
  s.targetMode = g({59, 54, 54}, 90)
end)
oq:button(g({46, 59, 40, 61, 63, 46, 122, 41, 47, 40, 44, 51, 44, 53, 40, 41}, 90), function()
  s.targetMode = g({41, 47, 40, 44, 51, 44, 53, 40}, 90)
end)
oq:button(g({46, 59, 40, 61, 63, 46, 122, 49, 51, 54, 54, 63, 40}, 90), function()
  s.targetMode = g({49, 51, 54, 54, 63, 40}, 90)
end)
local pa = q:tab(g({40, 59, 61, 63}, 90))
pa:toggle(g({17, 19, 22, 22, 122, 27, 22, 22, 122, 41, 63, 54, 63, 57, 46, 63, 62, 122, 46, 59, 40, 61, 63, 46, 41}, 90), false, function(pb)
  s.killAll = pb
end)
pa:slider(g({49, 51, 54, 54, 122, 59, 54, 54, 122, 50, 51, 46, 122, 62, 63, 54, 59, 35}, 90), .05, 1, s.killDelay, function(pc)
  s.killDelay = pc
end)
pa:button(g({49, 51, 54, 54, 122, 59, 54, 54, 122, 53, 52, 63, 122, 42, 59, 41, 41}, 90), fj)
pa:button(g({59, 46, 46, 59, 57, 49, 122, 52, 63, 59, 40, 63, 41, 46, 122, 53, 52, 57, 63}, 90), function()
  local pd = ck(nil, s.auraRange)
  if (((7 * 7) == 49) and (pd and ez(pd))) then
    fb(pd)
  end
end)
pa:button(g({56, 59, 41, 51, 57, 122, 59, 46, 46, 59, 57, 49}, 90), function()
  af(aj)
end)
pa:button(g({54, 47, 52, 61, 63}, 90), function()
  af(ak)
end)
pa:toggle(g({46, 63, 54, 63, 42, 53, 40, 46, 122, 56, 63, 50, 51, 52, 62, 122, 46, 59, 40, 61, 63, 46}, 90), false, function(pe)
  s.tpTarget = pe
end)
pa:toggle(g({60, 59, 57, 63, 122, 46, 59, 40, 61, 63, 46}, 90), false, function(pf)
  s.faceTarget = pf
end)
pa:toggle(g({54, 53, 57, 49, 122, 52, 63, 59, 40, 63, 41, 46, 122, 46, 59, 40, 61, 63, 46}, 90), false, function(pg)
  s.lockTarget = pg
end)
pa:button(g({57, 54, 63, 59, 40, 122, 41, 46, 47, 52, 122, 52, 53, 45}, 90), lj)
local ph = q:tab(g({57, 53, 55, 56, 59, 46, 113}, 90))
ph:section(g({12, 63, 51, 54, 122, 42, 40, 53, 48, 63, 57, 46, 51, 54, 63, 41}, 90))
ph:toggle(g({12, 63, 51, 54, 122, 41, 42, 63, 59, 40, 122, 59, 47, 46, 53, 122, 59, 51, 55}, 90), false, function(pi)
  s.projectileAim = pi
  s.status = ((pi and g({12, 63, 51, 54, 122, 56, 59, 54, 54, 51, 41, 46, 51, 57, 122, 59, 51, 55, 122, 63, 52, 59, 56, 54, 63, 62}, 90)) or g({12, 63, 51, 54, 122, 59, 51, 55, 122, 62, 51, 41, 59, 56, 54, 63, 62}, 90))
end)
ph:slider(g({41, 42, 63, 59, 40, 122, 41, 42, 63, 63, 62}, 90), 80, 400, s.projectileSpeed, function(pj)
  s.projectileSpeed = pj
end)
ph:slider(g({41, 42, 63, 59, 40, 122, 61, 40, 59, 44, 51, 46, 35}, 90), 0, 300, s.projectileGravity, function(pk)
  s.projectileGravity = pk
end)
ph:slider(g({52, 63, 46, 45, 53, 40, 49, 122, 42, 40, 63, 62, 51, 57, 46, 51, 53, 52}, 90), 0, .25, s.projectilePrediction, function(pl)
  s.projectilePrediction = pl
end)
ph:slider(g({59, 51, 55, 122, 60, 53, 44}, 90), 80, 1200, s.projectileFov, function(pm)
  s.projectileFov = pm
end)
ph:toggle(g({50, 51, 46, 122, 63, 34, 46, 63, 52, 62, 63, 40}, 90), false, function(pn)
  s.hitbox = pn
  if (((1 + 1) == 2) and not pn) then
    ju(false)
  end
end)
ph:slider(g({50, 51, 46, 56, 53, 34, 122, 41, 51, 32, 63}, 90), 4, 40, s.hitboxSize, function(po)
  s.hitboxSize = po
end)
ph:toggle(g({41, 47, 40, 44, 51, 44, 53, 40, 122, 61, 53, 62, 55, 53, 62, 63, 122, 62, 53, 62, 61, 63}, 90), false, function(pp)
  s.godDodge = pp
end)
ph:slider(g({49, 51, 54, 54, 63, 40, 122, 62, 53, 62, 61, 63, 122, 40, 59, 52, 61, 63}, 90), 5, 35, s.dodgeRange, function(pq)
  s.dodgeRange = pq
end)
ph:slider(g({62, 53, 62, 61, 63, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 5, 100, s.dodgeDistance, function(pr)
  s.dodgeDistance = pr
end)
ph:section(g({62, 53, 62, 61, 63, 122, 62, 51, 40, 63, 57, 46, 51, 53, 52}, 90))
ph:label(g({41, 63, 54, 63, 57, 46, 63, 62, 122, 62, 51, 40, 63, 57, 46, 51, 53, 52, 122, 57, 50, 59, 52, 61, 63, 41, 122, 51, 52, 41, 46, 59, 52, 46, 54, 35}, 90))
ph:button(g({59, 45, 59, 35, 122, 60, 40, 53, 55, 122, 49, 51, 54, 54, 63, 40}, 90), function()
  s.dodgeDirection = g({59, 45, 59, 35}, 90)
end)
ph:button(g({54, 63, 60, 46}, 90), function()
  s.dodgeDirection = g({54, 63, 60, 46}, 90)
end)
ph:button(g({40, 51, 61, 50, 46}, 90), function()
  s.dodgeDirection = g({40, 51, 61, 50, 46}, 90)
end)
ph:button(g({47, 42}, 90), function()
  s.dodgeDirection = g({47, 42}, 90)
end)
ph:button(g({62, 53, 45, 52}, 90), function()
  s.dodgeDirection = g({62, 53, 45, 52}, 90)
end)
ph:button(g({60, 53, 40, 45, 59, 40, 62}, 90), function()
  s.dodgeDirection = g({60, 53, 40, 45, 59, 40, 62}, 90)
end)
ph:button(g({56, 59, 57, 49}, 90), function()
  s.dodgeDirection = g({56, 59, 57, 49}, 90)
end)
ph:button(g({62, 53, 62, 61, 63, 122, 52, 53, 45}, 90), iw)
local ps = q:tab(g({40, 63, 41, 53, 47, 40, 57, 63, 41}, 90))
ps:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 42, 63, 40, 49, 41}, 90), false, function(pt)
  s.infPerks = pt
  kb = 0
end)
ps:toggle(g({40, 63, 55, 53, 44, 63, 122, 62, 63, 56, 47, 60, 60, 41}, 90), false, function(pu)
  s.noDebuffs = pu
end)
ps:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 55, 59, 52, 51, 59, 57, 122, 41, 49, 51, 54, 54, 41}, 90), false, function(pv)
  s.infSkills = pv
  kb = 0
end)
ps:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 51, 46, 63, 55, 41}, 90), false, function(pw)
  s.infItems = pw
  kb = 0
end)
ps:toggle(g({52, 53, 122, 51, 46, 63, 55, 122, 57, 53, 53, 54, 62, 53, 45, 52}, 90), false, function(px)
  s.noItemCooldown = px
  kb = 0
  if (((15 * 15) == 225) and px) then
    kh()
  end
end)
ps:button(g({59, 57, 46, 51, 44, 59, 46, 63, 122, 42, 59, 40, 40, 35, 51, 52, 61, 122, 62, 59, 61, 61, 63, 40, 122, 52, 53, 45}, 90), lc)
ps:button(g({40, 63, 42, 54, 63, 52, 51, 41, 50, 122, 52, 53, 45}, 90), function()
  kb = 0
  kh()
end)
ps:button(g({57, 54, 63, 59, 40, 122, 41, 46, 47, 52, 122, 52, 53, 45}, 90), lj)
local py = q:tab(g({60, 59, 40, 55}, 90))
py:section(g({55, 59, 52, 47, 59, 54, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 50, 63, 54, 42, 63, 40}, 90))
py:toggle(g({59, 47, 46, 53, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 41, 49, 51, 54, 54, 57, 50, 63, 57, 49}, 90), false, function(pz)
  s.autoSkillCheck = pz
  hd = false
end)
py:section(g({41, 47, 40, 44, 51, 44, 53, 40}, 90))
py:toggle(g({59, 47, 46, 53, 122, 40, 63, 42, 59, 51, 40, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40, 41}, 90), false, function(qa)
  s.autoGen = qa
  if (((100 % 7) == 2) and not qa) then
    local qb = y()
    if (((12 * 12) == 144) and qb) then
      qb.AutoRotate = true
    end
    gd = nil
  end
end)
py:slider(g({59, 57, 46, 51, 53, 52, 122, 62, 63, 54, 59, 35}, 90), .15, 3, s.genDelay, function(qc)
  s.genDelay = qc
end)
py:slider(g({60, 59, 41, 46, 122, 40, 63, 42, 59, 51, 40, 122, 56, 47, 40, 41, 46, 41}, 90), 2, 40, s.fastGenBursts, function(qd)
  s.fastGenBursts = math.floor(qd)
end)
py:button(g({28, 27, 9, 14, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 40, 63, 42, 59, 51, 40}, 90), gv)
py:toggle(g({59, 47, 46, 53, 122, 53, 42, 63, 52, 122, 63, 34, 51, 46}, 90), false, function(qe)
  s.autoExit = qe
end)
py:toggle(g({59, 47, 46, 53, 122, 47, 52, 50, 53, 53, 49}, 90), false, function(qf)
  s.autoUnhook = qf
end)
py:toggle(g({59, 47, 46, 53, 122, 50, 63, 59, 54, 122, 52, 63, 59, 40, 56, 35}, 90), false, function(qg)
  s.autoHeal = qg
end)
py:toggle(g({59, 47, 46, 53, 122, 62, 40, 53, 42, 122, 52, 63, 59, 40, 56, 35, 122, 42, 59, 54, 54, 63, 46}, 90), false, function(qh)
  s.autoPallet = qh
end)
py:button(g({40, 63, 42, 59, 51, 40, 122, 52, 63, 59, 40, 63, 41, 46}, 90), gt)
py:button(g({53, 42, 63, 52, 122, 52, 63, 59, 40, 63, 41, 46, 122, 63, 34, 51, 46}, 90), function()
  local qi = by(g({63, 34, 51, 46}, 90))
  if (((3 ^ 2) == 9) and qi) then
    af(as, qi.part, true)
  end
end)
py:button(g({50, 63, 59, 54, 122, 52, 63, 59, 40, 63, 41, 46}, 90), function()
  local qj = ck(g({41, 47, 40, 44, 51, 44, 53, 40}, 90))
  if (((7 * 7) == 49) and qj) then
    af(ar, v(qj), true)
  end
end)
py:button(g({41, 63, 54, 60, 122, 47, 52, 50, 53, 53, 49}, 90), function()
  af(au)
end)
local qk = q:tab(g({46, 63, 54, 63, 42, 53, 40, 46}, 90))
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 61, 63, 52, 63, 40, 59, 46, 53, 40}, 90), function()
  local ql = by(g({61, 63, 52, 63, 40, 59, 46, 53, 40}, 90))
  local qm = v()
  if (((1 + 1) == 2) and (ql and qm)) then
    qm.CFrame = (ql.part.CFrame * CFrame.new(0, 3, 3))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 63, 34, 51, 46}, 90), function()
  local qn = by(g({63, 34, 51, 46}, 90))
  local qo = v()
  if (((15 * 15) == 225) and (qn and qo)) then
    qo.CFrame = (qn.part.CFrame * CFrame.new(0, 3, 3))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 42, 59, 54, 54, 63, 46}, 90), function()
  local qp = by(g({42, 59, 54, 54, 63, 46}, 90))
  local qq = v()
  if (((100 % 7) == 2) and (qp and qq)) then
    qq.CFrame = (qp.part.CFrame * CFrame.new(0, 3, 3))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 45, 51, 52, 62, 53, 45}, 90), function()
  local qr = by(g({45, 51, 52, 62, 53, 45}, 90))
  local qs = v()
  if (((12 * 12) == 144) and (qr and qs)) then
    qs.CFrame = (qr.part.CFrame * CFrame.new(0, 3, 3))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 51, 46, 63, 55}, 90), function()
  local qt = by(g({51, 46, 63, 55}, 90))
  local qu = v()
  if (((3 ^ 2) == 9) and (qt and qu)) then
    qu.CFrame = (qt.part.CFrame * CFrame.new(0, 2, 0))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 41, 47, 40, 44, 51, 44, 53, 40}, 90), function()
  local qv = ck(g({41, 47, 40, 44, 51, 44, 53, 40}, 90))
  local qw = v()
  local qx = (qv and v(qv))
  if (((7 * 7) == 49) and (qw and qx)) then
    qw.CFrame = (qx.CFrame * CFrame.new(0, 0, 3))
  end
end)
qk:button(g({52, 63, 59, 40, 63, 41, 46, 122, 49, 51, 54, 54, 63, 40}, 90), function()
  local qy = ck(g({49, 51, 54, 54, 63, 40}, 90))
  local qz = v()
  local ra = (qy and v(qy))
  if (((1 + 1) == 2) and (qz and ra)) then
    qz.CFrame = (ra.CFrame * CFrame.new(0, 0, 8))
  end
end)
local rb = q:tab(g({57, 50, 59, 40, 59, 57, 46, 63, 40}, 90))
rb:button(g({55, 53, 40, 42, 50, 122, 41, 47, 40, 44, 51, 44, 53, 40, 122, 54, 53, 57, 59, 54}, 90), function()
  hy(g({41, 47, 40, 44, 51, 44, 53, 40}, 90))
end)
rb:button(g({55, 53, 40, 42, 50, 122, 49, 51, 54, 54, 63, 40, 122, 54, 53, 57, 59, 54}, 90), function()
  hy(g({49, 51, 54, 54, 63, 40}, 90))
end)
rb:button(g({40, 63, 41, 46, 53, 40, 63, 122, 53, 40, 51, 61, 51, 52, 59, 54, 122, 55, 53, 40, 42, 50}, 90), hm)
rb:input(g({49, 51, 54, 54, 63, 40, 122, 52, 59, 55, 63}, 90), s.killerName, function(rc)
  if (((15 * 15) == 225) and (rc ~= "")) then
    s.killerName = rc
  end
end)
rb:button(g({63, 43, 47, 51, 42, 122, 49, 51, 54, 54, 63, 40, 122, 52, 63, 34, 46, 122, 40, 53, 47, 52, 62}, 90), function()
  af(bb, s.killerName)
  s.status = g({49, 51, 54, 54, 63, 40, 122, 41, 63, 54, 63, 57, 46, 63, 62, 122, 60, 53, 40, 122, 52, 63, 34, 46, 122, 54, 53, 59, 62}, 90)
end)
rb:input(g({41, 49, 51, 52, 122, 52, 59, 55, 63}, 90), s.skinName, function(rd)
  if (((100 % 7) == 2) and (rd ~= "")) then
    s.skinName = rd
  end
end)
rb:button(g({63, 43, 47, 51, 42, 122, 49, 51, 54, 54, 63, 40, 122, 41, 49, 51, 52}, 90), function()
  af(bc, s.killerName, s.skinName)
  s.status = g({41, 49, 51, 52, 122, 40, 63, 43, 47, 63, 41, 46, 122, 41, 63, 52, 46}, 90)
end)
local re = q:tab(g({55, 53, 44, 63, 55, 63, 52, 46}, 90))
re:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(rf)
  s.walk = rf
end)
re:slider(g({41, 42, 63, 63, 62}, 90), 16, 150, s.walkSpeed, function(rg)
  s.walkSpeed = rg
end)
re:toggle(g({44, 63, 54, 53, 57, 51, 46, 35, 122, 41, 42, 63, 63, 62}, 90), false, function(rh)
  s.velocity = rh
end)
re:slider(g({44, 63, 54, 53, 57, 51, 46, 35}, 90), 16, 250, s.velocitySpeed, function(ri)
  s.velocitySpeed = ri
end)
re:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(rj)
  s.jump = rj
end)
re:slider(g({48, 47, 55, 42}, 90), 50, 250, s.jumpPower, function(rk)
  s.jumpPower = rk
end)
re:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(rl)
  s.noclip = rl
end)
re:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(rm)
  s.infJump = rm
end)
re:toggle(g({60, 54, 35}, 90), false, function(rn)
  s.fly = rn
end)
re:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 10, 250, s.flySpeed, function(ro)
  s.flySpeed = ro
end)
local rp = q:tab(g({63, 41, 42}, 90))
rp:toggle(g({49, 51, 54, 54, 63, 40, 122, 63, 41, 42}, 90), false, function(rq)
  s.espKiller = rq
end)
rp:toggle(g({41, 47, 40, 44, 51, 44, 53, 40, 122, 63, 41, 42}, 90), false, function(rr)
  s.espSurvivor = rr
end)
rp:toggle(g({61, 63, 52, 63, 40, 59, 46, 53, 40, 122, 63, 41, 42}, 90), false, function(rs)
  s.espGenerator = rs
end)
rp:toggle(g({51, 46, 63, 55, 122, 63, 41, 42}, 90), false, function(rt)
  s.espItem = rt
end)
rp:toggle(g({63, 34, 51, 46, 122, 63, 41, 42}, 90), false, function(ru)
  s.espExit = ru
end)
rp:toggle(g({42, 59, 54, 54, 63, 46, 122, 63, 41, 42}, 90), false, function(rv)
  s.espPallet = rv
end)
rp:toggle(g({45, 51, 52, 62, 53, 45, 122, 63, 41, 42}, 90), false, function(rw)
  s.espWindow = rw
end)
rp:slider(g({63, 41, 42, 122, 40, 59, 52, 61, 63}, 90), 100, 10000, s.espRange, function(rx)
  s.espRange = rx
end)
rp:button(g({57, 54, 63, 59, 40, 122, 63, 41, 42}, 90), ny)
local ry = q:tab(g({44, 51, 41, 47, 59, 54}, 90))
ry:toggle(g({54, 53, 57, 59, 54, 122, 51, 52, 44, 51, 41, 51, 56, 51, 54, 51, 46, 35}, 90), false, function(rz)
  s.invisible = rz
  if (((12 * 12) == 144) and not rz) then
    for sa, sb in ipairs(jh) do
      if (((3 ^ 2) == 9) and sb.Parent) then
        if (((7 * 7) == 49) and sb:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          sb.LocalTransparencyModifier = 0
        else
          sb.Transparency = 0
        end
      end
    end
  end
end)
ry:toggle(g({45, 59, 54, 54, 122, 34, 40, 59, 35}, 90), false, function(sc)
  s.xray = sc
  nb(sc)
end)
ry:toggle(g({62, 51, 41, 59, 56, 54, 63, 122, 63, 60, 60, 63, 57, 46, 41, 122, 117, 122, 60, 42, 41, 122, 56, 53, 53, 41, 46}, 90), false, function(sd)
  s.noEffects = sd
  mr(sd)
end)
ry:toggle(g({52, 53, 122, 57, 59, 55, 63, 40, 59, 122, 63, 60, 60, 63, 57, 46, 41}, 90), false, function(se)
  s.noCamera = se
end)
ry:toggle(g({57, 47, 41, 46, 53, 55, 122, 60, 53, 44, 122, 54, 53, 57, 49}, 90), false, nm)
ry:slider(g({60, 53, 44}, 90), 50, 120, s.fovValue, function(sf)
  s.fovValue = sf
end)
ry:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(sg)
  s.fullbright = sg
  ni()
end)
ry:toggle(g({52, 53, 122, 60, 53, 61}, 90), false, function(sh)
  s.noFog = sh
  ni()
end)
ry:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46, 122, 113, 122, 52, 53, 122, 60, 53, 61}, 90), false, function(si)
  s.fullbright = si
  s.noFog = si
  ni()
end)
local sj = q:tab(g({47, 46, 51, 54, 51, 46, 35}, 90))
sj:toggle(g({59, 52, 46, 51, 122, 41, 54, 53, 45, 62, 53, 45, 52}, 90), false, function(sk)
  s.antiSlow = sk
end)
sj:toggle(g({59, 52, 46, 51, 122, 41, 46, 47, 52, 122, 41, 42, 59, 55}, 90), false, function(sl)
  s.antiStun = sl
end)
sj:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(sm)
  s.instantPrompt = sm
  if (((1 + 1) == 2) and sm) then
    for sn, so in ipairs(workspace:GetDescendants()) do
      if (((15 * 15) == 225) and so:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
        so.HoldDuration = 0
      end
    end
  end
end)
sj:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(sp)
  s.antiAfk = sp
end)
sj:button(g({40, 63, 55, 53, 44, 63, 122, 56, 54, 53, 53, 62, 122, 61, 47, 51}, 90), function()
  local sq = p:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
  if (((100 % 7) == 2) and sq) then
    for sr, ss in ipairs(sq:GetDescendants()) do
      local st = ss.Name:lower()
      if (((12 * 12) == 144) and ((st:find(g({56, 54, 53, 53, 62}, 90)) or st:find(g({44, 51, 61, 52, 63, 46, 46, 63}, 90))) or st:find(g({56, 54, 47, 40}, 90)))) then
        pcall(function()
          ss.Visible = false
        end)
        pcall(function()
          ss.Enabled = false
        end)
      end
    end
  end
end)
sj:button(g({63, 43, 47, 51, 42, 122, 16, 59, 41, 53, 52}, 90), function()
  af(bb, g({16, 59, 41, 53, 52}, 90))
end)
sj:button(g({40, 63, 41, 63, 46, 122, 57, 59, 55, 63, 40, 59}, 90), function()
  local su = workspace.CurrentCamera
  local sv = y()
  if (((3 ^ 2) == 9) and su) then
    su.CameraType = Enum.CameraType.Custom
    su.FieldOfView = 70
    if (((7 * 7) == 49) and sv) then
      su.CameraSubject = sv
    end
  end
end)
local sw = sj:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
sj:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for sx, sy in pairs(s) do
    if (((1 + 1) == 2) and (type(sy) == g({56, 53, 53, 54, 63, 59, 52}, 90))) then
      s[sx] = false
    end
  end
  s.running = true
  local sz = workspace.CurrentCamera
  if (((15 * 15) == 225) and sz) then
    sz.FieldOfView = nj
  end
  hm()
  ju(false)
  mr(false)
  nb(false)
  ni()
  ny()
end)
sj:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  s.running = false
  pcall(j.UnbindFromRenderStep, j, nk)
  local ta = workspace.CurrentCamera
  if (((100 % 7) == 2) and ta) then
    ta.FieldOfView = nj
  end
  hm()
  ju(false)
  mr(false)
  nb(false)
  s.fullbright = false
  s.noFog = false
  ni()
  ny()
  if (((12 * 12) == 144) and lt) then
    lt:Destroy()
  end
  q:destroy()
end)
task.spawn(function()
  while (((3 ^ 2) == 9) and s.running) do
    sw:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. (s.status .. (g({122, 38, 122, 61, 63, 52, 41, 122}, 90) .. tostring(#m:GetTagged(g({29, 63, 52, 63, 40, 59, 46, 53, 40, 10, 53, 51, 52, 46}, 90)))))))
    task.wait(.75)
  end
end)