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
local j = game:GetService(g({10, 59, 46, 50, 60, 51, 52, 62, 51, 52, 61, 9, 63, 40, 44, 51, 57, 63}, 90))
local k = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local l = game:GetService(g({8, 47, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local m = game:GetService(g({22, 51, 61, 50, 46, 51, 52, 61}, 90))
local n = game:GetService(g({12, 51, 40, 46, 47, 59, 54, 15, 41, 63, 40}, 90))
local o = game:GetService(g({25, 53, 54, 54, 63, 57, 46, 51, 53, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local p = h.LocalPlayer
local q = getgenv().MillyMenu
if (((15 * 15) == 225) and not q) then
  return
end
local r = getgenv().MillyEgg
if (((100 % 7) == 2) and (type(r) == g({46, 59, 56, 54, 63}, 90))) then
  r.running = false
end
local s = i:FindFirstChild(g({10, 59, 57, 49, 59, 61, 63, 41}, 90))
local t = (s and s:FindFirstChild(g({20, 63, 46, 45, 53, 40, 49, 51, 52, 61}, 90)))
local u = workspace:FindFirstChild(g({5, 5, 21, 24, 16, 31, 25, 14, 9}, 90))
local v = (u and u:FindFirstChild(g({27, 40, 63, 59, 41}, 90)))
local w = (v and v:FindFirstChild(g({9, 63, 42, 59, 40, 59, 46, 51, 53, 52, 22, 51, 52, 63}, 90)))
local x = (v and v:FindFirstChild(g({29, 47, 59, 40, 62, 27, 40, 63, 59, 41}, 90)))
local y = {running = true, farm = false, busy = false, delay = .5, path = true, tp = false, speed = 16, exit = 15, rare = false, avoid = true, guardRange = 24, eggEsp = false, guardEsp = false, fast = false, place = false, hatch = false, aura = false, auraRange = 16, auraDelay = .72, auraEquip = true, auraFace = true, auraCarry = false, auraHits = 0, auraTarget = g({52, 53, 52, 63}, 90), walk = false, ws = 16, jump = false, jp = 50, noclip = false, fly = false, fs = 60, afk = false, safeMove = true, stepSpeed = 15, antiKick = false, antiTrap = false, trapRadius = 8, trapEsp = false, trapEscapes = 0, autoEscape = false, escapeRange = 20, status = g({40, 63, 59, 62, 35}, 90), stolen = 0, failed = 0}
getgenv().MillyEgg = y
local function z()
  local aa = p.Character
  return (aa and aa:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
end
local function ab()
  local ac = p.Character
  return (ac and ac:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90)))
end
local function ad(ae, af, ag)
  if (((12 * 12) == 144) and (not t or not t.Parent)) then
    s = i:FindFirstChild(g({10, 59, 57, 49, 59, 61, 63, 41}, 90))
    t = (s and s:FindFirstChild(g({20, 63, 46, 45, 53, 40, 49, 51, 52, 61}, 90)))
  end
  return (t and t:FindFirstChild((ae .. (g({117}, 90) .. (af .. (g({117}, 90) .. ag))))))
end
local function ah(ai, ...)
  if (((3 ^ 2) == 9) and (not ai or not ai:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
    return false, g({40, 63, 55, 53, 46, 63, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
  end
  local aj, ak, al, am = pcall(ai.InvokeServer, ai, ...)
  if (((7 * 7) == 49) and not aj) then
    return false, tostring(ak)
  end
  return ak, al, am
end
local an = {}
local ao = 0
local ap = ""
local function aq(ar)
  if (((1 + 1) == 2) and (not ar and ((os.clock() - ao) < 1))) then
    return an
  end
  ao = os.clock()
  local as = ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 28, 51, 63, 54, 62, 31, 61, 61, 9, 52, 59, 42, 41, 50, 53, 46}, 90))
  if (((15 * 15) == 225) and not as) then
    ap = g({40, 63, 55, 53, 46, 63, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return an
  end
  local at, au, av, aw = pcall(as.InvokeServer, as)
  if (((100 % 7) == 2) and not at) then
    ap = tostring(au)
    return an
  end
  local ax
  for ay, az in ipairs({au, av, aw}) do
    if (((12 * 12) == 144) and (type(az) == g({46, 59, 56, 54, 63}, 90))) then
      if (((3 ^ 2) == 9) and (type(az.Records) == g({46, 59, 56, 54, 63}, 90))) then
        ax = az.Records
        break
      end
      if (((7 * 7) == 49) and (type(az[1]) == g({46, 59, 56, 54, 63}, 90))) then
        ax = az
        break
      end
    end
  end
  if (((1 + 1) == 2) and ax) then
    an = ax
    ap = g({21, 17}, 90)
  else
    ap = g({56, 59, 62, 122, 41, 52, 59, 42, 41, 50, 53, 46}, 90)
  end
  return an
end
local function ba(bb)
  local bc = (bb and ((bb.BottomCFrame or bb.BoundsCFrame)))
  return ((typeof(bc) == g({25, 28, 40, 59, 55, 63}, 90)) and bc.Position)
end
local function bd(be)
  local bf = workspace:FindFirstChild(g({27, 40, 63, 59, 31, 61, 61, 9, 54, 53, 46, 41, 25, 54, 51, 63, 52, 46}, 90))
  return (bf and bf:FindFirstChild(be))
end
local function bg(bh)
  local bi = bd(bh.Uid)
  local bj = tostring(((bh.Rarity or bh.AssetCategory) or "")):lower()
  return (((((bi and (bi:FindFirstChild(g({8, 59, 40, 63, 27, 40, 63, 59, 31, 61, 61, 18, 51, 61, 50, 54, 51, 61, 50, 46}, 90), true) ~= nil))) or bj:find(g({55, 35, 46, 50, 51, 57}, 90), 1, true)) or bj:find(g({41, 63, 57, 40, 63, 46}, 90), 1, true)) or bj:find(g({63, 46, 63, 40, 52, 59, 54}, 90), 1, true))
end
local function bk(bl)
  for bm, bn in pairs(aq(bl)) do
    if (((15 * 15) == 225) and ((bn.State == g({25, 59, 40, 40, 51, 63, 62}, 90)) and (tonumber(bn.CarrierUserId) == p.UserId))) then
      return bn
    end
  end
end
local function bo()
  local bp = z()
  if (((100 % 7) == 2) and not bp) then
    return nil
  end
  local bq, br
  for bs, bt in pairs(aq()) do
    local bu = ba(bt)
    if (((12 * 12) == 144) and ((bu and (((bt.State == g({9, 54, 53, 46}, 90)) or (bt.State == g({30, 40, 53, 42, 42, 63, 62}, 90))))) and ((not y.rare or bg(bt))))) then
      local bv = ((bp.Position - bu)).Magnitude
      local bw = math.huge
      if (((3 ^ 2) == 9) and x) then
        local bx = x:FindFirstChild(tostring(bt.AreaId))
        local by = (bx and ((bx:FindFirstChild(g({29, 47, 59, 40, 62}, 90), true) or bx:FindFirstChildWhichIsA(g({23, 53, 62, 63, 54}, 90), true))))
        local bz = (by and ((by.PrimaryPart or by:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))))
        if (((7 * 7) == 49) and bz) then
          bw = ((bz.Position - bu)).Magnitude
        end
      end
      if (((1 + 1) == 2) and (((not y.avoid or (bw >= y.guardRange))) and ((not br or (bv < br))))) then
        bq = bt
        br = bv
      end
    end
  end
  return bq
end
local function ca(cb)
  local cc = z()
  local cd = ab()
  if (((15 * 15) == 225) and (not cc or not cd)) then
    return false
  end
  if (((100 % 7) == 2) and (y.tp and not y.safeMove)) then
    cc.CFrame = CFrame.new(cb)
    return true
  end
  if (((12 * 12) == 144) and (y.tp and y.safeMove)) then
    local ce = (os.clock() + math.max(8, ((((cc.Position - cb)).Magnitude / math.max(y.stepSpeed, 1)) + 5)))
    while (((3 ^ 2) == 9) and (((y.running and cc.Parent) and (((cc.Position - cb)).Magnitude > 3)) and (os.clock() < ce))) do
      local cf = (cb - cc.Position)
      local cg = math.min(cf.Magnitude, (y.stepSpeed * .1))
      cc.CFrame = CFrame.new((cc.Position + (cf.Unit * cg)), ((cc.Position + (cf.Unit * cg)) + cc.CFrame.LookVector))
      cc.AssemblyLinearVelocity = Vector3.new()
      task.wait(.1)
    end
    return (cc.Parent and (((cc.Position - cb)).Magnitude <= 5))
  end
  local function ch(ci)
    if (((7 * 7) == 49) and not y.safeMove) then
      cd.WalkSpeed = y.speed
    end
    cd:MoveTo(ci)
    local cj = (os.clock() + math.max(4, ((((cc.Position - ci)).Magnitude / math.max(y.speed, 1)) + 2)))
    repeat
      task.wait(.08)
    until (((1 + 1) == 2) and (((not y.running or not cc.Parent) or (((cc.Position - ci)).Magnitude < 5)) or (os.clock() > cj)))
    return (cc.Parent and (((cc.Position - ci)).Magnitude < 6))
  end
  if (((15 * 15) == 225) and y.path) then
    local ck = j:CreatePath({AgentCanJump = true, WaypointSpacing = 7})
    local cl = pcall(ck.ComputeAsync, ck, cc.Position, cb)
    if (((100 % 7) == 2) and (cl and (ck.Status == Enum.PathStatus.Success))) then
      for cm, cn in ipairs(ck:GetWaypoints()) do
        if (((12 * 12) == 144) and (cn.Action == Enum.PathWaypointAction.Jump)) then
          cd.Jump = true
        end
        if (((3 ^ 2) == 9) and not ch(cn.Position)) then
          return false
        end
      end
      return true
    end
  end
  return ch(cb)
end
local function co(cp)
  local cq = bd(cp.Uid)
  local cr = (cq and cq:FindFirstChild(g({25, 59, 40, 40, 35, 27, 40, 63, 59, 31, 61, 61}, 90), true))
  if (((7 * 7) == 49) and (cr and fireproximityprompt)) then
    pcall(fireproximityprompt, cr, 0)
    return true
  end
  if (((1 + 1) == 2) and cr) then
    pcall(function()
      cr:InputHoldBegin()
      task.wait(math.max(cr.HoldDuration, .05))
      cr:InputHoldEnd()
    end)
    return true
  end
  return false
end
local function cs()
  if (((15 * 15) == 225) and (not w or not w:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    return nil
  end
  local ct = z()
  local cu = w.CFrame:PointToObjectSpace(((ct and ct.Position) or w.Position))
  return w.CFrame:PointToWorldSpace(Vector3.new(math.clamp(cu.X, (-w.Size.X * .45), (w.Size.X * .45)), math.max(cu.Y, 3), y.exit))
end
local function cv()
  local cw = cs()
  if (((100 % 7) == 2) and not cw) then
    y.status = g({54, 51, 52, 63, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return false
  end
  y.status = g({40, 63, 46, 47, 40, 52, 51, 52, 61}, 90)
  if (((12 * 12) == 144) and not ca(cw)) then
    return false
  end
  local cx = (os.clock() + 4)
  repeat
    task.wait(.15)
  until (((3 ^ 2) == 9) and (not bk(true) or (os.clock() > cx)))
  return not bk(true)
end
local function cy()
  if (((7 * 7) == 49) and y.busy) then
    return
  end
  y.busy = true
  if (((1 + 1) == 2) and bk(true)) then
    if (((15 * 15) == 225) and cv()) then
      y.stolen += 1
      y.status = g({62, 63, 54, 51, 44, 63, 40, 63, 62}, 90)
    else
      y.failed += 1
      y.status = g({40, 63, 46, 47, 40, 52, 122, 60, 59, 51, 54, 63, 62}, 90)
    end
    y.busy = false
    return
  end
  local cz = bo()
  if (((100 % 7) == 2) and not cz) then
    y.status = (((ap == g({21, 17}, 90)) and g({52, 53, 122, 63, 61, 61, 41}, 90)) or ap)
    y.busy = false
    return
  end
  y.status = g({61, 53, 51, 52, 61, 122, 46, 53, 122, 63, 61, 61}, 90)
  if (((12 * 12) == 144) and ca((ba(cz) + Vector3.new(0, 2, 0)))) then
    co(cz)
    task.wait(.35)
    if (((3 ^ 2) == 9) and not bk(true)) then
      ah(ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 28, 51, 63, 54, 62, 31, 61, 61, 25, 59, 40, 40, 35}, 90)), {Uid = cz.Uid})
      task.wait(.25)
    end
    if (((7 * 7) == 49) and bk(true)) then
      if (((1 + 1) == 2) and cv()) then
        y.stolen += 1
        y.status = g({62, 63, 54, 51, 44, 63, 40, 63, 62}, 90)
      else
        y.failed += 1
        y.status = g({40, 63, 46, 47, 40, 52, 122, 60, 59, 51, 54, 63, 62}, 90)
      end
    else
      y.failed += 1
      y.status = g({42, 51, 57, 49, 47, 42, 122, 62, 63, 52, 51, 63, 62}, 90)
    end
  else
    y.failed += 1
    y.status = g({42, 59, 46, 50, 122, 60, 59, 51, 54, 63, 62}, 90)
  end
  y.busy = false
end
local function da()
  local db, dc = ah(ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 28, 51, 63, 54, 62, 31, 61, 61, 30, 40, 53, 42}, 90)), {Reason = g({10, 54, 59, 35, 63, 40, 8, 63, 43, 47, 63, 41, 46}, 90)})
  y.status = ((db and g({62, 40, 53, 42, 42, 63, 62}, 90)) or tostring((dc or db)))
end
local function dd()
  for de, df in ipairs({p.Character, p:FindFirstChildOfClass(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))}) do
    if (((15 * 15) == 225) and df) then
      for dg, dh in ipairs(df:GetChildren()) do
        if (((100 % 7) == 2) and (dh:IsA(g({14, 53, 53, 54}, 90)) and (dh:GetAttribute(g({19, 46, 63, 55, 14, 35, 42, 63}, 90)) == g({27, 41, 41, 63, 46, 31, 61, 61}, 90)))) then
          return dh
        end
      end
    end
  end
end
local function di()
  local dj = z()
  local dk, dl
  for dm, dn in ipairs(workspace:GetDescendants()) do
    if (((12 * 12) == 144) and (dn:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and (dn.Name == g({10, 63, 46, 27, 40, 63, 59}, 90)))) then
      local dp = ((dj and ((dj.Position - dn.Position)).Magnitude) or 0)
      local dq = dn.Parent
      for dr = 1, 5 do
        if (((3 ^ 2) == 9) and not dq) then
          break
        end
        if (((7 * 7) == 49) and (((tonumber(dq:GetAttribute(g({21, 45, 52, 63, 40, 15, 41, 63, 40, 19, 62}, 90))) == p.UserId) or (dq.Name == tostring(p.UserId))) or (dq.Name == p.Name))) then
          dp -= 100000
        end
        dq = dq.Parent
      end
      if (((1 + 1) == 2) and (not dl or (dp < dl))) then
        dk = dn
        dl = dp
      end
    end
  end
  if (((15 * 15) == 225) and not dk) then
    return
  end
  local ds
  local dt = dk.Parent
  for du = 1, 5 do
    ds = (dt and dt:FindFirstChild(g({25, 63, 52, 46, 63, 40, 10, 53, 51, 52, 46}, 90), true))
    if (((100 % 7) == 2) and ds) then
      break
    end
    dt = (dt and dt.Parent)
  end
  ds = (ds or dk)
  return dk, ds
end
local dv = 0
local function dw()
  local dx = dd()
  local dy, dz = di()
  if (((12 * 12) == 144) and ((not dx or not dy) or not dz:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    y.status = g({63, 61, 61, 122, 46, 53, 53, 54, 117, 42, 54, 53, 46, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return false
  end
  dv += 1
  local ea = (((((dv % 5)) - 2)) * 4)
  local eb = (((((math.floor((dv / 5)) % 5)) - 2)) * 4)
  local ec = dy.CFrame:PointToWorldSpace(Vector3.new(math.clamp(ea, (-dy.Size.X * .4), (dy.Size.X * .4)), (dy.Size.Y * .5), math.clamp(eb, (-dy.Size.Z * .4), (dy.Size.Z * .4))))
  local ed, ee = ah(ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 10, 54, 59, 57, 63, 31, 61, 61}, 90)), {Uid = dx:GetAttribute(g({15, 19, 30}, 90)), LocalCFrame = dz.CFrame:ToObjectSpace(CFrame.new(ec))})
  y.status = ((ed and g({63, 61, 61, 122, 42, 54, 59, 57, 63, 62}, 90)) or (g({42, 54, 59, 57, 63, 96, 122}, 90) .. tostring((ee or ed))))
  return ed
end
local function ef()
  local eg
  for eh, ei in ipairs(workspace:GetDescendants()) do
    if (((3 ^ 2) == 9) and ((ei:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and ei.Enabled) and (((ei.ActionText == g({18, 59, 46, 57, 50, 123}, 90)) or (ei.ObjectText == g({18, 59, 46, 57, 50, 123}, 90)))))) then
      eg = ei
      break
    end
  end
  if (((7 * 7) == 49) and not eg) then
    local ej = ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 22, 51, 44, 63, 9, 52, 59, 42, 41, 50, 53, 46}, 90))
    local ek, el = pcall(function()
      return (ej and ej:InvokeServer())
    end)
    if (((1 + 1) == 2) and (ek and (type(el) == g({46, 59, 56, 54, 63}, 90)))) then
      for em, en in ipairs(el) do
        if (((15 * 15) == 225) and ((tonumber(en.OwnerUserId) == p.UserId) and (type(en.Records) == g({46, 59, 56, 54, 63}, 90)))) then
          for eo, ep in pairs(en.Records) do
            local eq = ep.Placement
            local er = (eq and (((((tonumber(eq.ReadyAt) or math.huge)) <= workspace:GetServerTimeNow()) or (((((tonumber(eq.PlacedAt) or math.huge)) + ((tonumber(eq.GrowthDuration) or math.huge))) <= workspace:GetServerTimeNow())))))
            if (((100 % 7) == 2) and er) then
              local es, et = ah(ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 18, 59, 46, 57, 50}, 90)), eo)
              if (((12 * 12) == 144) and es) then
                local eu, ev = ah(ad(g({8, 28}, 90), g({31, 61, 61, 13, 53, 40, 54, 62}, 90), g({27, 41, 49, 28, 51, 52, 51, 41, 50, 18, 59, 46, 57, 50}, 90)), eo)
                y.status = ((eu and g({63, 61, 61, 122, 50, 59, 46, 57, 50, 63, 62}, 90)) or (g({60, 51, 52, 51, 41, 50, 122, 50, 59, 46, 57, 50, 96, 122}, 90) .. tostring((ev or eu))))
                return eu
              end
              y.status = (g({50, 59, 46, 57, 50, 96, 122}, 90) .. tostring((et or es)))
            end
          end
        end
      end
    end
    y.status = g({52, 53, 122, 40, 63, 59, 62, 35, 122, 63, 61, 61}, 90)
    return false
  end
  if (((3 ^ 2) == 9) and fireproximityprompt) then
    pcall(fireproximityprompt, eg, 0)
  else
    pcall(function()
      eg:InputHoldBegin()
      eg:InputHoldEnd()
    end)
  end
  y.status = g({50, 59, 46, 57, 50, 122, 59, 57, 46, 51, 44, 59, 46, 63, 62}, 90)
  return true
end
local function ew()
  for ex, ey in ipairs({p.Character, p:FindFirstChildOfClass(g({24, 59, 57, 49, 42, 59, 57, 49}, 90))}) do
    if (((7 * 7) == 49) and ey) then
      for ez, fa in ipairs(ey:GetChildren()) do
        if (((1 + 1) == 2) and (fa:IsA(g({14, 53, 53, 54}, 90)) and (((fa:GetAttribute(g({19, 41, 24, 59, 46}, 90)) == true) or fa.Name:lower():find(g({56, 59, 46}, 90), 1, true))))) then
          return fa
        end
      end
    end
  end
end
local function fb(fc)
  if (((15 * 15) == 225) and (not w or not w:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    return true
  end
  return (w.CFrame.LookVector:Dot((fc - w.Position)) > 0)
end
local function fd()
  local fe = z()
  if (((100 % 7) == 2) and (not fe or not fb(fe.Position))) then
    return nil, g({63, 52, 46, 63, 40, 122, 61, 59, 55, 63, 42, 54, 59, 35, 122, 59, 40, 63, 59}, 90)
  end
  local ff = (((workspace:GetAttribute(g({30, 40, 59, 61, 53, 52, 31, 61, 61, 31, 44, 63, 52, 46, 27, 57, 46, 51, 44, 63}, 90)) == true) and 2.5) or 1)
  local fg = math.min(y.auraRange, ((17 * ff) - .25))
  local fh, fi
  for fj, fk in ipairs(h:GetPlayers()) do
    if (((12 * 12) == 144) and ((fk ~= p) and fk.Character)) then
      local fl = fk.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90))
      local fm = fk.Character:FindFirstChildOfClass(g({18, 47, 55, 59, 52, 53, 51, 62}, 90))
      local fn = (tonumber(fk:GetAttribute(g({8, 59, 61, 62, 53, 54, 54, 31, 52, 62, 14, 51, 55, 63}, 90))) or 0)
      if (((3 ^ 2) == 9) and ((((fl and fm) and (fm.Health > 0)) and (fn <= workspace:GetServerTimeNow())) and fb(fl.Position))) then
        local fo = ((fe.Position - fl.Position)).Magnitude
        if (((7 * 7) == 49) and ((fo <= fg) and ((not fi or (fo < fi))))) then
          fh = fk
          fi = fo
        end
      end
    end
  end
  return fh, fi
end
local fp = 0
local function fq()
  if (((1 + 1) == 2) and not y.aura) then
    return false
  end
  if (((15 * 15) == 225) and (bk() and not y.auraCarry)) then
    y.auraTarget = g({42, 59, 47, 41, 63, 62, 96, 122, 57, 59, 40, 40, 35, 51, 52, 61, 122, 63, 61, 61}, 90)
    return false
  end
  local fr, fs = fd()
  if (((100 % 7) == 2) and not fr) then
    y.auraTarget = tostring((fs or g({52, 53, 52, 63}, 90)))
    return false
  end
  local ft = ew()
  if (((12 * 12) == 144) and not ft) then
    y.auraTarget = g({56, 59, 46, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return false
  end
  local fu = ab()
  local fv = z()
  if (((3 ^ 2) == 9) and ((y.auraEquip and fu) and (ft.Parent ~= p.Character))) then
    fu:EquipTool(ft)
    task.wait(.12)
  end
  if (((7 * 7) == 49) and (ft.Parent ~= p.Character)) then
    y.auraTarget = g({63, 43, 47, 51, 42, 122, 56, 59, 46, 122, 60, 51, 40, 41, 46}, 90)
    return false
  end
  local fw = (fr.Character and fr.Character:FindFirstChild(g({18, 47, 55, 59, 52, 53, 51, 62, 8, 53, 53, 46, 10, 59, 40, 46}, 90)))
  if (((1 + 1) == 2) and ((y.auraFace and fv) and fw)) then
    fv.CFrame = CFrame.lookAt(fv.Position, Vector3.new(fw.Position.X, fv.Position.Y, fw.Position.Z))
  end
  local fx = ad(g({8, 31}, 90), g({24, 59, 46, 9, 45, 51, 52, 61}, 90), g({14, 40, 51, 61, 61, 63, 40}, 90))
  if (((15 * 15) == 225) and (not fx or not fx:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)))) then
    y.auraTarget = g({24, 59, 46, 9, 45, 51, 52, 61, 122, 40, 63, 55, 53, 46, 63, 122, 55, 51, 41, 41, 51, 52, 61}, 90)
    return false
  end
  fp += 1
  local fy = (g({127, 62, 96, 59, 47, 40, 59, 96, 127, 62, 96, 127, 62}, 90)):format(p.UserId, fp, math.floor((workspace:GetServerTimeNow() * 1000)))
  local fz = pcall(fx.FireServer, fx, fr, fy)
  if (((100 % 7) == 2) and fz) then
    y.auraHits += 1
    y.auraTarget = (fr.Name .. (g({122, 38, 122}, 90) .. (math.floor(fs) .. g({55}, 90))))
    return true
  end
  y.auraTarget = g({41, 45, 51, 52, 61, 122, 60, 59, 51, 54, 63, 62}, 90)
  return false
end
local function ga(gb)
  if (((12 * 12) == 144) and not gb) then
    return nil
  end
  local gc = gb:FindFirstChild(g({18, 51, 46, 56, 53, 34}, 90))
  if (((3 ^ 2) == 9) and (gc and gc:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)))) then
    return gc
  end
  if (((7 * 7) == 49) and gb:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
    return gb
  end
  return gb:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true)
end
local function gd()
  local ge = z()
  if (((1 + 1) == 2) and not ge) then
    return nil, math.huge
  end
  local gf, gg
  for gh, gi in ipairs(o:GetTagged(g({10, 54, 59, 57, 63, 62, 14, 40, 59, 42}, 90))) do
    local gj = ga(gi)
    if (((15 * 15) == 225) and gj) then
      local gk = ((ge.Position - gj.Position)).Magnitude
      if (((100 % 7) == 2) and (not gg or (gk < gg))) then
        gf = gj
        gg = gk
      end
    end
  end
  return gf, (gg or math.huge)
end
local gl = 0
local function gm(gn)
  local go = p.Character
  local gp = z()
  local gq = ab()
  if (((12 * 12) == 144) and ((not go or not gp) or not gq)) then
    return false
  end
  local gr = (((go:GetAttribute(g({19, 41, 14, 40, 59, 42, 42, 63, 62}, 90)) == true) or gp.Anchored) or gq.PlatformStand)
  if (((3 ^ 2) == 9) and (not gr and not gn)) then
    return false
  end
  gp.Anchored = false
  gq.PlatformStand = false
  gq.AutoRotate = true
  gq.Sit = false
  gq.JumpHeight = math.max(gq.JumpHeight, 7.2)
  gq.JumpPower = math.max(gq.JumpPower, 50)
  gq:ChangeState(Enum.HumanoidStateType.GettingUp)
  go:SetAttribute(g({19, 41, 14, 40, 59, 42, 42, 63, 62}, 90), nil)
  local gs = go:FindFirstChild(g({14, 40, 59, 42, 24, 51, 54, 54, 56, 53, 59, 40, 62}, 90), true)
  if (((7 * 7) == 49) and gs) then
    gs:Destroy()
  end
  local gt = gd()
  if (((1 + 1) == 2) and (gt and ((os.clock() - gl) > .8))) then
    gl = os.clock()
    local gu = Vector3.new((gp.Position.X - gt.Position.X), 0, (gp.Position.Z - gt.Position.Z))
    if (((15 * 15) == 225) and (gu.Magnitude < .1)) then
      gu = Vector3.new(1, 0, 0)
    end
    gp.AssemblyLinearVelocity = ((gu.Unit * 42) + Vector3.new(0, 32, 0))
    gp.CFrame = CFrame.new(((gp.Position + (gu.Unit * 4)) + Vector3.new(0, 2, 0)), (gp.Position + (gu.Unit * 8)))
    y.trapEscapes += 1
  end
  y.status = g({59, 52, 46, 51, 122, 46, 40, 59, 42, 122, 40, 63, 54, 63, 59, 41, 63, 62, 122, 57, 50, 59, 40, 59, 57, 46, 63, 40}, 90)
  return true
end
local gv = q:tab(g({28, 27, 8, 23}, 90))
gv:section(g({63, 61, 61, 122, 40, 53, 56, 56, 63, 40, 35}, 90))
local gw = gv:label(g({9, 46, 59, 46, 47, 41, 96, 122, 40, 63, 59, 62, 35}, 90))
gv:toggle(g({59, 47, 46, 53, 122, 41, 46, 63, 59, 54, 122, 63, 61, 61, 41}, 90), false, function(gx)
  y.farm = gx
end)
gv:slider(g({60, 59, 40, 55, 122, 62, 63, 54, 59, 35}, 90), .1, 5, y.delay, function(gy)
  y.delay = gy
end)
gv:toggle(g({53, 52, 54, 35, 122, 40, 59, 40, 63, 122, 63, 61, 61, 41}, 90), false, function(gz)
  y.rare = gz
end)
gv:toggle(g({59, 44, 53, 51, 62, 122, 61, 47, 59, 40, 62, 41}, 90), true, function(ha)
  y.avoid = ha
end)
gv:slider(g({61, 47, 59, 40, 62, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 8, 80, y.guardRange, function(hb)
  y.guardRange = hb
end)
gv:toggle(g({41, 59, 60, 63, 122, 42, 59, 46, 50}, 90), true, function(hc)
  y.path = hc
end)
gv:slider(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), 8, 80, y.speed, function(hd)
  y.speed = hd
end)
gv:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 46, 63, 54, 63, 42, 53, 40, 46, 122, 40, 51, 41, 49, 35}, 90), false, function(he)
  y.tp = he
end)
gv:slider(g({63, 34, 51, 46, 122, 62, 51, 41, 46, 59, 52, 57, 63}, 90), 7, 40, y.exit, function(hf)
  y.exit = hf
end)
gv:toggle(g({51, 52, 41, 46, 59, 52, 46, 122, 42, 40, 53, 55, 42, 46}, 90), false, function(hg)
  y.fast = hg
end)
gv:button(g({41, 46, 63, 59, 54, 122, 53, 52, 57, 63}, 90), cy)
gv:button(g({40, 63, 46, 47, 40, 52, 122, 63, 61, 61}, 90), cv)
gv:button(g({62, 40, 53, 42, 122, 63, 61, 61}, 90), da)
gv:button(g({40, 63, 60, 40, 63, 41, 50, 122, 41, 52, 59, 42, 41, 50, 53, 46}, 90), function()
  aq(true)
end)
local hh = q:tab(g({31, 29, 29, 9}, 90))
hh:section(g({42, 40, 53, 57, 63, 41, 41, 51, 52, 61}, 90))
hh:toggle(g({59, 47, 46, 53, 122, 42, 54, 59, 57, 63}, 90), false, function(hi)
  y.place = hi
end)
hh:toggle(g({59, 47, 46, 53, 122, 50, 59, 46, 57, 50}, 90), false, function(hj)
  y.hatch = hj
end)
hh:button(g({42, 54, 59, 57, 63, 122, 53, 52, 63}, 90), dw)
hh:button(g({50, 59, 46, 57, 50, 122, 53, 52, 63}, 90), ef)
local hk = q:tab(g({10, 31, 14, 9}, 90))
hk:section(g({41, 63, 40, 44, 63, 40, 122, 59, 57, 46, 51, 53, 52, 41}, 90))
hk:button(g({63, 43, 47, 51, 42, 122, 56, 63, 41, 46}, 90), function()
  local hl, hm = ah(ad(g({8, 28}, 90), g({18, 59, 47, 54}, 90), g({13, 63, 59, 40, 24, 63, 41, 46}, 90)))
  y.status = ((hl and g({56, 63, 41, 46, 122, 63, 43, 47, 51, 42, 42, 63, 62}, 90)) or tostring((hm or hl)))
end)
hk:button(g({41, 63, 54, 54, 122, 60, 47, 54, 54, 122, 41, 59, 46, 57, 50, 63, 54}, 90), function()
  local hn, ho = ah(ad(g({8, 28}, 90), g({18, 59, 47, 54}, 90), g({21, 60, 60, 63, 40, 28, 47, 54, 54, 9, 59, 46, 57, 50, 63, 54, 9, 59, 54, 63}, 90)))
  y.status = ((hn and g({41, 59, 54, 63, 122, 40, 63, 43, 47, 63, 41, 46, 63, 62}, 90)) or tostring((ho or hn)))
end)
local hp = q:tab(g({31, 9, 10}, 90))
hp:section(g({45, 53, 40, 54, 62, 122, 63, 41, 42}, 90))
local hq = hp:label(g({31, 9, 10, 96, 122, 106}, 90))
hp:toggle(g({40, 59, 40, 63, 122, 63, 61, 61, 122, 63, 41, 42}, 90), false, function(hr)
  y.eggEsp = hr
end)
hp:toggle(g({61, 47, 59, 40, 62, 122, 63, 41, 42}, 90), false, function(hs)
  y.guardEsp = hs
end)
local ht = q:tab(g({23, 21, 12, 31, 23, 31, 20, 14}, 90))
ht:section(g({57, 50, 59, 40, 59, 57, 46, 63, 40}, 90))
ht:toggle(g({45, 59, 54, 49, 122, 41, 42, 63, 63, 62}, 90), false, function(hu)
  y.walk = hu
end)
ht:slider(g({41, 42, 63, 63, 62}, 90), 8, 200, y.ws, function(hv)
  y.ws = hv
end)
ht:toggle(g({48, 47, 55, 42, 122, 42, 53, 45, 63, 40}, 90), false, function(hw)
  y.jump = hw
end)
ht:slider(g({48, 47, 55, 42}, 90), 25, 250, y.jp, function(hx)
  y.jp = hx
end)
ht:toggle(g({52, 53, 57, 54, 51, 42}, 90), false, function(hy)
  y.noclip = hy
end)
ht:toggle(g({60, 54, 35}, 90), false, function(hz)
  y.fly = hz
end)
ht:slider(g({60, 54, 35, 122, 41, 42, 63, 63, 62}, 90), 10, 250, y.fs, function(ia)
  y.fs = ia
end)
local ib = q:tab(g({25, 21, 23, 24, 27, 14}, 90))
ib:section(g({41, 63, 40, 44, 63, 40, 122, 44, 59, 54, 51, 62, 59, 46, 63, 62, 122, 56, 59, 46, 122, 59, 47, 40, 59}, 90))
local ic = ib:label(g({14, 59, 40, 61, 63, 46, 96, 122, 52, 53, 52, 63}, 90))
ib:toggle(g({49, 51, 54, 54, 122, 59, 47, 40, 59}, 90), false, function(id)
  y.aura = id
end)
ib:slider(g({59, 47, 40, 59, 122, 40, 59, 52, 61, 63}, 90), 5, 42, y.auraRange, function(ie)
  y.auraRange = ie
end)
ib:slider(g({41, 45, 51, 52, 61, 122, 62, 63, 54, 59, 35}, 90), .7, 2, y.auraDelay, function(ig)
  y.auraDelay = ig
end)
ib:toggle(g({59, 47, 46, 53, 122, 63, 43, 47, 51, 42, 122, 56, 59, 46}, 90), true, function(ih)
  y.auraEquip = ih
end)
ib:toggle(g({60, 59, 57, 63, 122, 46, 59, 40, 61, 63, 46}, 90), true, function(ii)
  y.auraFace = ii
end)
ib:toggle(g({59, 46, 46, 59, 57, 49, 122, 45, 50, 51, 54, 63, 122, 57, 59, 40, 40, 35, 51, 52, 61, 122, 63, 61, 61}, 90), false, function(ij)
  y.auraCarry = ij
end)
ib:button(g({41, 45, 51, 52, 61, 122, 52, 63, 59, 40, 63, 41, 46, 122, 53, 52, 57, 63}, 90), function()
  local ik = y.aura
  y.aura = true
  fq()
  y.aura = ik
end)
ib:label(g({20, 53, 40, 55, 59, 54, 122, 55, 59, 34, 122, 41, 63, 40, 44, 63, 40, 122, 40, 59, 52, 61, 63, 96, 122, 107, 109, 122, 41, 46, 47, 62, 41}, 90))
local il = q:tab(g({9, 31, 14, 14, 19, 20, 29, 9}, 90))
il:section(g({62, 51, 59, 61, 52, 53, 41, 46, 51, 57, 41}, 90))
local im = il:label(g({20, 63, 46, 45, 53, 40, 49, 51, 52, 61, 96, 122, 57, 50, 63, 57, 49, 51, 52, 61}, 90))
il:label(g({20, 53, 122, 61, 59, 55, 63, 122, 23, 53, 62, 47, 54, 63, 9, 57, 40, 51, 42, 46, 41, 122, 40, 63, 43, 47, 51, 40, 63, 62}, 90))
il:toggle(g({59, 52, 46, 51, 122, 59, 60, 49}, 90), false, function(io)
  y.afk = io
end)
il:button(g({41, 46, 53, 42, 122, 59, 54, 54}, 90), function()
  y.farm = false
  y.place = false
  y.hatch = false
  y.aura = false
  y.fly = false
  y.noclip = false
end)
il:button(g({47, 52, 54, 53, 59, 62}, 90), function()
  y.running = false
  q:destroy()
end)
local ip = q:tab(g({27, 20, 14, 19}, 90))
ip:section(g({55, 53, 44, 63, 55, 63, 52, 46, 122, 42, 40, 53, 46, 63, 57, 46, 51, 53, 52}, 90))
ip:toggle(g({41, 59, 60, 63, 122, 55, 53, 44, 63, 55, 63, 52, 46, 122, 54, 51, 55, 51, 46, 63, 40}, 90), true, function(iq)
  y.safeMove = iq
end)
ip:slider(g({41, 59, 60, 63, 122, 41, 46, 63, 42, 122, 41, 42, 63, 63, 62}, 90), 8, 24, y.stepSpeed, function(ir)
  y.stepSpeed = ir
end)
ip:toggle(g({56, 54, 53, 57, 49, 122, 54, 53, 57, 59, 54, 122, 49, 51, 57, 49}, 90), false, function(is)
  y.antiKick = is
end)
ip:toggle(g({40, 63, 55, 53, 44, 63, 122, 54, 53, 57, 59, 54, 122, 46, 40, 59, 42, 122, 41, 54, 53, 45, 62, 53, 45, 52}, 90), false, function(it)
  y.antiTrap = it
end)
ip:slider(g({46, 40, 59, 42, 122, 59, 44, 53, 51, 62, 122, 40, 59, 62, 51, 47, 41}, 90), 3, 20, y.trapRadius, function(iu)
  y.trapRadius = iu
end)
ip:toggle(g({46, 40, 59, 42, 122, 63, 41, 42}, 90), false, function(iv)
  y.trapEsp = iv
end)
local iw = ip:label(g({14, 40, 59, 42, 41, 96, 122, 106, 122, 38, 122, 63, 41, 57, 59, 42, 63, 41, 122, 106}, 90))
ip:button(g({63, 41, 57, 59, 42, 63, 122, 46, 40, 59, 42, 122, 52, 53, 45}, 90), function()
  gm(true)
end)
ip:toggle(g({59, 47, 46, 53, 122, 63, 41, 57, 59, 42, 63, 122, 52, 63, 59, 40, 56, 35, 122, 61, 47, 59, 40, 62}, 90), false, function(ix)
  y.autoEscape = ix
end)
ip:slider(g({63, 41, 57, 59, 42, 63, 122, 61, 47, 59, 40, 62, 122, 40, 59, 52, 61, 63}, 90), 8, 50, y.escapeRange, function(iy)
  y.escapeRange = iy
end)
ip:label(g({9, 63, 40, 44, 63, 40, 122, 56, 59, 52, 41, 122, 57, 59, 52, 52, 53, 46, 122, 56, 63, 122, 62, 51, 41, 59, 56, 54, 63, 62, 122, 57, 54, 51, 63, 52, 46, 119, 41, 51, 62, 63}, 90))
ip:label(g({9, 59, 60, 63, 122, 55, 53, 62, 63, 122, 59, 44, 53, 51, 62, 41, 122, 51, 55, 42, 53, 41, 41, 51, 56, 54, 63, 122, 42, 53, 41, 51, 46, 51, 53, 52, 122, 48, 47, 55, 42, 41}, 90))
gv:show()
if (((100 % 7) == 2) and ((hookmetamethod and getnamecallmethod) and newcclosure)) then
  local iz
  iz = hookmetamethod(game, g({5, 5, 52, 59, 55, 63, 57, 59, 54, 54}, 90), newcclosure(function(ja, ...)
    if (((12 * 12) == 144) and (((y.running and y.antiKick) and (ja == p)) and (getnamecallmethod() == g({17, 51, 57, 49}, 90)))) then
      y.status = g({56, 54, 53, 57, 49, 63, 62, 122, 54, 53, 57, 59, 54, 122, 49, 51, 57, 49}, 90)
      return nil
    end
    return iz(ja, ...)
  end))
end
p.Idled:Connect(function()
  if (((3 ^ 2) == 9) and y.afk) then
    n:CaptureController()
    n:ClickButton2(Vector2.new())
  end
end)
local jb = setmetatable({}, {__mode = g({49}, 90)})
local function jc(jd, je, jf)
  if (((7 * 7) == 49) and not jd) then
    return
  end
  local jg = ((jd:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90)) and jd) or jd:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))
  if (((1 + 1) == 2) and not jg) then
    return
  end
  local jh = jd:FindFirstChild(g({23, 51, 54, 54, 35, 31, 61, 61, 31, 41, 42}, 90))
  if (((15 * 15) == 225) and not jh) then
    jh = Instance.new(g({24, 51, 54, 54, 56, 53, 59, 40, 62, 29, 47, 51}, 90))
    jh.Name = g({23, 51, 54, 54, 35, 31, 61, 61, 31, 41, 42}, 90)
    jh.Size = UDim2.fromOffset(210, 35)
    jh.AlwaysOnTop = true
    jh.StudsOffsetWorldSpace = Vector3.new(0, 3, 0)
    jh.Adornee = jg
    jh.Parent = jd
    local ji = Instance.new(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90))
    ji.Name = g({22, 59, 56, 63, 54}, 90)
    ji.Size = UDim2.fromScale(1, 1)
    ji.BackgroundTransparency = 1
    ji.Font = Enum.Font.GothamBold
    ji.TextSize = 13
    ji.TextStrokeTransparency = .1
    ji.Parent = jh
  end
  jh.Label.Text = je
  jh.Label.TextColor3 = jf
  jb[jd] = true
end
task.spawn(function()
  while (((100 % 7) == 2) and y.running) do
    local jj = {}
    local jk = 0
    local jl = z()
    if (((12 * 12) == 144) and y.eggEsp) then
      for jm, jn in pairs(aq()) do
        if (((3 ^ 2) == 9) and (bg(jn) and (((jn.State == g({9, 54, 53, 46}, 90)) or (jn.State == g({30, 40, 53, 42, 42, 63, 62}, 90)))))) then
          local jo = bd(jn.Uid)
          if (((7 * 7) == 49) and jo) then
            jc(jo, (tostring(jn.AssetCategory) .. g({122, 38, 122, 8, 27, 8, 31}, 90)), Color3.fromRGB(255, 80, 220))
            jj[jo] = true
            jk += 1
          end
        end
      end
    end
    if (((1 + 1) == 2) and (y.guardEsp and x)) then
      for jp, jq in ipairs(x:GetChildren()) do
        local jr = jq:FindFirstChildWhichIsA(g({23, 53, 62, 63, 54}, 90), true)
        if (((15 * 15) == 225) and jr) then
          local js = jr:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true)
          local jt = (((jl and js) and math.floor(((jl.Position - js.Position)).Magnitude)) or 0)
          jc(jr, (g({29, 15, 27, 8, 30, 122, 38, 122}, 90) .. (jt .. g({55}, 90))), Color3.fromRGB(255, 70, 70))
          jj[jr] = true
          jk += 1
        end
      end
    end
    local ju = 0
    for jv, jw in ipairs(o:GetTagged(g({10, 54, 59, 57, 63, 62, 14, 40, 59, 42}, 90))) do
      local jx = ga(jw)
      if (((100 % 7) == 2) and jx) then
        ju += 1
        if (((12 * 12) == 144) and y.trapEsp) then
          local jy = ((jl and math.floor(((jl.Position - jx.Position)).Magnitude)) or 0)
          jc(jw, (g({14, 8, 27, 10, 122, 38, 122}, 90) .. (jy .. g({55}, 90))), Color3.fromRGB(255, 145, 30))
          jj[jw] = true
          jk += 1
        end
      end
    end
    for jz in pairs(jb) do
      if (((3 ^ 2) == 9) and not jj[jz]) then
        local ka = jz:FindFirstChild(g({23, 51, 54, 54, 35, 31, 61, 61, 31, 41, 42}, 90))
        if (((7 * 7) == 49) and ka) then
          ka:Destroy()
        end
        jb[jz] = nil
      end
    end
    gw:set((g({9, 46, 59, 46, 47, 41, 96, 122, 127, 41, 122, 38, 122, 63, 61, 61, 41, 122, 127, 62, 122, 38, 122, 41, 46, 53, 54, 63, 52, 122, 127, 62, 122, 38, 122, 60, 59, 51, 54, 63, 62, 122, 127, 62}, 90)):format(y.status, #aq(), y.stolen, y.failed))
    hq:set((g({31, 9, 10, 96, 122}, 90) .. jk))
    iw:set((g({14, 40, 59, 42, 41, 96, 122, 127, 62, 122, 38, 122, 63, 41, 57, 59, 42, 63, 41, 122, 127, 62}, 90)):format(ju, y.trapEscapes))
    local kb = 0
    if (((1 + 1) == 2) and t) then
      for kc, kd in ipairs(t:GetChildren()) do
        if (((15 * 15) == 225) and (kd:IsA(g({8, 63, 55, 53, 46, 63, 31, 44, 63, 52, 46}, 90)) or kd:IsA(g({8, 63, 55, 53, 46, 63, 28, 47, 52, 57, 46, 51, 53, 52}, 90)))) then
          kb += 1
        end
      end
    end
    im:set((g({20, 63, 46, 45, 53, 40, 49, 51, 52, 61, 96, 122, 127, 41, 122, 38, 122, 40, 63, 55, 53, 46, 63, 41, 122, 127, 62, 122, 38, 122, 41, 52, 59, 42, 41, 50, 53, 46, 122, 127, 41}, 90)):format(((t and g({21, 17}, 90)) or g({23, 19, 9, 9, 19, 20, 29}, 90)), kb, ap))
    task.wait(.7)
  end
end)
local ke, kf
task.spawn(function()
  local kg = 0
  local kh = 0
  local ki = 0
  local kj = 0
  while (((100 % 7) == 2) and y.running) do
    local kk = os.clock()
    if (((12 * 12) == 144) and (y.farm and ((kk - kg) >= y.delay))) then
      kg = kk
      task.spawn(cy)
    end
    if (((3 ^ 2) == 9) and (y.place and ((kk - kh) >= 2))) then
      kh = kk
      dw()
    end
    if (((7 * 7) == 49) and (y.hatch and ((kk - ki) >= 2))) then
      ki = kk
      ef()
    end
    if (((1 + 1) == 2) and (y.aura and ((kk - kj) >= y.auraDelay))) then
      kj = kk
      fq()
    end
    ic:set((g({14, 59, 40, 61, 63, 46, 96, 122, 127, 41, 122, 38, 122, 41, 45, 51, 52, 61, 41, 122, 127, 62}, 90)):format(y.auraTarget, y.auraHits))
    local kl = ab()
    local km = z()
    if (((15 * 15) == 225) and kl) then
      if (((100 % 7) == 2) and (y.walk and not y.busy)) then
        kl.WalkSpeed = y.ws
      end
      if (((12 * 12) == 144) and y.jump) then
        kl.UseJumpPower = true
        kl.JumpPower = y.jp
      end
    end
    if (((3 ^ 2) == 9) and (y.noclip and p.Character)) then
      for kn, ko in ipairs(p.Character:GetDescendants()) do
        if (((7 * 7) == 49) and ko:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          ko.CanCollide = false
        end
      end
    end
    if (((1 + 1) == 2) and (y.antiTrap and p.Character)) then
      for kp, kq in ipairs(p.Character:GetDescendants()) do
        if (((15 * 15) == 225) and kq:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          kq.CanTouch = false
        end
      end
      for kr, ks in ipairs(o:GetTagged(g({10, 54, 59, 57, 63, 62, 14, 40, 59, 42}, 90))) do
        local kt = ga(ks)
        if (((100 % 7) == 2) and kt) then
          kt.CanTouch = false
          kt.CanCollide = false
        end
        if (((12 * 12) == 144) and ks:IsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90))) then
          ks.CanTouch = false
          ks.CanCollide = false
        end
      end
      gm(false)
      local ku, kv = gd()
      if (((3 ^ 2) == 9) and (((ku and (kv <= y.trapRadius)) and km) and ((os.clock() - gl) > .8))) then
        local kw = Vector3.new((km.Position.X - ku.Position.X), 0, (km.Position.Z - ku.Position.Z))
        if (((7 * 7) == 49) and (kw.Magnitude > .1)) then
          gl = os.clock()
          kl:Move(kw.Unit, false)
          km.AssemblyLinearVelocity = ((kw.Unit * 28) + Vector3.new(0, 10, 0))
          y.status = g({59, 44, 53, 51, 62, 51, 52, 61, 122, 46, 40, 59, 42}, 90)
        end
      end
    end
    if (((1 + 1) == 2) and (((y.autoEscape and not y.busy) and x) and km)) then
      local kx = math.huge
      for ky, kz in ipairs(x:GetChildren()) do
        local la = (kz:FindFirstChild(g({29, 47, 59, 40, 62}, 90), true) or kz:FindFirstChildWhichIsA(g({23, 53, 62, 63, 54}, 90), true))
        local lb = (la and ((la.PrimaryPart or la:FindFirstChildWhichIsA(g({24, 59, 41, 63, 10, 59, 40, 46}, 90), true))))
        if (((15 * 15) == 225) and lb) then
          kx = math.min(kx, ((km.Position - lb.Position)).Magnitude)
        end
      end
      if (((100 % 7) == 2) and (kx <= y.escapeRange)) then
        task.spawn(cv)
      end
    end
    if (((12 * 12) == 144) and y.fast) then
      for lc, ld in ipairs(workspace:GetDescendants()) do
        if (((3 ^ 2) == 9) and (ld:IsA(g({10, 40, 53, 34, 51, 55, 51, 46, 35, 10, 40, 53, 55, 42, 46}, 90)) and (ld.Name == g({25, 59, 40, 40, 35, 27, 40, 63, 59, 31, 61, 61}, 90)))) then
          ld.HoldDuration = 0
        end
      end
    end
    if (((7 * 7) == 49) and (y.fly and km)) then
      if (((1 + 1) == 2) and (not ke or not ke.Parent)) then
        ke = Instance.new(g({24, 53, 62, 35, 12, 63, 54, 53, 57, 51, 46, 35}, 90))
        ke.MaxForce = (Vector3.one * 1e9)
        ke.Parent = km
        kf = Instance.new(g({24, 53, 62, 35, 29, 35, 40, 53}, 90))
        kf.MaxTorque = (Vector3.one * 1e9)
        kf.Parent = km
      end
      local le = workspace.CurrentCamera
      local lf = Vector3.new()
      if (((15 * 15) == 225) and k:IsKeyDown(Enum.KeyCode.W)) then
        lf += le.CFrame.LookVector
      end
      if (((100 % 7) == 2) and k:IsKeyDown(Enum.KeyCode.S)) then
        lf -= le.CFrame.LookVector
      end
      if (((12 * 12) == 144) and k:IsKeyDown(Enum.KeyCode.A)) then
        lf -= le.CFrame.RightVector
      end
      if (((3 ^ 2) == 9) and k:IsKeyDown(Enum.KeyCode.D)) then
        lf += le.CFrame.RightVector
      end
      if (((7 * 7) == 49) and k:IsKeyDown(Enum.KeyCode.Space)) then
        lf += Vector3.yAxis
      end
      ke.Velocity = (((lf.Magnitude > 0) and (lf.Unit * y.fs)) or Vector3.new())
      kf.CFrame = le.CFrame
    elseif (((1 + 1) == 2) and ke) then
      ke:Destroy()
      kf:Destroy()
      ke = nil
      kf = nil
    end
    task.wait(.05)
  end
  if (((15 * 15) == 225) and ke) then
    ke:Destroy()
    kf:Destroy()
  end
end)