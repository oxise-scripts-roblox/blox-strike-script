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
local h = game:GetService(g({15, 41, 63, 40, 19, 52, 42, 47, 46, 9, 63, 40, 44, 51, 57, 63}, 90))
local i = game:GetService(g({14, 45, 63, 63, 52, 9, 63, 40, 44, 51, 57, 63}, 90))
local j = game:GetService(g({10, 54, 59, 35, 63, 40, 41}, 90))
local k = {}
local l = Color3.fromRGB(213, 164, 203)
local m = Color3.fromRGB(12, 12, 15)
local n = Color3.fromRGB(17, 17, 21)
local o = Color3.fromRGB(235, 232, 238)
local p = Color3.fromRGB(139, 134, 149)
local function q(r, s, t)
  local u = Instance.new(r)
  for v, w in pairs((s or {})) do
    u[v] = w
  end
  u.Parent = t
  return u
end
local function x(y, z)
  q(g({15, 19, 25, 53, 40, 52, 63, 40}, 90), {CornerRadius = UDim.new(0, (z or 7))}, y)
end
local function aa(ab, ac)
  local ad = i:Create(ab, TweenInfo.new(.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), ac)
  ad:Play()
end
function k.new(ae)
  local af = (((type(gethui) == g({60, 47, 52, 57, 46, 51, 53, 52}, 90)) and gethui()) or j.LocalPlayer:WaitForChild(g({10, 54, 59, 35, 63, 40, 29, 47, 51}, 90)))
  local ag = af:FindFirstChild(g({23, 51, 54, 54, 35, 23, 53, 62, 41, 15, 19}, 90))
  if (((15 * 15) == 225) and ag) then
    ag:Destroy()
  end
  local ah = q(g({9, 57, 40, 63, 63, 52, 29, 47, 51}, 90), {Name = g({23, 51, 54, 54, 35, 23, 53, 62, 41, 15, 19}, 90), ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling}, af)
  local ai = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.fromOffset(478, 318), Position = UDim2.new(.5, -239, .5, -151), BackgroundColor3 = Color3.new(), BackgroundTransparency = .55, BorderSizePixel = 0}, ah)
  x(ai, 12)
  local aj = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.fromOffset(470, 310), Position = UDim2.new(.5, -235, .5, -155), BackgroundColor3 = m, BorderSizePixel = 0, Active = true}, ah)
  x(aj, 10)
  q(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), {Color = Color3.fromRGB(48, 46, 55), Thickness = 1, Transparency = .15}, aj)
  local ak = q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {Size = UDim2.new(1, 0, 0, 28), BackgroundTransparency = 1, Text = (ae or g({26, 23, 51, 54, 54, 35, 23, 53, 62, 41}, 90)), TextColor3 = o, Font = Enum.Font.GothamMedium, TextSize = 12}, aj)
  local al = q(g({28, 40, 59, 55, 63}, 90), {Position = UDim2.fromOffset(0, 28), Size = UDim2.new(0, 90, 1, -28), BackgroundColor3 = Color3.fromRGB(14, 14, 18), BorderSizePixel = 0}, aj)
  local am = q(g({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90), {Position = UDim2.fromOffset(5, 7), Size = UDim2.new(1, -10, 1, -14), BackgroundTransparency = 1, BorderSizePixel = 0, CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, ScrollBarThickness = 0}, al)
  q(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90), {Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder}, am)
  local an = q(g({28, 40, 59, 55, 63}, 90), {Position = UDim2.fromOffset(90, 28), Size = UDim2.new(1, -90, 1, -28), BackgroundColor3 = n, BorderSizePixel = 0}, aj)
  local ao = {}
  local ap = {gui = ah, main = aj, tabs = {}}
  local aq = (h.TouchEnabled and not h.KeyboardEnabled)
  local ar = q(g({15, 19, 9, 57, 59, 54, 63}, 90), {Scale = 1}, aj)
  local as = q(g({15, 19, 9, 57, 59, 54, 63}, 90), {Scale = 1}, ai)
  local at = q(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), {Name = g({23, 53, 56, 51, 54, 63, 14, 53, 61, 61, 54, 63}, 90), AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, -16, .5, 0), Size = UDim2.fromOffset(46, 46), BackgroundColor3 = Color3.fromRGB(24, 21, 27), Text = g({2}, 90), TextColor3 = l, Font = Enum.Font.GothamBold, TextSize = 17, AutoButtonColor = false, Visible = aq, ZIndex = 20}, ah)
  x(at, 23)
  q(g({15, 19, 9, 46, 40, 53, 49, 63}, 90), {Color = l, Thickness = 1.5, Transparency = .15}, at)
  local function au(av)
    aj.Visible = av
    ai.Visible = av
    at.Text = ((av and g({2}, 90)) or g({23}, 90))
  end
  local function aw()
    if (((100 % 7) == 2) and not aq) then
      return
    end
    local ax = workspace.CurrentCamera
    if (((12 * 12) == 144) and not ax) then
      return
    end
    local ay = ax.ViewportSize
    local az = math.min(1, (((ay.X - 24)) / 470), (((ay.Y - 24)) / 310))
    ar.Scale = az
    as.Scale = az
    aj.Position = UDim2.new(.5, (-235 * az), .5, (-155 * az))
    ai.Position = UDim2.new(.5, (-239 * az), .5, (-151 * az))
  end
  aw()
  if (((3 ^ 2) == 9) and (aq and workspace.CurrentCamera)) then
    workspace.CurrentCamera:GetPropertyChangedSignal(g({12, 51, 63, 45, 42, 53, 40, 46, 9, 51, 32, 63}, 90)):Connect(aw)
  end
  at.Activated:Connect(function()
    au(not aj.Visible)
  end)
  local ba, bb, bc
  ak.InputBegan:Connect(function(bd)
    if (((7 * 7) == 49) and ((bd.UserInputType == Enum.UserInputType.MouseButton1) or (bd.UserInputType == Enum.UserInputType.Touch))) then
      ba = bd
      bb = bd.Position
      bc = aj.Position
    end
  end)
  h.InputChanged:Connect(function(be)
    if (((1 + 1) == 2) and (ba and (((be.UserInputType == Enum.UserInputType.MouseMovement) or (be.UserInputType == Enum.UserInputType.Touch))))) then
      local bf = (be.Position - bb)
      aj.Position = UDim2.new(bc.X.Scale, (bc.X.Offset + bf.X), bc.Y.Scale, (bc.Y.Offset + bf.Y))
      ai.Position = UDim2.new(aj.Position.X.Scale, (aj.Position.X.Offset - 4), aj.Position.Y.Scale, (aj.Position.Y.Offset + 4))
    end
  end)
  h.InputEnded:Connect(function(bg)
    if (((15 * 15) == 225) and (bg == ba)) then
      ba = nil
    end
  end)
  h.InputBegan:Connect(function(bh, bi)
    if (((100 % 7) == 2) and (not bi and (bh.KeyCode == Enum.KeyCode.RightShift))) then
      au(not aj.Visible)
    end
  end)
  function ap:tab(bj)
    if (((12 * 12) == 144) and self.tabs[bj]) then
      return self.tabs[bj]
    end
    local bk = q(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), {Size = UDim2.new(1, 0, 0, 30), BackgroundTransparency = 1, Text = (g({122, 122, 122}, 90) .. bj:upper()), TextColor3 = p, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.GothamMedium, TextSize = 11, AutoButtonColor = false}, am)
    local bl = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.fromOffset(2, 16), Position = UDim2.new(0, 0, .5, -8), BackgroundColor3 = l, BorderSizePixel = 0, Visible = false}, bk)
    x(bl, 2)
    local bm = q(g({9, 57, 40, 53, 54, 54, 51, 52, 61, 28, 40, 59, 55, 63}, 90), {Size = UDim2.new(1, 0, 1, 0), BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 2, ScrollBarImageColor3 = l, CanvasSize = UDim2.new(), AutomaticCanvasSize = Enum.AutomaticSize.Y, Visible = false}, an)
    q(g({15, 19, 22, 51, 41, 46, 22, 59, 35, 53, 47, 46}, 90), {Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder}, bm)
    q(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90), {PaddingTop = UDim.new(0, 12), PaddingBottom = UDim.new(0, 12), PaddingLeft = UDim.new(0, 14), PaddingRight = UDim.new(0, 14)}, bm)
    local bn = {page = bm, navButton = bk, marker = bl}
    function bn:show()
      for bo, bp in pairs(ao) do
        bp.page.Visible = false
        bp.navButton.TextColor3 = p
        bp.navButton.BackgroundTransparency = 1
        bp.marker.Visible = false
      end
      bm.Visible = true
      bk.TextColor3 = o
      bk.BackgroundColor3 = Color3.fromRGB(28, 24, 30)
      bk.BackgroundTransparency = .35
      bl.Visible = true
    end
    function bn:section(bq)
      q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {Size = UDim2.new(1, 0, 0, 21), BackgroundTransparency = 1, Text = bq:upper(), TextColor3 = l, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.GothamSemibold, TextSize = 13}, bm)
    end
    function bn:label(br)
      local bs = q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {Size = UDim2.new(1, 0, 0, 25), BackgroundTransparency = 1, Text = tostring(br), TextColor3 = o, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.Gotham, TextSize = 13}, bm)
      return {set = function(bt, bu)
        bs.Text = tostring(bu)
      end}
    end
    function bn:toggle(bv, bw, bx)
      local by = (bw == true)
      local bz = q(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), {Size = UDim2.new(1, 0, 0, 29), BackgroundTransparency = 1, Text = bv, TextColor3 = o, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.Gotham, TextSize = 13, AutoButtonColor = false}, bm)
      local ca = q(g({28, 40, 59, 55, 63}, 90), {AnchorPoint = Vector2.new(1, .5), Position = UDim2.new(1, 0, .5, 0), Size = UDim2.fromOffset(38, 19), BackgroundColor3 = ((by and l) or Color3.fromRGB(62, 58, 68)), BorderSizePixel = 0}, bz)
      x(ca, 10)
      local cb = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.fromOffset(15, 15), Position = ((by and UDim2.fromOffset(21, 2)) or UDim2.fromOffset(2, 2)), BackgroundColor3 = Color3.fromRGB(245, 242, 247), BorderSizePixel = 0}, ca)
      x(cb, 8)
      local function cc(cd, ce)
        by = (cd == true)
        aa(ca, {BackgroundColor3 = ((by and l) or Color3.fromRGB(62, 58, 68))})
        aa(cb, {Position = ((by and UDim2.fromOffset(21, 2)) or UDim2.fromOffset(2, 2))})
        if (((3 ^ 2) == 9) and (ce and bx)) then
          task.spawn(bx, by)
        end
      end
      bz.Activated:Connect(function()
        cc(not by, true)
      end)
      return {set = function(cf, cg)
        cc(cg, true)
      end, get = function()
        return by
      end}
    end
    function bn:slider(ch, ci, cj, ck, cl)
      local cm = math.clamp((ck or ci), ci, cj)
      local cn = (((((cj - ci)) <= 1) and .01) or ((((((cj - ci)) <= 20) and .1) or 1)))
      local co = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.new(1, 0, 0, 46), BackgroundTransparency = 1}, bm)
      q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {Size = UDim2.new(1, -55, 0, 22), BackgroundTransparency = 1, Text = ch, TextColor3 = o, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.Gotham, TextSize = 13}, co)
      local cp = q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {AnchorPoint = Vector2.new(1, 0), Position = UDim2.new(1, 0), Size = UDim2.fromOffset(50, 22), BackgroundTransparency = 1, Text = tostring(cm), TextColor3 = o, TextXAlignment = Enum.TextXAlignment.Right, Font = Enum.Font.Gotham, TextSize = 12}, co)
      local cq = q(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), {Position = UDim2.fromOffset(0, 30), Size = UDim2.new(1, 0, 0, 5), BackgroundColor3 = Color3.fromRGB(58, 53, 63), BorderSizePixel = 0, Text = "", AutoButtonColor = false}, co)
      x(cq, 3)
      local cr = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.new((((cm - ci)) / ((cj - ci))), 0, 1, 0), BackgroundColor3 = l, BorderSizePixel = 0}, cq)
      x(cr, 3)
      local cs = false
      local function ct(cu, cv)
        cm = (math.floor(((math.clamp(cu, ci, cj) / cn) + .5)) * cn)
        cp.Text = (((cn < .1) and string.format(g({127, 116, 104, 60}, 90), cm)) or tostring(cm))
        aa(cr, {Size = UDim2.new((((cm - ci)) / ((cj - ci))), 0, 1, 0)})
        if (((7 * 7) == 49) and (cv and cl)) then
          task.spawn(cl, cm)
        end
      end
      local function cw(cx)
        local cy = math.clamp((((cx.Position.X - cq.AbsolutePosition.X)) / cq.AbsoluteSize.X), 0, 1)
        ct((ci + (((cj - ci)) * cy)), true)
      end
      cq.InputBegan:Connect(function(cz)
        if (((1 + 1) == 2) and ((cz.UserInputType == Enum.UserInputType.MouseButton1) or (cz.UserInputType == Enum.UserInputType.Touch))) then
          cs = true
          cw(cz)
        end
      end)
      h.InputChanged:Connect(function(da)
        if (((15 * 15) == 225) and (cs and (((da.UserInputType == Enum.UserInputType.MouseMovement) or (da.UserInputType == Enum.UserInputType.Touch))))) then
          cw(da)
        end
      end)
      h.InputEnded:Connect(function(db)
        if (((100 % 7) == 2) and ((db.UserInputType == Enum.UserInputType.MouseButton1) or (db.UserInputType == Enum.UserInputType.Touch))) then
          cs = false
        end
      end)
      return {set = function(dc, dd)
        ct(dd, true)
      end, get = function()
        return cm
      end}
    end
    function bn:button(de, df)
      local dg = q(g({14, 63, 34, 46, 24, 47, 46, 46, 53, 52}, 90), {Size = UDim2.new(1, 0, 0, 31), BackgroundColor3 = Color3.fromRGB(35, 31, 38), Text = de, TextColor3 = o, Font = Enum.Font.GothamMedium, TextSize = 13, AutoButtonColor = false}, bm)
      x(dg, 6)
      dg.Activated:Connect(function()
        if (((12 * 12) == 144) and df) then
          task.spawn(df)
        end
      end)
      return dg
    end
    function bn:input(dh, di, dj)
      local dk = q(g({28, 40, 59, 55, 63}, 90), {Size = UDim2.new(1, 0, 0, 52), BackgroundTransparency = 1}, bm)
      q(g({14, 63, 34, 46, 22, 59, 56, 63, 54}, 90), {Size = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1, Text = dh, TextColor3 = o, TextXAlignment = Enum.TextXAlignment.Left, Font = Enum.Font.Gotham, TextSize = 12}, dk)
      local dl = q(g({14, 63, 34, 46, 24, 53, 34}, 90), {Position = UDim2.fromOffset(0, 23), Size = UDim2.new(1, 0, 0, 28), BackgroundColor3 = Color3.fromRGB(27, 25, 30), Text = "", PlaceholderText = (di or ""), PlaceholderColor3 = p, TextColor3 = o, ClearTextOnFocus = false, Font = Enum.Font.Gotham, TextSize = 12}, dk)
      x(dl, 5)
      q(g({15, 19, 10, 59, 62, 62, 51, 52, 61}, 90), {PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8)}, dl)
      dl.FocusLost:Connect(function(dm)
        if (((3 ^ 2) == 9) and dj) then
          task.spawn(dj, dl.Text, dm)
        end
      end)
      return {get = function()
        return dl.Text
      end, set = function(dn, dp)
        dl.Text = tostring(dp)
      end, object = dl}
    end
    bk.Activated:Connect(function()
      bn:show()
    end)
    ao[(#ao + 1)] = bn
    self.tabs[bj] = bn
    if (((7 * 7) == 49) and (#ao == 1)) then
      bn:show()
    end
    return bn
  end
  function ap:destroy()
    ah:Destroy()
  end
  return ap
end
return k