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
local p = getgenv().MillyDesert
if (((100 % 7) == 2) and (type(p) == g({46, 59, 56, 54, 63}, 90))) then
  p.running = false
end
local q = {running = true, loot = false, lootRange = 180, lootDelay = .3, lootName = "", scrap = true, fuel = true, food = true, weapons = true, esp = false, vehicleEsp = false, npcEsp = false, espRange = 2500, prompt = false, aura = false, auraRange = 18, auraDelay = .12, guns = false, antiRagdoll = false, antiFall = false, autoParts = false, upgradeTour = false, partsRange = 250, autoFuel = false, autodrive = false, driveSpeed = 55, carSpeed = false, carMultiplier = 2, ghostDrive = false, ghostSpeed = 80, destination = nil, selectedCar = nil, walk = false, ws = 16, jump = false, jp = 50, noclip = false, fly = false, fs = 70, infJump = false, afk = false, full = false, itemName = "", weather = g({25, 54, 63, 59, 40}, 90), status = g({40, 63, 59, 62, 35}, 90), moved = 0, installed = 0}
getgenv().MillyDesert = q
local function r()
  local s = (n.Character or workspace:FindFirstChild(n.Name))
  return (s and ((s:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)) or s:FindFirstChild(g({14, 53, 40, 41, 53}, 90)))))
end
local function t()
  local u = (n.Character or workspace:FindFirstChild(n.Name))
  return (u and u:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function v(w)
  return i:FindFirstChild(w)
end
local function x(y, ...)
  local z = v(y)
  if (((12 * 12) == 144) and (z and z:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    return pcall(z.FireServer, z, ...)
  end
  return false
end
local function aa(ab, ...)
  local ac = v(ab)
  if (((3 ^ 2) == 9) and (ac and ac:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    local ad, ae, af = pcall(ac.InvokeServer, ac, ...)
    if (((7 * 7) == 49) and ad) then
      return ae, af
    end
    return nil, ae
  end
end
local function ag(ah, ...)
  local ai = i:FindFirstChild(g({41, 59, 52, 62, 56, 53, 34, 57, 53, 52, 52, 63, 57, 46, 51, 53, 52}, 90))
  local aj = (ai and ai:FindFirstChild(ah))
  if (((1 + 1) == 2) and not aj) then
    return
  end
  if (((15 * 15) == 225) and aj:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90))) then
    local ak, al, am = pcall(aj.InvokeServer, aj, ...)
    if (((100 % 7) == 2) and ak) then
      return al, am
    end
  else
    return pcall(aj.FireServer, aj, ...)
  end
end
local function an(ao)
  if (((12 * 12) == 144) and ao:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return ao
  end
  if (((3 ^ 2) == 9) and ao:IsA(g({23, 53, 62, 63, 54}, 90))) then
    return (ao.PrimaryPart or ao:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  end
end
local ap = {terrain = true, baseplate = true, road = true, map = true, character = true}
local function aq(ar)
  local as = ar.Name:lower()
  local at = ((ar.Parent and ar.Parent.Name:lower()) or "")
  local au = (as .. (g({122}, 90) .. at))
  if (((7 * 7) == 49) and (((au:find(g({60, 47, 63, 54}, 90)) or au:find(g({61, 59, 41}, 90))) or au:find(g({62, 51, 63, 41, 63, 54}, 90))) or au:find(g({53, 51, 54}, 90)))) then
    return g({60, 47, 63, 54}, 90)
  end
  if (((1 + 1) == 2) and ((((au:find(g({60, 53, 53, 62}, 90)) or au:find(g({56, 40, 63, 59, 62}, 90))) or au:find(g({56, 47, 40, 61, 63, 40}, 90))) or au:find(g({45, 59, 46, 63, 40}, 90))) or au:find(g({59, 42, 42, 54, 63}, 90)))) then
    return g({60, 53, 53, 62}, 90)
  end
  if (((15 * 15) == 225) and (((((au:find(g({61, 47, 52}, 90)) or au:find(g({40, 51, 60, 54, 63}, 90))) or au:find(g({41, 50, 53, 46, 61, 47, 52}, 90))) or au:find(g({59, 49, 127, 119, 110, 109}, 90))) or au:find(g({59, 55, 55, 53}, 90))) or au:find(g({42, 51, 41, 46, 53, 54}, 90)))) then
    return g({45, 63, 59, 42, 53, 52}, 90)
  end
  if (((100 % 7) == 2) and ((((au:find(g({41, 57, 40, 59, 42}, 90)) or au:find(g({63, 52, 61, 51, 52, 63}, 90))) or au:find(g({40, 59, 62, 51, 59, 46, 53, 40}, 90))) or au:find(g({45, 50, 63, 63, 54}, 90))) or au:find(g({55, 63, 46, 59, 54}, 90)))) then
    return g({41, 57, 40, 59, 42}, 90)
  end
  return g({51, 46, 63, 55}, 90)
end
local function av(aw)
  if (((12 * 12) == 144) and (not ((aw:IsA(g({23, 53, 62, 63, 54}, 90)) or aw:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) or ap[aw.Name:lower()])) then
    return false
  end
  local ax = an(aw)
  local ay = r()
  if (((3 ^ 2) == 9) and ((not ax or not ay) or ax.Anchored)) then
    return false
  end
  local az = ((ax.Position - ay.Position)).Magnitude
  if (((7 * 7) == 49) and (az > q.lootRange)) then
    return false
  end
  local ba = aq(aw)
  if (((1 + 1) == 2) and ((q.lootName ~= "") and not aw.Name:lower():find(q.lootName:lower(), 1, true))) then
    return false
  end
  return (((((((ba == g({60, 47, 63, 54}, 90)) and q.fuel)) or (((ba == g({60, 53, 53, 62}, 90)) and q.food))) or (((ba == g({45, 63, 59, 42, 53, 52}, 90)) and q.weapons))) or (((ba == g({41, 57, 40, 59, 42}, 90)) and q.scrap))) or (((q.lootName ~= "") and (ba == g({51, 46, 63, 55}, 90)))))
end
local function bb(bc)
  local bd = an(bc)
  local be = r()
  if (((15 * 15) == 225) and (not bd or not be)) then
    return
  end
  local bf = (be.CFrame * CFrame.new(math.random(-3, 3), 1, -5))
  aa(g({62, 40, 59, 61}, 90), bd, true, nil, false)
  pcall(function()
    if (((100 % 7) == 2) and bc:IsA(g({23, 53, 62, 63, 54}, 90))) then
      bc:PivotTo(bf)
    else
      bd.CFrame = bf
    end
    bd.AssemblyLinearVelocity = Vector3.new()
  end)
  aa(g({62, 40, 59, 61}, 90), bd, false)
  q.moved += 1
end
local function bg()
  local bh = r()
  if (((12 * 12) == 144) and not bh) then
    return
  end
  local bi, bj
  for bk, bl in ipairs(workspace:GetDescendants()) do
    if (((3 ^ 2) == 9) and (bl:IsA(g({23, 53, 62, 63, 54}, 90)) and bl:FindFirstChild(g({52, 42, 57}, 90)))) then
      local bm = (bl:FindFirstChild(g({14, 53, 40, 41, 53}, 90)) or bl:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
      local bn = bl:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90))
      if (((7 * 7) == 49) and ((bm and bn) and (bn.Health > 0))) then
        local bo = ((bm.Position - bh.Position)).Magnitude
        if (((1 + 1) == 2) and ((bo <= q.auraRange) and ((not bj or (bo < bj))))) then
          bi = bm
          bj = bo
        end
      end
    end
  end
  return bi
end
local function bp()
  local bq = (n.Character or workspace:FindFirstChild(n.Name))
  return (bq and bq:FindFirstChildOfClass(g({14, 53, 53, 54}, 90)))
end
local br, bs, bt
local function bu(bv)
  if (((15 * 15) == 225) and ((not bv and bt) and ((os.clock() - bt) < .5))) then
    return br, bs
  end
  bt = os.clock()
  local bw = t()
  local bx = (n.Character or workspace:FindFirstChild(n.Name))
  local by = (bw and bw.SeatPart)
  local bz = (bx and bx:FindFirstChild(g({41, 63, 59, 46}, 90)))
  if (((100 % 7) == 2) and ((not by and bz) and bz:IsA(g({21, 56, 48, 63, 57, 46, 12, 59, 54, 47, 63}, 90)))) then
    by = bz.Value
  end
  if (((12 * 12) == 144) and not by) then
    for ca, cb in ipairs(workspace:GetChildren()) do
      if (((3 ^ 2) == 9) and cb:IsA(g({23, 53, 62, 63, 54}, 90))) then
        local cc = (cb:FindFirstChildWhichIsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90), true) or cb:FindFirstChildWhichIsA(g({9, 63, 59, 46}, 90), true))
        if (((7 * 7) == 49) and (cc and (cc.Occupant == bw))) then
          by = cc
          break
        end
      end
    end
  end
  local cd = n:FindFirstChildOfClass(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90))
  local ce = (cd and ((cd:FindFirstChild(g({55, 59, 51, 52}, 90)) or cd:FindFirstChild(g({47, 52, 62, 63, 54, 63, 46, 63}, 90)))))
  if (((1 + 1) == 2) and (not by and ce)) then
    local cf = ce:FindFirstChild(g({62, 40, 51, 44, 51, 52, 61}, 90), true)
    if (((15 * 15) == 225) and ((cf and cf:IsA(g({21, 56, 48, 63, 57, 46, 12, 59, 54, 47, 63}, 90))) and cf.Value)) then
      local cg = cf.Value
      by = (((cg:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and cg) or cg:FindFirstChildWhichIsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90), true)) or cg:FindFirstChildWhichIsA(g({9, 63, 59, 46}, 90), true))
    end
  end
  if (((100 % 7) == 2) and not by) then
    br = nil
    bs = nil
    return
  end
  local ch = by:FindFirstAncestorOfClass(g({23, 53, 62, 63, 54}, 90))
  if (((12 * 12) == 144) and ch) then
    local ci = ch.Parent
    while (((3 ^ 2) == 9) and (ci and (ci ~= workspace))) do
      if (((7 * 7) == 49) and (ci:IsA(g({23, 53, 62, 63, 54}, 90)) and ((ci:FindFirstChild(g({63, 52, 46, 63, 40, 62, 40, 51, 44, 51, 52, 61}, 90), true) or ci:FindFirstChildWhichIsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90), true))))) then
        ch = ci
      end
      ci = ci.Parent
    end
  end
  br, bs = by, ch
  return by, ch
end
local function cj(ck, cl)
  for cm, cn in ipairs(ck:GetDescendants()) do
    local co = cn:FindFirstChild(g({55, 59, 51, 52, 57, 53, 52, 52, 63, 57, 46, 53, 40}, 90))
    if (((1 + 1) == 2) and (co and not cn:FindFirstChild(g({42, 54, 59, 57, 63, 45, 63, 54, 62}, 90)))) then
      local cp = co:FindFirstChild(g({51, 62}, 90))
      if (((15 * 15) == 225) and (cp and ((not cl or (tostring(cp.Value) == cl))))) then
        return co
      end
    end
  end
end
local function cq(cr, cs)
  local ct = cr:FindFirstChild(g({57, 53, 52, 52, 63, 57, 46, 53, 40}, 90), true)
  if (((100 % 7) == 2) and not ct) then
    return false
  end
  local cu = ct:FindFirstChild(g({51, 62}, 90))
  if (((12 * 12) == 144) and not cu) then
    return false
  end
  local cv = cj(cs, tostring(cu.Value))
  if (((3 ^ 2) == 9) and not cv) then
    return false
  end
  local cw = aa(g({42, 54, 59, 57, 63, 53, 56, 48, 63, 57, 46}, 90), cv, ct, true)
  if (((7 * 7) == 49) and cw) then
    q.installed += 1
    return true
  end
  return false
end
local function cx(cy)
  local cz = an(cy)
  local da, db
  if (((1 + 1) == 2) and not cz) then
    return
  end
  for dc, dd in ipairs(workspace:GetChildren()) do
    if (((15 * 15) == 225) and (((dd ~= cy) and not dd:IsDescendantOf(cy)) and ((dd:IsA(g({23, 53, 62, 63, 54}, 90)) or dd:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))))) then
      local de = an(dd)
      local df = dd:FindFirstChild(g({57, 53, 52, 52, 63, 57, 46, 53, 40}, 90), true)
      if (((100 % 7) == 2) and ((de and df) and not df.Parent:FindFirstChild(g({42, 54, 59, 57, 63, 45, 63, 54, 62}, 90)))) then
        local dg = ((de.Position - cz.Position)).Magnitude
        if (((12 * 12) == 144) and ((dg <= q.partsRange) and ((not db or (dg < db))))) then
          local dh = df:FindFirstChild(g({51, 62}, 90))
          if (((3 ^ 2) == 9) and (dh and cj(cy, tostring(dh.Value)))) then
            da = dd
            db = dg
          end
        end
      end
    end
  end
  return da
end
local function di(dj)
  local dk
  for dl, dm in ipairs(dj:GetDescendants()) do
    if (((7 * 7) == 49) and (dm.Name == g({46, 59, 52, 49}, 90))) then
      dk = dm
      break
    end
  end
  if (((1 + 1) == 2) and not dk) then
    return
  end
  local dn = an(dj)
  if (((15 * 15) == 225) and not dn) then
    return
  end
  for dp, dq in ipairs(workspace:GetChildren()) do
    if (((100 % 7) == 2) and (dq ~= dj)) then
      local dr = dq:FindFirstChild(g({46, 59, 52, 49}, 90), true)
      local ds = an(dq)
      if (((12 * 12) == 144) and ((dr and ds) and (((ds.Position - dn.Position)).Magnitude <= q.partsRange))) then
        x(g({60, 51, 54, 54}, 90), dr, dk)
        return
      end
    end
  end
end
local function dt()
  local du = r()
  if (((3 ^ 2) == 9) and not du) then
    return
  end
  local dv, dw
  for dx, dy in ipairs(workspace:GetChildren()) do
    if (((7 * 7) == 49) and (dy:IsA(g({23, 53, 62, 63, 54}, 90)) and dy:FindFirstChild(g({55, 59, 51, 52, 57, 53, 52, 52, 63, 57, 46, 53, 40}, 90), true))) then
      local dz = an(dy)
      if (((1 + 1) == 2) and dz) then
        local ea = ((dz.Position - du.Position)).Magnitude
        if (((15 * 15) == 225) and (not dw or (ea < dw))) then
          dv = dy
          dw = ea
        end
      end
    end
  end
  return dv
end
local function eb()
  if (((100 % 7) == 2) and (q.selectedCar and q.selectedCar.Parent)) then
    return q.selectedCar
  end
  local ec, ed = bu(true)
  if (((12 * 12) == 144) and ed) then
    q.selectedCar = ed
    return ed
  end
  q.selectedCar = dt()
  return q.selectedCar
end
local function ee(ef)
  local eg = r()
  local eh = an(ef)
  if (((3 ^ 2) == 9) and (not eg or not eh)) then
    return false
  end
  local ei
  for ej, ek in ipairs(workspace:GetChildren()) do
    if (((7 * 7) == 49) and ((ek ~= ef) and ((ek:IsA(g({23, 53, 62, 63, 54}, 90)) or ek:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))))) then
      local el = ek:FindFirstChild(g({57, 53, 52, 52, 63, 57, 46, 53, 40}, 90), true)
      local em = an(ek)
      if (((1 + 1) == 2) and ((el and em) and not el.Parent:FindFirstChild(g({42, 54, 59, 57, 63, 45, 63, 54, 62}, 90)))) then
        local en = el:FindFirstChild(g({51, 62}, 90))
        if (((15 * 15) == 225) and (en and cj(ef, tostring(en.Value)))) then
          ei = ek
          break
        end
      end
    end
  end
  if (((100 % 7) == 2) and not ei) then
    q.status = g({52, 53, 122, 57, 53, 55, 42, 59, 46, 51, 56, 54, 63, 122, 42, 59, 40, 46, 41, 122, 54, 63, 60, 46}, 90)
    return false
  end
  local eo = an(ei)
  local ep = eg.CFrame
  eg.CFrame = (eo.CFrame * CFrame.new(0, 3, 4))
  task.wait(.12)
  local eq = aa(g({62, 40, 59, 61}, 90), eo, true, nil, false)
  task.wait(.12)
  eg.CFrame = (eh.CFrame * CFrame.new(0, 4, -7))
  pcall(function()
    if (((12 * 12) == 144) and ei:IsA(g({23, 53, 62, 63, 54}, 90))) then
      ei:PivotTo((eh.CFrame * CFrame.new(0, 3, -5)))
    else
      ei.CFrame = (eh.CFrame * CFrame.new(0, 3, -5))
    end
  end)
  task.wait(.12)
  local er = cq(ei, ef)
  aa(g({62, 40, 59, 61}, 90), eo, false)
  task.wait(.08)
  eg.CFrame = ep
  q.status = ((er and ((g({51, 52, 41, 46, 59, 54, 54, 63, 62, 122}, 90) .. ei.Name))) or ((g({40, 63, 48, 63, 57, 46, 63, 62, 122}, 90) .. ei.Name)))
  return er
end
local es = o
local et = es:tab(g({22, 21, 21, 14}, 90))
et:section(g({59, 47, 46, 53, 122, 57, 53, 54, 54, 63, 57, 46}, 90))
local eu = et:label(g({41, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
et:toggle(g({59, 47, 46, 53, 122, 56, 40, 51, 52, 61, 122, 54, 53, 53, 46}, 90), false, function(ev)
  q.loot = ev
end)
et:slider(g({54, 53, 53, 46, 122, 40, 59, 62, 51, 47, 41}, 90), 20, 800, q.lootRange, function(ew)
  q.lootRange = ew
end)
et:slider(g({54, 53, 53, 46, 122, 62, 63, 54, 59, 35}, 90), .1, 3, q.lootDelay, function(ex)
  q.lootDelay = ex
end)
et:input(g({52, 59, 55, 63, 122, 60, 51, 54, 46, 63, 40}, 90), g({63, 55, 42, 46, 35, 122, 103, 122, 57, 59, 46, 63, 61, 53, 40, 51, 63, 41}, 90), function(ey)
  q.lootName = ey
end)
et:toggle(g({41, 57, 40, 59, 42, 122, 59, 52, 62, 122, 42, 59, 40, 46, 41}, 90), false, function(ez)
  q.scrap = ez
end)
et:toggle(g({60, 47, 63, 54}, 90), false, function(fa)
  q.fuel = fa
end)
et:toggle(g({60, 53, 53, 62, 122, 59, 52, 62, 122, 45, 59, 46, 63, 40}, 90), false, function(fb)
  q.food = fb
end)
et:toggle(g({45, 63, 59, 42, 53, 52, 41, 122, 59, 52, 62, 122, 59, 55, 55, 53}, 90), false, function(fc)
  q.weapons = fc
end)
et:button(g({56, 40, 51, 52, 61, 122, 52, 63, 59, 40, 56, 35, 122, 53, 52, 57, 63}, 90), function()
  for fd, fe in ipairs(workspace:GetChildren()) do
    if (((3 ^ 2) == 9) and av(fe)) then
      bb(fe)
    end
  end
end)
et:button(g({56, 40, 51, 52, 61, 122, 59, 54, 54, 122, 54, 53, 53, 41, 63, 122, 42, 59, 40, 46, 41}, 90), function()
  local ff = r()
  if (((7 * 7) == 49) and ff) then
    for fg, fh in ipairs(workspace:GetDescendants()) do
      if (((1 + 1) == 2) and (((fh:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and not fh.Anchored) and not (fh:IsDescendantOf(n.Character))) and (((fh.Position - ff.Position)).Magnitude <= q.lootRange))) then
        bb(fh)
      end
    end
  end
end)
local fi = es:tab(g({9, 15, 8, 12, 19, 12, 27, 22}, 90))
fi:section(g({41, 59, 52, 62, 56, 53, 34, 122, 41, 63, 40, 44, 63, 40, 122, 46, 53, 61, 61, 54, 63, 41}, 90))
fi:button(g({41, 63, 40, 44, 63, 40, 122, 61, 53, 62, 55, 53, 62, 63, 122, 21, 20}, 90), function()
  ag(g({61, 53, 62, 55, 53, 62, 63}, 90), n, true)
end)
fi:button(g({41, 63, 40, 44, 63, 40, 122, 61, 53, 62, 55, 53, 62, 63, 122, 21, 28, 28}, 90), function()
  ag(g({61, 53, 62, 55, 53, 62, 63}, 90), n, false)
end)
fi:button(g({52, 53, 122, 50, 47, 52, 61, 63, 40, 122, 21, 20}, 90), function()
  ag(g({52, 53, 50, 47, 52, 61, 63, 40}, 90), n, true)
end)
fi:button(g({52, 53, 122, 41, 46, 59, 55, 51, 52, 59, 122, 21, 20}, 90), function()
  ag(g({52, 53, 41, 46, 59, 55, 51, 52, 59}, 90), n, true)
end)
fi:button(g({52, 53, 122, 40, 59, 61, 62, 53, 54, 54, 122, 21, 20}, 90), function()
  ag(g({52, 53, 40, 59, 61, 62, 53, 54, 54}, 90), n, true)
end)
fi:toggle(g({54, 53, 57, 59, 54, 122, 59, 52, 46, 51, 122, 40, 59, 61, 62, 53, 54, 54}, 90), false, function(fj)
  q.antiRagdoll = fj
end)
fi:toggle(g({56, 54, 53, 57, 49, 122, 60, 59, 54, 54, 122, 62, 59, 55, 59, 61, 63}, 90), false, function(fk)
  q.antiFall = fk
end)
fi:button(g({41, 46, 59, 52, 62, 122, 47, 42}, 90), function()
  local fl = (n.Character or workspace:FindFirstChild(n.Name))
  local fm = (fl and fl:FindFirstChild(g({41, 63, 59, 46}, 90)))
  if (((15 * 15) == 225) and (fm and fm.Value)) then
    aa(g({41, 46, 59, 52, 62, 47, 42}, 90), fm.Value)
  end
end)
local fn = es:tab(g({25, 21, 23, 24, 27, 14}, 90))
fn:section(g({52, 42, 57, 41}, 90))
fn:toggle(g({52, 42, 57, 122, 49, 51, 57, 49, 122, 59, 47, 40, 59}, 90), false, function(fo)
  q.aura = fo
end)
fn:slider(g({59, 47, 40, 59, 122, 40, 59, 62, 51, 47, 41}, 90), 3, 45, q.auraRange, function(fp)
  q.auraRange = fp
end)
fn:slider(g({59, 46, 46, 59, 57, 49, 122, 62, 63, 54, 59, 35}, 90), .05, 2, q.auraDelay, function(fq)
  q.auraDelay = fq
end)
fn:toggle(g({41, 42, 59, 55, 122, 63, 43, 47, 51, 42, 42, 63, 62, 122, 45, 63, 59, 42, 53, 52}, 90), false, function(fr)
  q.guns = fr
end)
fn:button(g({49, 51, 57, 49, 122, 52, 63, 59, 40, 63, 41, 46, 122, 52, 42, 57}, 90), function()
  local fs = bg()
  if (((100 % 7) == 2) and fs) then
    aa(g({49, 51, 57, 49, 52, 42, 57}, 90), fs, workspace.CurrentCamera.CFrame.LookVector)
  end
end)
fn:button(g({41, 42, 59, 45, 52, 122, 32, 53, 55, 56, 51, 63, 122, 41, 59, 52, 62, 56, 53, 34}, 90), function()
  ag(g({41, 42, 59, 45, 52, 32, 53, 55, 56, 51, 63}, 90))
end)
local ft = es:tab(g({25, 27, 8}, 90))
ft:section(g({44, 63, 50, 51, 57, 54, 63}, 90))
local fu = ft:label(g({44, 63, 50, 51, 57, 54, 63, 96, 122, 52, 53, 46, 122, 41, 63, 59, 46, 63, 62}, 90))
ft:toggle(g({59, 47, 46, 53, 122, 57, 53, 54, 54, 63, 57, 46, 122, 113, 122, 51, 52, 41, 46, 59, 54, 54, 122, 42, 59, 40, 46, 41}, 90), false, function(fv)
  q.autoParts = fv
end)
ft:toggle(g({59, 47, 46, 53, 122, 47, 42, 61, 40, 59, 62, 63, 122, 46, 53, 47, 40, 122, 114, 45, 50, 53, 54, 63, 122, 55, 59, 42, 115}, 90), false, function(fw)
  q.upgradeTour = fw
end)
ft:slider(g({42, 59, 40, 46, 41, 122, 41, 63, 59, 40, 57, 50, 122, 40, 59, 62, 51, 47, 41}, 90), 25, 800, q.partsRange, function(fx)
  q.partsRange = fx
end)
ft:toggle(g({59, 47, 46, 53, 122, 40, 63, 60, 47, 63, 54, 122, 52, 63, 59, 40, 56, 35}, 90), false, function(fy)
  q.autoFuel = fy
end)
ft:button(g({41, 63, 54, 63, 57, 46, 122, 57, 47, 40, 40, 63, 52, 46, 122, 117, 122, 52, 63, 59, 40, 63, 41, 46, 122, 57, 59, 40}, 90), function()
  q.selectedCar = nil
  local fz = eb()
  q.status = ((fz and ((g({41, 63, 54, 63, 57, 46, 63, 62, 122}, 90) .. fz.Name))) or g({52, 53, 122, 57, 59, 40, 122, 60, 53, 47, 52, 62}, 90))
end)
ft:button(g({47, 42, 61, 40, 59, 62, 63, 122, 46, 53, 47, 40, 122, 53, 52, 63, 122, 42, 59, 40, 46}, 90), function()
  local ga = eb()
  if (((12 * 12) == 144) and ga) then
    ee(ga)
  else
    q.status = g({52, 53, 122, 57, 59, 40, 122, 60, 53, 47, 52, 62}, 90)
  end
end)
ft:button(g({51, 52, 41, 46, 59, 54, 54, 122, 52, 63, 59, 40, 63, 41, 46, 122, 42, 59, 40, 46, 122, 52, 53, 45}, 90), function()
  local gb, gc = bu(true)
  if (((3 ^ 2) == 9) and not gc) then
    q.status = g({44, 63, 50, 51, 57, 54, 63, 122, 52, 53, 46, 122, 62, 63, 46, 63, 57, 46, 63, 62}, 90)
    return
  end
  local gd = cx(gc)
  if (((7 * 7) == 49) and not gd) then
    q.status = g({52, 53, 122, 57, 53, 55, 42, 59, 46, 51, 56, 54, 63, 122, 42, 59, 40, 46}, 90)
    return
  end
  local ge = an(gd)
  local gf = an(gc)
  if (((1 + 1) == 2) and (ge and gf)) then
    aa(g({62, 40, 59, 61}, 90), ge, true, nil, false)
    pcall(function()
      if (((15 * 15) == 225) and gd:IsA(g({23, 53, 62, 63, 54}, 90))) then
        gd:PivotTo((gf.CFrame * CFrame.new(0, 3, -6)))
      else
        gd.CFrame = (gf.CFrame * CFrame.new(0, 3, -6))
      end
    end)
    if (((100 % 7) == 2) and cq(gd, gc)) then
      q.status = (g({51, 52, 41, 46, 59, 54, 54, 63, 62, 122}, 90) .. gd.Name)
    else
      q.status = (g({41, 63, 40, 44, 63, 40, 122, 40, 63, 48, 63, 57, 46, 63, 62, 122}, 90) .. gd.Name)
    end
    aa(g({62, 40, 59, 61}, 90), ge, false)
  end
end)
ft:button(g({57, 53, 52, 52, 63, 57, 46, 53, 40, 122, 62, 51, 59, 61, 52, 53, 41, 46, 51, 57}, 90), function()
  local gg, gh = bu(true)
  if (((12 * 12) == 144) and not gh) then
    q.status = g({44, 63, 50, 51, 57, 54, 63, 122, 52, 53, 46, 122, 62, 63, 46, 63, 57, 46, 63, 62}, 90)
    return
  end
  local gi = 0
  for gj, gk in ipairs(gh:GetDescendants()) do
    if (((3 ^ 2) == 9) and (gk:FindFirstChild(g({55, 59, 51, 52, 57, 53, 52, 52, 63, 57, 46, 53, 40}, 90)) and not gk:FindFirstChild(g({42, 54, 59, 57, 63, 45, 63, 54, 62}, 90)))) then
      gi += 1
    end
  end
  local gl = 0
  for gm, gn in ipairs(workspace:GetChildren()) do
    if (((7 * 7) == 49) and ((gn ~= gh) and gn:FindFirstChild(g({57, 53, 52, 52, 63, 57, 46, 53, 40}, 90), true))) then
      gl += 1
    end
  end
  q.status = (g({60, 40, 63, 63, 122, 55, 53, 47, 52, 46, 41, 122, 127, 62, 122, 38, 122, 54, 53, 53, 41, 63, 122, 42, 59, 40, 46, 41, 122, 127, 62}, 90)):format(gi, gl)
end)
ft:section(g({41, 59, 60, 63, 122, 59, 47, 46, 53, 42, 51, 54, 53, 46}, 90))
ft:toggle(g({41, 59, 60, 63, 122, 59, 47, 46, 53, 122, 62, 40, 51, 44, 63}, 90), false, function(go)
  q.autodrive = go
end)
ft:slider(g({62, 40, 51, 44, 63, 122, 41, 42, 63, 63, 62}, 90), 15, 120, q.driveSpeed, function(gp)
  q.driveSpeed = gp
end)
ft:toggle(g({57, 59, 40, 122, 41, 42, 63, 63, 62, 122, 57, 50, 59, 52, 61, 63, 40}, 90), false, function(gq)
  q.carSpeed = gq
end)
ft:slider(g({57, 59, 40, 122, 41, 42, 63, 63, 62, 122, 55, 47, 54, 46, 51, 42, 54, 51, 63, 40}, 90), 1, 8, q.carMultiplier, function(gr)
  q.carMultiplier = gr
end)
ft:section(g({62, 40, 51, 44, 63, 122, 45, 51, 46, 50, 53, 47, 46, 122, 42, 59, 40, 46, 41}, 90))
ft:toggle(g({61, 50, 53, 41, 46, 122, 62, 40, 51, 44, 63, 122, 114, 52, 53, 122, 42, 59, 40, 46, 41, 122, 52, 63, 63, 62, 63, 62, 115}, 90), false, function(gs)
  q.ghostDrive = gs
  if (((1 + 1) == 2) and gs) then
    eb()
  end
end)
ft:slider(g({61, 50, 53, 41, 46, 122, 62, 40, 51, 44, 63, 122, 41, 42, 63, 63, 62}, 90), 10, 250, q.ghostSpeed, function(gt)
  q.ghostSpeed = gt
end)
ft:label(g({13, 27, 9, 30, 122, 55, 53, 44, 63, 122, 38, 122, 9, 10, 27, 25, 31, 122, 47, 42, 122, 38, 122, 25, 14, 8, 22, 122, 62, 53, 45, 52}, 90))
ft:label(g({25, 14, 8, 22, 122, 113, 122, 57, 54, 51, 57, 49, 122, 41, 63, 46, 41, 122, 62, 63, 41, 46, 51, 52, 59, 46, 51, 53, 52}, 90))
ft:button(g({41, 46, 53, 42, 122, 57, 59, 40}, 90), function()
  q.autodrive = false
  local gu = bu()
  if (((15 * 15) == 225) and gu) then
    gu.ThrottleFloat = 0
    gu.SteerFloat = 0
  end
end)
ft:button(g({61, 53, 62, 122, 57, 59, 40, 122, 21, 20}, 90), function()
  ag(g({61, 53, 62, 57, 59, 40}, 90), n, true)
end)
ft:button(g({61, 53, 62, 122, 57, 59, 40, 122, 21, 28, 28}, 90), function()
  ag(g({61, 53, 62, 57, 59, 40}, 90), n, false)
end)
ft:button(g({40, 63, 41, 63, 46, 122, 41, 47, 41, 42, 63, 52, 41, 51, 53, 52, 122, 52, 63, 59, 40, 56, 35}, 90), function()
  local gv = r()
  if (((100 % 7) == 2) and gv) then
    for gw, gx in ipairs(workspace:GetDescendants()) do
      if (((12 * 12) == 144) and (((gx.Name == g({9, 42, 40, 51, 52, 61}, 90)) and gx:IsA(g({21, 56, 48, 63, 57, 46, 12, 59, 54, 47, 63}, 90))) and gx.Value)) then
        local gy = an(gx.Parent)
        if (((3 ^ 2) == 9) and (gy and (((gy.Position - gv.Position)).Magnitude < 35))) then
          x(g({57, 50, 59, 52, 61, 63, 41, 47, 41, 42, 63, 52, 41, 51, 53, 52}, 90), gx.Value, g({40, 63, 41, 63, 46}, 90))
        end
      end
    end
  end
end)
ft:button(g({41, 59, 44, 63, 122, 61, 59, 55, 63}, 90), function()
  x(g({41, 59, 44, 63, 61, 59, 55, 63}, 90))
end)
ft:button(g({41, 42, 59, 45, 52, 122, 56, 47, 51, 54, 62, 51, 52, 61}, 90), function()
  local gz = r()
  if (((7 * 7) == 49) and gz) then
    x(g({41, 42, 59, 45, 52, 56, 47, 54, 62, 51, 52, 61}, 90), gz.CFrame)
  end
end)
local ha = es:tab(g({9, 27, 20, 30, 24, 21, 2}, 90))
ha:section(g({41, 42, 59, 45, 52}, 90))
ha:input(g({51, 46, 63, 55, 122, 63, 34, 59, 57, 46, 122, 52, 59, 55, 63}, 90), g({8, 63, 42, 54, 51, 57, 59, 46, 63, 62, 9, 46, 53, 40, 59, 61, 63, 116, 51, 46, 63, 55, 41}, 90), function(hb)
  q.itemName = hb
end)
ha:button(g({41, 42, 59, 45, 52, 122, 51, 46, 63, 55}, 90), function()
  local hc = i:FindFirstChild(g({51, 46, 63, 55, 41}, 90))
  local hd = (hc and hc:FindFirstChild(q.itemName))
  if (((1 + 1) == 2) and hd) then
    aa(g({41, 42, 59, 45, 52, 41, 59, 52, 62, 56, 53, 34}, 90), hd, {R = 255, G = 255, B = 255})
  else
    q.status = g({51, 46, 63, 55, 122, 52, 53, 46, 122, 60, 53, 47, 52, 62}, 90)
  end
end)
ha:button(g({54, 51, 41, 46, 122, 51, 46, 63, 55, 122, 57, 53, 47, 52, 46}, 90), function()
  local he = i:FindFirstChild(g({51, 46, 63, 55, 41}, 90))
  q.status = (g({51, 46, 63, 55, 41, 96, 122}, 90) .. tostring(((he and #he:GetChildren()) or 0)))
end)
ha:section(g({45, 53, 40, 54, 62}, 90))
ha:input(g({45, 63, 59, 46, 50, 63, 40, 122, 52, 59, 55, 63}, 90), g({25, 54, 63, 59, 40, 122, 117, 122, 8, 59, 51, 52, 122, 117, 122, 9, 59, 52, 62, 41, 46, 53, 40, 55}, 90), function(hf)
  q.weather = hf
end)
ha:button(g({41, 63, 46, 122, 45, 63, 59, 46, 50, 63, 40}, 90), function()
  ag(g({45, 63, 59, 46, 50, 63, 40}, 90), q.weather)
end)
ha:button(g({62, 59, 35}, 90), function()
  ag(g({61, 46, 51, 55, 63}, 90), g({62, 59, 35}, 90))
end)
ha:button(g({52, 51, 61, 50, 46}, 90), function()
  ag(g({61, 46, 51, 55, 63}, 90), g({52, 51, 61, 50, 46}, 90))
end)
local hg = es:tab(g({31, 9, 10}, 90))
hg:section(g({45, 53, 40, 54, 62, 122, 63, 41, 42}, 90))
hg:toggle(g({51, 46, 63, 55, 122, 63, 41, 42}, 90), false, function(hh)
  q.esp = hh
end)
hg:toggle(g({44, 63, 50, 51, 57, 54, 63, 122, 63, 41, 42}, 90), false, function(hi)
  q.vehicleEsp = hi
end)
hg:toggle(g({52, 42, 57, 122, 63, 41, 42}, 90), false, function(hj)
  q.npcEsp = hj
end)
hg:slider(g({63, 41, 42, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 100, 10000, q.espRange, function(hk)
  q.espRange = hk
end)
local hl = es:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
hl:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(hm)
  q.walk = hm
end)
hl:slider(g({41, 42, 63, 63, 62}, 90), 0, 250, q.ws, function(hn)
  q.ws = hn
end)
hl:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(ho)
  q.jump = ho
end)
hl:slider(g({48, 47, 55, 42}, 90), 0, 300, q.jp, function(hp)
  q.jp = hp
end)
hl:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(hq)
  q.noclip = hq
end)
hl:toggle(g({51, 52, 60, 51, 52, 51, 46, 63, 122, 48, 47, 55, 42}, 90), false, function(hr)
  q.infJump = hr
end)
hl:toggle(g({60, 54, 35}, 90), false, function(hs)
  q.fly = hs
end)
hl:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 1, 300, q.fs, function(ht)
  q.fs = ht
end)
local hu = es:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
hu:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46, 41}, 90), false, function(hv)
  q.prompt = hv
end)
hu:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(hw)
  q.afk = hw
end)
hu:toggle(g({60, 47, 54, 54, 56, 40, 51, 61, 50, 46}, 90), false, function(hx)
  q.full = hx
end)
hu:label(g({59, 54, 54, 122, 59, 47, 46, 53, 55, 59, 46, 51, 53, 52, 122, 41, 46, 59, 40, 46, 41, 122, 21, 28, 28}, 90))
hu:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  for hy, hz in ipairs({g({54, 53, 53, 46}, 90), g({59, 47, 40, 59}, 90), g({61, 47, 52, 41}, 90), g({59, 47, 46, 53, 10, 59, 40, 46, 41}, 90), g({47, 42, 61, 40, 59, 62, 63, 14, 53, 47, 40}, 90), g({59, 47, 46, 53, 28, 47, 63, 54}, 90), g({59, 47, 46, 53, 62, 40, 51, 44, 63}, 90), g({57, 59, 40, 9, 42, 63, 63, 62}, 90), g({61, 50, 53, 41, 46, 30, 40, 51, 44, 63}, 90), g({63, 41, 42}, 90), g({44, 63, 50, 51, 57, 54, 63, 31, 41, 42}, 90), g({52, 42, 57, 31, 41, 42}, 90), g({45, 59, 54, 49}, 90), g({48, 47, 55, 42}, 90), g({52, 53, 57, 54, 51, 42}, 90), g({51, 52, 60, 16, 47, 55, 42}, 90), g({60, 54, 35}, 90), g({42, 40, 53, 55, 42, 46}, 90)}) do
    q[hz] = false
  end
end)
hu:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  q.running = false
  es:destroy()
end)
et:show()
n.Idled:Connect(function()
  if (((15 * 15) == 225) and q.afk) then
    m:CaptureController()
    m:ClickButton2(Vector2.new())
  end
end)
k.JumpRequest:Connect(function()
  if (((100 % 7) == 2) and q.infJump) then
    local ia = t()
    if (((12 * 12) == 144) and ia) then
      ia:ChangeState(Enum.HumanoidStateType.Jumping)
    end
  end
end)
local ib = n:GetMouse()
ib.Button1Down:Connect(function()
  if (((3 ^ 2) == 9) and (k:IsKeyDown(Enum.KeyCode.LeftControl) and ib.Hit)) then
    q.destination = ib.Hit.Position
    q.status = g({62, 40, 51, 44, 63, 122, 42, 53, 51, 52, 46, 122, 41, 63, 46}, 90)
  end
end)
local ic = {}
local function id(ie, ig, ih)
  local ii = os.clock()
  if (((7 * 7) == 49) and not ig) then
    ic[ie] = ii
    return false
  end
  if (((1 + 1) == 2) and ((ii - ((ic[ie] or 0))) >= ih)) then
    ic[ie] = ii
    return true
  end
  return false
end
task.spawn(function()
  while (((15 * 15) == 225) and q.running) do
    if (((100 % 7) == 2) and id(g({54, 53, 53, 46}, 90), q.loot, q.lootDelay)) then
      local ij, ik
      local il = r()
      if (((12 * 12) == 144) and il) then
        for im, io in ipairs(workspace:GetChildren()) do
          if (((3 ^ 2) == 9) and av(io)) then
            local ip = an(io)
            local iq = ((ip.Position - il.Position)).Magnitude
            if (((7 * 7) == 49) and (not ik or (iq < ik))) then
              ij = io
              ik = iq
            end
          end
        end
      end
      if (((1 + 1) == 2) and ij) then
        bb(ij)
        q.status = (g({56, 40, 53, 47, 61, 50, 46, 122}, 90) .. ij.Name)
      end
    end
    if (((15 * 15) == 225) and id(g({59, 47, 40, 59}, 90), q.aura, q.auraDelay)) then
      local ir = bg()
      if (((100 % 7) == 2) and ir) then
        aa(g({49, 51, 57, 49, 52, 42, 57}, 90), ir, workspace.CurrentCamera.CFrame.LookVector)
      end
    end
    if (((12 * 12) == 144) and q.guns) then
      local is = bp()
      if (((3 ^ 2) == 9) and is) then
        pcall(is.Activate, is)
      end
    end
    local it, iu = bu()
    if (((7 * 7) == 49) and (id(g({42, 59, 40, 46, 41}, 90), q.autoParts, 1) and iu)) then
      local iv = cx(iu)
      if (((1 + 1) == 2) and iv) then
        local iw = an(iu)
        local ix = an(iv)
        if (((15 * 15) == 225) and (iw and ix)) then
          aa(g({62, 40, 59, 61}, 90), ix, true, nil, false)
          pcall(function()
            if (((100 % 7) == 2) and iv:IsA(g({23, 53, 62, 63, 54}, 90))) then
              iv:PivotTo((iw.CFrame * CFrame.new(0, 3, -7)))
            else
              iv.CFrame = (iw.CFrame * CFrame.new(0, 3, -7))
            end
          end)
          if (((12 * 12) == 144) and not cq(iv, iu)) then
            q.status = (g({42, 59, 40, 46, 122, 62, 63, 54, 51, 44, 63, 40, 63, 62, 96, 122}, 90) .. iv.Name)
          else
            q.status = (g({51, 52, 41, 46, 59, 54, 54, 63, 62, 96, 122}, 90) .. iv.Name)
          end
          aa(g({62, 40, 59, 61}, 90), ix, false)
        end
      end
    end
    if (((3 ^ 2) == 9) and id(g({46, 53, 47, 40}, 90), q.upgradeTour, 1)) then
      local iy = eb()
      if (((7 * 7) == 49) and iy) then
        ee(iy)
      else
        q.status = g({52, 53, 122, 57, 59, 40, 122, 60, 53, 47, 52, 62}, 90)
      end
    end
    if (((1 + 1) == 2) and (id(g({60, 47, 63, 54, 57, 59, 40}, 90), q.autoFuel, 2) and iu)) then
      di(iu)
    end
    fu:set(((iu and ((g({44, 63, 50, 51, 57, 54, 63, 96, 122}, 90) .. (iu.Name .. (g({122, 38, 122, 51, 52, 41, 46, 59, 54, 54, 63, 62, 122}, 90) .. q.installed))))) or g({44, 63, 50, 51, 57, 54, 63, 96, 122, 52, 53, 46, 122, 41, 63, 59, 46, 63, 62}, 90)))
    if (((15 * 15) == 225) and q.antiFall) then
      local iz = v(g({60, 59, 54, 54, 62, 59, 55, 59, 61, 63}, 90))
      if (((100 % 7) == 2) and (iz and iz:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
        pcall(function()
          if (((12 * 12) == 144) and getconnections) then
            for ja, jb in ipairs(getconnections(iz.OnClientEvent)) do
              jb:Disable()
            end
          end
        end)
      end
    end
    eu:set((g({41, 46, 59, 46, 47, 41, 96, 122}, 90) .. (q.status .. (g({122, 38, 122, 55, 53, 44, 63, 62, 96, 122}, 90) .. q.moved))))
    task.wait(.03)
  end
end)
j.Heartbeat:Connect(function()
  if (((3 ^ 2) == 9) and (not q.running or (((not q.carSpeed and not q.autodrive) and not q.ghostDrive)))) then
    return
  end
  local jc, jd = bu()
  if (((7 * 7) == 49) and (q.ghostDrive and (not jd))) then
    jd = eb()
  end
  if (((1 + 1) == 2) and not jd) then
    return
  end
  local je = an(jd)
  if (((15 * 15) == 225) and not je) then
    return
  end
  if (((100 % 7) == 2) and q.ghostDrive) then
    local jf = workspace.CurrentCamera
    local jg = Vector3.new()
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.W)) then
      jg += jf.CFrame.LookVector
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.S)) then
      jg -= jf.CFrame.LookVector
    end
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.A)) then
      jg -= jf.CFrame.RightVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.D)) then
      jg += jf.CFrame.RightVector
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.Space)) then
      jg += Vector3.yAxis
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      jg -= Vector3.yAxis
    end
    je.AssemblyLinearVelocity = (((jg.Magnitude > 0) and (jg.Unit * q.ghostSpeed)) or Vector3.new(0, 0, 0))
    je.AssemblyAngularVelocity = Vector3.new()
    if (((12 * 12) == 144) and (jg.Magnitude > 0)) then
      local jh = Vector3.new(jg.X, 0, jg.Z)
      if (((3 ^ 2) == 9) and (jh.Magnitude > .05)) then
        pcall(function()
          jd:PivotTo(CFrame.lookAt(je.Position, (je.Position + jh.Unit)))
        end)
      end
    end
  end
  if (((7 * 7) == 49) and q.carSpeed) then
    local ji = ((jc:IsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90)) and jc.ThrottleFloat) or 1)
    local jj = je.AssemblyLinearVelocity
    local jk = Vector3.new(jj.X, 0, jj.Z)
    local jl = (math.max(q.driveSpeed, jk.Magnitude) * q.carMultiplier)
    if (((1 + 1) == 2) and (math.abs(ji) > .05)) then
      local jm = (je.CFrame.LookVector * math.sign(ji))
      je.AssemblyLinearVelocity = Vector3.new((jm.X * jl), jj.Y, (jm.Z * jl))
    end
    if (((15 * 15) == 225) and jc:IsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90))) then
      jc.MaxSpeed = math.max(jc.MaxSpeed, (q.driveSpeed * q.carMultiplier))
    end
  end
  if (((100 % 7) == 2) and not q.autodrive) then
    return
  end
  local jn = q.destination
  if (((12 * 12) == 144) and not jn) then
    return
  end
  local jo = Vector3.new((jn.X - je.Position.X), 0, (jn.Z - je.Position.Z))
  local jp = jo.Magnitude
  if (((3 ^ 2) == 9) and (jp < 12)) then
    if (((7 * 7) == 49) and jc:IsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90))) then
      jc.ThrottleFloat = 0
      jc.SteerFloat = 0
    end
    q.autodrive = false
    q.status = g({62, 63, 41, 46, 51, 52, 59, 46, 51, 53, 52, 122, 40, 63, 59, 57, 50, 63, 62}, 90)
    return
  end
  local jq = Vector3.new(je.CFrame.LookVector.X, 0, je.CFrame.LookVector.Z).Unit
  local jr = jo.Unit
  local js = jq:Cross(jr).Y
  local jt = jq:Dot(jr)
  local ju = math.clamp((js * 2.5), -1, 1)
  local jv = RaycastParams.new()
  jv.FilterDescendantsInstances = {jd, n.Character}
  jv.FilterType = Enum.RaycastFilterType.Exclude
  local jw = workspace:Raycast((je.Position + Vector3.new(0, 2, 0)), (jq * 22), jv)
  if (((1 + 1) == 2) and jc:IsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90))) then
    if (((15 * 15) == 225) and jw) then
      local jx = workspace:Raycast(je.Position, (((-je.CFrame.RightVector + (jq * .5))) * 18), jv)
      local jy = workspace:Raycast(je.Position, (((je.CFrame.RightVector + (jq * .5))) * 18), jv)
      ju = ((((jx and not jy) and 1) or ((jy and not jx) and -1)) or ((((math.random(0, 1) == 0) and -1) or 1)))
      jc.ThrottleFloat = .25
    else
      jc.ThrottleFloat = (((je.AssemblyLinearVelocity.Magnitude > q.driveSpeed) and .15) or ((((jt < -.25) and -.4) or 1)))
    end
    jc.SteerFloat = ju
  end
end)
local jz = setmetatable({}, {__mode = g({49}, 90)})
local function ka(kb, kc, kd, ke)
  local kf = kb:FindFirstChild(g({23, 51, 54, 54, 35, 30, 63, 41, 63, 40, 46, 31, 9, 10}, 90))
  if (((100 % 7) == 2) and not kc) then
    if (((12 * 12) == 144) and kf) then
      kf:Destroy()
    end
    jz[kb] = nil
    return
  end
  local kg = an(kb)
  if (((3 ^ 2) == 9) and not kg) then
    return
  end
  if (((7 * 7) == 49) and not kf) then
    kf = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    kf.Name = g({23, 51, 54, 54, 35, 30, 63, 41, 63, 40, 46, 31, 9, 10}, 90)
    kf.Size = UDim2.fromOffset(190, 34)
    kf.StudsOffsetWorldSpace = Vector3.new(0, 2.5, 0)
    kf.AlwaysOnTop = true
    kf.Adornee = kg
    kf.Parent = kb
    local kh = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    kh.Name = g({22, 59, 56, 63, 54}, 90)
    kh.Size = UDim2.fromScale(1, 1)
    kh.BackgroundTransparency = 1
    kh.Font = Enum.Font.GothamBold
    kh.TextSize = 12
    kh.TextStrokeTransparency = .15
    kh.Parent = kf
  end
  kf.Label.Text = kd
  kf.Label.TextColor3 = ke
  jz[kb] = true
end
task.spawn(function()
  while (((1 + 1) == 2) and q.running) do
    if (((15 * 15) == 225) and ((q.esp or q.vehicleEsp) or q.npcEsp)) then
      local ki = r()
      if (((100 % 7) == 2) and ki) then
        for kj, kk in ipairs(workspace:GetChildren()) do
          local kl = an(kk)
          if (((12 * 12) == 144) and kl) then
            local km = ((kl.Position - ki.Position)).Magnitude
            local kn = (kk:IsA(g({23, 53, 62, 63, 54}, 90)) and kk:FindFirstChild(g({52, 42, 57}, 90)))
            local ko = (kk:IsA(g({23, 53, 62, 63, 54}, 90)) and ((kk:FindFirstChildWhichIsA(g({12, 63, 50, 51, 57, 54, 63, 9, 63, 59, 46}, 90), true) or kk:FindFirstChild(g({63, 52, 46, 63, 40, 62, 40, 51, 44, 51, 52, 61}, 90), true))))
            local kp = ((km <= q.espRange) and (((((kn and q.npcEsp)) or ((ko and q.vehicleEsp))) or ((((not kn and not ko) and q.esp) and av(kk))))))
            ka(kk, kp, (g({127, 41, 122, 38, 122, 127, 41, 122, 38, 122, 127, 62, 55}, 90)):format(kk.Name, aq(kk), math.floor(km)), (((kn and Color3.fromRGB(255, 70, 70)) or (ko and Color3.fromRGB(80, 180, 255))) or Color3.fromRGB(255, 220, 80)))
          end
        end
      end
    else
      for kq in pairs(jz) do
        if (((3 ^ 2) == 9) and kq.Parent) then
          ka(kq, false)
        end
      end
    end
    task.wait(1)
  end
  for kr in pairs(jz) do
    if (((7 * 7) == 49) and kr.Parent) then
      ka(kr, false)
    end
  end
end)
local ks, kt
j.Stepped:Connect(function()
  if (((1 + 1) == 2) and not q.running) then
    return
  end
  local ku = t()
  local kv = r()
  if (((15 * 15) == 225) and ku) then
    if (((100 % 7) == 2) and q.walk) then
      ku.WalkSpeed = q.ws
    end
    if (((12 * 12) == 144) and q.jump) then
      ku.UseJumpPower = true
      ku.JumpPower = q.jp
    end
    if (((3 ^ 2) == 9) and q.antiRagdoll) then
      ku.PlatformStand = false
      ku.Sit = false
      ku.AutoRotate = true
      ku:ChangeState(Enum.HumanoidStateType.GettingUp)
    end
  end
  if (((7 * 7) == 49) and (q.noclip and ((n.Character or workspace:FindFirstChild(n.Name))))) then
    for kw, kx in ipairs(((n.Character or workspace[n.Name])):GetDescendants()) do
      if (((1 + 1) == 2) and kx:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
        kx.CanCollide = false
      end
    end
  end
  if (((15 * 15) == 225) and q.prompt) then
    for ky, kz in ipairs(workspace:GetDescendants()) do
      if (((100 % 7) == 2) and kz:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90))) then
        kz.HoldDuration = 0
        kz.MaxActivationDistance = 50
      end
    end
  end
  if (((12 * 12) == 144) and (q.fly and kv)) then
    if (((3 ^ 2) == 9) and (not ks or not ks.Parent)) then
      ks = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
      ks.MaxForce = (Vector3.new(1, 1, 1) * 1e9)
      ks.Parent = kv
      kt = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
      kt.MaxTorque = (Vector3.new(1, 1, 1) * 1e9)
      kt.P = 90000
      kt.Parent = kv
    end
    local la = workspace.CurrentCamera
    local lb = Vector3.new()
    if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.W)) then
      lb += la.CFrame.LookVector
    end
    if (((1 + 1) == 2) and k:IsKeyDown(Enum.KeyCode.S)) then
      lb -= la.CFrame.LookVector
    end
    if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.A)) then
      lb -= la.CFrame.RightVector
    end
    if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.D)) then
      lb += la.CFrame.RightVector
    end
    if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.Space)) then
      lb += Vector3.yAxis
    end
    if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.LeftControl)) then
      lb -= Vector3.yAxis
    end
    ks.Velocity = (((lb.Magnitude > 0) and (lb.Unit * q.fs)) or Vector3.new())
    kt.CFrame = la.CFrame
  elseif (((7 * 7) == 49) and ks) then
    ks:Destroy()
    kt:Destroy()
    ks = nil
    kt = nil
  end
end)
task.spawn(function()
  while (((1 + 1) == 2) and q.running) do
    if (((15 * 15) == 225) and q.full) then
      l.Brightness = 3
      l.GlobalShadows = false
      l.Ambient = Color3.new(1, 1, 1)
      l.FogEnd = 1000000
    end
    task.wait(2)
  end
end)