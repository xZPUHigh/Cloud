print("********************************************************************************")
warn("---- ⭐Project Spectrum [KEY SYSTEMS] 🗝️ Loaded by by xZPUHigh [Founder 👑] ---- ")
print("********************************************************************************")


-- ++++++++ WAX BUNDLED DATA BELOW ++++++++ --

-- Will be used later for getting flattened globals
local ImportGlobals

-- Holds direct closure data (defining this before the DOM tree for line debugging etc)
local ClosureBindings = {
    function()local wax,script,require=ImportGlobals(1)local ImportGlobals return (function(...)local UIInitilize = require(script.Window)
local KeyManager = require(script.modules.Key.ValidateKey)

local Module = {
    isValidated = false,
}

function Module:Init()
    if KeyManager:CheckKey() then
        print("[System] Access granted using saved key.")
        return true
    else
        UIInitilize:InitUI()
        print("[System] Access denied using saved key.")
        repeat wait() until self.isValidated
        return self.isValidated
    end
end

return Module
end)() end,
    function()local wax,script,require=ImportGlobals(2)local ImportGlobals return (function(...)local Root = script.Parent
local Creator = require(Root.modules.Creator)
local AddSignal = Creator.AddSignal
local Window = {}

local function Create(Name, Properties, Children)
	local Object = Instance.new(Name)
	for i, v in next, Properties or {} do
		Object[i] = v
	end
	for i, v in next, Children or {} do
		v.Parent = Object
	end
	return Object
end

-- Уничтожение предыдущего UI, если он существует
if _G.MainUII ~= nil then
	_G.MainUII:Destroy()
end

local RunService = game:GetService("RunService")
local CoreGui = RunService:IsStudio() and game.Players.LocalPlayer.PlayerGui or game:GetService("CoreGui")

function Window:InitUI()
	local ScreenGui = Create("ScreenGui", {
		IgnoreGuiInset = false,
		ResetOnSpawn = false,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		Parent = CoreGui,
	})

	_G.MainUII = ScreenGui

	-- #Window
	local WindowFrame = Create("Frame", {
		Active = true,
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 480, 0, 360),
		Visible = true,
		Name = "MainFrame",
		Parent = ScreenGui,
	})

	local design_frame = Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0.9,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
		Name = "DesignFrame",
		Parent = WindowFrame,
	}, {
		Create("ImageLabel", {
			Image = "rbxassetid://8992230677",
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.7,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(99, 99, 99, 99),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 120, 1, 116),
			Visible = true,
		}),
		Create("UICorner", {}),
		Create("Frame", {
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
			Name = "Background",
		}, {
			Create("UICorner", {}),
		}),
		Create("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0.4,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
		}, {
			Create("UICorner", {}),
			Create("UIGradient", {
				Color = ColorSequence.new(Color3.fromRGB(20, 20, 20), Color3.fromRGB(15, 15, 15)),
				Rotation = 90,
			}),
		}),
		Create("ImageLabel", {
			Image = "rbxassetid://9968344105",
			ImageTransparency = 0.98,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
		}, {
			Create("UICorner", {}),
		}),
		Create("ImageLabel", {
			Image = "rbxassetid://9968344227",
			ImageTransparency = 0.98,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
		}, {
			Create("UICorner", {}),
		}),
		Create("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
			ZIndex = 2,
		}, {
			Create("UICorner", {}),
			Create("UIStroke", {
				Color = Color3.fromRGB(13, 13, 13),
			}),
		}),
		Create("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = true,
		}),
	})

	local top_bar = Create("Frame", {
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 42),
		Visible = true,
		Name = "TopBar",
		Parent = WindowFrame,
	}, {
		Create("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 16, 0, 0),
			Size = UDim2.new(1, -16, 1, 0),
			Visible = true,
			Name = "Title",
		}, {
			Create("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			Create("TextLabel", {
				Font = Enum.Font.Gotham,
				RichText = true,
				Text = "Project Spectrum | {Key Systems 🗝️}",
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 12,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
				Visible = true,
				Name = "name",
			}),
			Create("TextLabel", {
				Font = Enum.Font.Gotham,
				RichText = true,
				Text = "by xZPUHigh & Next.xrer",
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 12,
				TextTransparency = 0.4,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0, 0, 1, 0),
				Visible = true,
				Name = "bytext",
			}),
		}),
		Create("Frame", {
			BackgroundColor3 = Color3.fromRGB(13, 13, 13),
			BackgroundTransparency = 0.5,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 0, 1, 0),
			Size = UDim2.new(1, 0, 0, 1),
			Visible = true,
			Name = "Line",
		}),
	})

	local close = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = Color3.fromRGB(240, 240, 240),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(1, -4, 0, 4),
		Size = UDim2.new(0, 34, 1, -8),
		Visible = true,
		Name = "Close",
		Parent = top_bar,
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 7),
		}),
		Create("ImageLabel", {
			Image = "rbxassetid://9886659671",
			ImageColor3 = Color3.fromRGB(240, 240, 240),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 16, 0, 16),
			Visible = true,
			Name = "Icon",
		}),
	})

	local function MakeDraggable(DragPoint, Main)
		pcall(function()
			local UserInputService = game:GetService("UserInputService")
			local Dragging, DragInput, MousePos, FramePos = false
			AddSignal(DragPoint.InputBegan, function(Input)
				if
					Input.UserInputType == Enum.UserInputType.MouseButton1
					or Input.UserInputType == Enum.UserInputType.Touch
				then
					Dragging = true
					MousePos = Input.Position
					FramePos = Main.Position
	
					AddSignal(Input.Changed, function()
						if Input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end)
				end
			end)
			AddSignal(DragPoint.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement then
					DragInput = Input
				end
			end)
			AddSignal(UserInputService.InputChanged, function(Input)
				if
					(
						Input.UserInputType == Enum.UserInputType.MouseMovement
						or Input.UserInputType == Enum.UserInputType.Touch
					) and Dragging
				then
					local Delta = Input.Position - MousePos
					Main.Position = UDim2.new(
						FramePos.X.Scale,
						FramePos.X.Offset + Delta.X,
						FramePos.Y.Scale,
						FramePos.Y.Offset + Delta.Y
					)
				end
			end)
		end)
	end

	MakeDraggable(top_bar, WindowFrame)

	local Motor, SetTransparency = Creator.SpringMotor(1, close, "BackgroundTransparency")

	AddSignal(close.MouseEnter, function()
		SetTransparency(0.94)
	end)
	AddSignal(close.MouseLeave, function()
		SetTransparency(1, true)
	end)
	AddSignal(close.MouseButton1Down, function()
		SetTransparency(0.96)
	end)
	AddSignal(close.MouseButton1Up, function()
		SetTransparency(0.94)
	end)

	AddSignal(close.MouseButton1Click, function()
		ScreenGui:Destroy()
		return false
	end)

	local CheckKey = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundColor3 = Color3.fromRGB(98, 34, 255),
		BackgroundTransparency = 0.10000000149011612,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Visible = true,
		Name = "CheckKey",
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(115, 34, 255),
		}),

		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = Color3.fromRGB(60, 22, 165),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Visible = true,
		}, {
			Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, 14),
				PaddingTop = UDim.new(0, 8),
			}),
			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "Check Key",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0, 0, 0, 14),
				Visible = true,
			}),
		}),
	})

	local GetKey = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BackgroundTransparency = 0.8700000047683716,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		LayoutOrder = 1,
		Visible = true,
		Name = "GetKey",
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),

		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(27, 27, 27),
		}),
		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = Color3.fromRGB(35, 35, 35),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Visible = true,
		}, {
			Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, 14),
				PaddingTop = UDim.new(0, 8),
			}),

			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "Get Key",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0, 0, 0, 14),
				Visible = true,
			}),
		}),
	})

	local Discord = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.XY,
		BackgroundColor3 = Color3.fromRGB(40, 40, 40),
		BackgroundTransparency = 0.8700000047683716,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		LayoutOrder = 1,
		Visible = true,
		Name = "Discord",
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),

		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(27, 27, 27),
		}),
		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundColor3 = Color3.fromRGB(35, 35, 35),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Visible = true,
		}, {
			Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 8),
				PaddingLeft = UDim.new(0, 14),
				PaddingRight = UDim.new(0, 14),
				PaddingTop = UDim.new(0, 8),
			}),

			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "Discord",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(0, 0, 0, 14),
				Visible = true,
			}),
		}),
	})

	local bottombar = Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 1),
		BackgroundColor3 = Color3.fromRGB(1, 1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 1, 0),
		Size = UDim2.new(1, 0, 0, 52),
		Visible = true,
		Name = "BottomBar",
		Parent = WindowFrame,
	}, {
		Create("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 16, 0, 0),
			Size = UDim2.new(1, -32, 1, 0),
			Name = "Holder",
		}, {
			Create("UIListLayout", {
				Padding = UDim.new(0, 5),
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			CheckKey,
			GetKey,
			Discord,
		}),

		Create("Frame", {
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundColor3 = Color3.new(0.05, 0.05, 0.05),
			BackgroundTransparency = 0.5,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 1),
			Position = UDim2.new(0.5, 0, 0, 0),
			Name = "Line",
		}),
	})

	-- #Section
	local scrolling_frame = Create("ScrollingFrame", {
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		BottomImage = "rbxassetid://6889812791",
		CanvasSize = UDim2.new(0, 0, 0, 0),
		MidImage = "rbxassetid://6889812721",
		ScrollBarImageTransparency = 0.949999988079071,
		ScrollBarThickness = 3,
		ScrollingDirection = Enum.ScrollingDirection.Y,
		TopImage = "rbxassetid://6276641225",
		AnchorPoint = Vector2.new(0.5, 0),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0, 49),
		Size = UDim2.new(1, -12, 1, -108),
		Visible = true,
		Parent = WindowFrame,
	}, {
		Create("UIListLayout", {
			Padding = UDim.new(0, 5),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Create("UIPadding", {
			PaddingBottom = UDim.new(0, 1),
			PaddingLeft = UDim.new(0, 1),
			PaddingRight = UDim.new(0, 10),
			PaddingTop = UDim.new(0, 1),
		}),
	})

	-- Paragraph Key
	local ParagraphKey = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.fromRGB(62, 62, 62),
		BackgroundTransparency = 0.87,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Size = UDim2.new(1, 0, 0, 0),
		Visible = true,
		Name = "Paragraph",
		Parent = scrolling_frame,
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(18, 18, 18),
		}),
		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 10, 0, 0),
			Size = UDim2.new(1, -28, 0, 0),
			Visible = true,
		}, {
			Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 13),
			}),
			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "Key Management",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
			}),
			Create("TextLabel", {
				Font = Enum.Font.Gotham,
				Text = "Enter your key below to check, retrieve, or join our community.",
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
			}),
		}),
	})

	-- Input
	local KeyTextBox = Create("TextBox", {
		Font = Enum.Font.Gotham,
		PlaceholderColor3 = Color3.fromRGB(170, 170, 170),
		PlaceholderText = "Place Key Here...",
		Text = "",
		TextColor3 = Color3.fromRGB(232, 227, 247),
		TextSize = 14,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		Position = UDim2.new(0, 2, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		Visible = true,
	})

	local input = Create("TextButton", {
		Font = Enum.Font.SourceSans,
		AutoButtonColor = false,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.fromRGB(62, 62, 62),
		BackgroundTransparency = 0.87,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		LayoutOrder = 1,
		Size = UDim2.new(1, 0, 0, 0),
		Visible = true,
		Name = "Input",
		Parent = scrolling_frame,
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(18, 18, 18),
		}),
		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 10, 0, 0),
			Size = UDim2.new(1, -28, 0, 0),
			Visible = true,
		}, {
			Create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 13),
			}),
			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "Enter Key",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
			}),
			Create("TextLabel", {
				Font = Enum.Font.Gotham,
				Text = "",
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = false,
			}),
		}),
		Create("Frame", {
			AnchorPoint = Vector2.new(1, 0.5),
			BackgroundColor3 = Color3.fromRGB(20, 20, 20),
			BackgroundTransparency = 0.9,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(1, -10, 0.5, 0),
			Size = UDim2.new(0, 160, 0, 30),
			Visible = true,
		}, {
			Create("UICorner", {
				CornerRadius = UDim.new(0, 4),
			}),
			Create("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(15, 15, 15),
			}),
			Create("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				BackgroundTransparency = 0.5,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0, 2, 1, 0),
				Size = UDim2.new(1, -4, 0, 1),
				Visible = true,
			}),
			Create("Frame", {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				ClipsDescendants = true,
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 1, 0),
				Visible = true,
			}, {
				KeyTextBox,
			}),
		}),
	})

	-- How to get key
	local banner_yt = Create("ImageLabel", {
		Image = "http://www.roblox.com/asset/?id=110546773549815",
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 246),
		Visible = true,
		Name = "BannerYT",
		Parent = workspace,
	})

	local youtube = Create("TextButton", {
		AutoButtonColor = false,
		Font = Enum.Font.SourceSans,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		BackgroundColor3 = Color3.fromRGB(18, 18, 18),
		BackgroundTransparency = 0.44999998807907104,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 246),
		Visible = true,
		Name = "Youtube",
		Parent = banner_yt,
	})

	local play_frame = Create("Frame", {
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(63, 63, 63),
		BackgroundTransparency = 0.5,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(0, 56, 0, 56),
		Visible = true,
		Name = "PLayFrame",
		Parent = youtube,
	})

	local play = Create("ImageLabel", {
		Image = "rbxassetid://15269323509",
		ImageColor3 = Color3.fromRGB(148, 148, 148),
		ImageRectOffset = Vector2.new(257, 0),
		ImageRectSize = Vector2.new(256, 256),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 1,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 1, 0.5, 0),
		Size = UDim2.new(0, 20, 0, 20),
		Visible = true,
		Name = "play",
		Parent = play_frame,
	})

	local uistroke = Create("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = Color3.fromRGB(16, 16, 16),
		Parent = play_frame,
	})

	local uicorner = Create("UICorner", {
		CornerRadius = UDim.new(1, 0),
		Parent = play_frame,
	})

	local uistroke_2 = Create("UIStroke", {
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		Color = Color3.fromRGB(15, 15, 15),
		Parent = youtube,
	})

	local uicorner_2 = Create("UICorner", {
		CornerRadius = UDim.new(0, 4),
		Parent = youtube,
	})

	local uicorner_3 = Create("UICorner", {
		CornerRadius = UDim.new(0, 4),
		Parent = banner_yt,
	})

	-- youtube button value
	youtube.MouseButton1Click:Connect(function()
		setclipboard("https://youtu.be/IG0ewJDS0_c")
	end)

	local how_to_get_key = Create("TextButton", {
		AutoButtonColor = false,
		Font = Enum.Font.SourceSans,
		Text = "",
		TextColor3 = Color3.fromRGB(0, 0, 0),
		TextSize = 14,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = Color3.fromRGB(62, 62, 62),
		BackgroundTransparency = 0.8700000047683716,
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		LayoutOrder = 2,
		Size = UDim2.new(1, 0, 0, 0),
		Visible = true,
		Name = "HowToGetKey",
		Parent = scrolling_frame,
	}, {
		Create("UICorner", {
			CornerRadius = UDim.new(0, 4),
		}),
		Create("UIStroke", {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
			Color = Color3.fromRGB(18, 18, 18),
		}),
		Create("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BorderSizePixel = 0,
			Position = UDim2.new(0, 10, 0, 0),
			Size = UDim2.new(1, -20, 0, 0),
			Visible = true,
		}, {
			Create("UIListLayout", {
				Padding = UDim.new(0, 8),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			}),
			Create("UIPadding", {
				PaddingBottom = UDim.new(0, 13),
				PaddingTop = UDim.new(0, 13),
			}),
			Create("TextLabel", {
				Font = Enum.Font.GothamMedium,
				Text = "How Get Key?",
				TextColor3 = Color3.fromRGB(232, 227, 247),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
			}),
			Create("TextLabel", {
				Font = Enum.Font.Gotham,
				Text = "How do I get a key? Click the button below to copy the link to the documentation on how to get the key.",
				TextColor3 = Color3.fromRGB(170, 170, 170),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				Size = UDim2.new(1, 0, 0, 14),
				Visible = true,
			}),
			banner_yt,
		}),
	})

	function InitHover(Element)
		local Motor, SetTransparency = Creator.SpringMotor(
			0.87,
			Element,
			"BackgroundTransparency",
			false,
			true
		)

		Creator.AddSignal(Element.MouseEnter, function()
			SetTransparency(0.87 - 0.04)
		end)
		Creator.AddSignal(Element.MouseLeave, function()
			SetTransparency(0.87)
		end)
		Creator.AddSignal(Element.MouseButton1Down, function()
			SetTransparency(0.87 + 0.04)
		end)
		Creator.AddSignal(Element.MouseButton1Up, function()
			SetTransparency(0.87 - 0.04)
		end)
	end

	InitHover(ParagraphKey)
	InitHover(input)
	InitHover(how_to_get_key)

	InitHover(Discord)
	InitHover(GetKey)
	InitHover(CheckKey)

	-- KeyTextBox.Text -- Key

	local keyLib = require(script.Parent.modules.Key.ValidateKey)

	AddSignal(CheckKey.MouseButton1Click, function()
		local inputKey = KeyTextBox.Text
        self.isValidated = keyLib:CheckKey(inputKey)

        if self.isValidated then
            print("Key successful valid")
            -- keyLib:SaveKey(inputKey)
            _G.MainUII:Destroy()
        else
            print("Invalid key")
        end
	end)
	AddSignal(GetKey.MouseButton1Click, function()
		setclipboard(keyLib:GetKey())
	end)
	AddSignal(Discord.MouseButton1Click, function()
		setclipboard("https://discord.gg/hackerclub")
	end)
end
return Window

end)() end,
    [4] = function()local wax,script,require=ImportGlobals(4)local ImportGlobals return (function(...)local Acrylic = {
	AcrylicBlur = require(script.AcrylicBlur),
	CreateAcrylic = require(script.CreateAcrylic),
	AcrylicPaint = require(script.AcrylicPaint),
}

function Acrylic.init()
	local baseEffect = Instance.new("DepthOfFieldEffect")
	baseEffect.FarIntensity = 0
	baseEffect.InFocusRadius = 0.1
	baseEffect.NearIntensity = 1

	local depthOfFieldDefaults = {}

	function Acrylic.Enable()
		for _, effect in pairs(depthOfFieldDefaults) do
			effect.Enabled = false
		end
		baseEffect.Parent = game:GetService("Lighting")
	end

	function Acrylic.Disable()
		for _, effect in pairs(depthOfFieldDefaults) do
			effect.Enabled = effect.enabled
		end
		baseEffect.Parent = nil
	end

	local function registerDefaults()
		local function register(object)
			if object:IsA("DepthOfFieldEffect") then
				depthOfFieldDefaults[object] = { enabled = object.Enabled }
			end
		end

		for _, child in pairs(game:GetService("Lighting"):GetChildren()) do
			register(child)
		end

		if game:GetService("Workspace").CurrentCamera then
			for _, child in pairs(game:GetService("Workspace").CurrentCamera:GetChildren()) do
				register(child)
			end
		end
	end

	registerDefaults()
	Acrylic.Enable()
end

return Acrylic

end)() end,
    [5] = function()local wax,script,require=ImportGlobals(5)local ImportGlobals return (function(...)local Creator = require(script.Parent.Parent.Creator)
local createAcrylic = require(script.Parent.CreateAcrylic)
local viewportPointToWorld, getOffset = unpack(require(script.Parent.Utils))

local BlurFolder = Instance.new("Folder", game:GetService("Workspace").CurrentCamera)

local function createAcrylicBlur(distance)
	local cleanups = {}

	distance = distance or 0.001
	local positions = {
		topLeft = Vector2.new(),
		topRight = Vector2.new(),
		bottomRight = Vector2.new(),
	}
	local model = createAcrylic()
	model.Parent = BlurFolder

	local function updatePositions(size, position)
		positions.topLeft = position
		positions.topRight = position + Vector2.new(size.X, 0)
		positions.bottomRight = position + size
	end

	local function render()
		local res = game:GetService("Workspace").CurrentCamera
		if res then
			res = res.CFrame
		end
		local cond = res
		if not cond then
			cond = CFrame.new()
		end

		local camera = cond
		local topLeft = positions.topLeft
		local topRight = positions.topRight
		local bottomRight = positions.bottomRight

		local topLeft3D = viewportPointToWorld(topLeft, distance)
		local topRight3D = viewportPointToWorld(topRight, distance)
		local bottomRight3D = viewportPointToWorld(bottomRight, distance)

		local width = (topRight3D - topLeft3D).Magnitude
		local height = (topRight3D - bottomRight3D).Magnitude

		model.CFrame =
			CFrame.fromMatrix((topLeft3D + bottomRight3D) / 2, camera.XVector, camera.YVector, camera.ZVector)
		model.Mesh.Scale = Vector3.new(width, height, 0)
	end

	local function onChange(rbx)
		local offset = getOffset()
		local size = rbx.AbsoluteSize - Vector2.new(offset, offset)
		local position = rbx.AbsolutePosition + Vector2.new(offset / 2, offset / 2)

		updatePositions(size, position)
		task.spawn(render)
	end

	local function renderOnChange()
		local camera = game:GetService("Workspace").CurrentCamera
		if not camera then
			return
		end

		table.insert(cleanups, camera:GetPropertyChangedSignal("CFrame"):Connect(render))
		table.insert(cleanups, camera:GetPropertyChangedSignal("ViewportSize"):Connect(render))
		table.insert(cleanups, camera:GetPropertyChangedSignal("FieldOfView"):Connect(render))
		task.spawn(render)
	end

	model.Destroying:Connect(function()
		for _, item in cleanups do
			pcall(function()
				item:Disconnect()
			end)
		end
	end)

	renderOnChange()

	return onChange, model
end

return function(distance)
	local Blur = {}
	local onChange, model = createAcrylicBlur(distance)

	local comp = Creator.New("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
	})

	Creator.AddSignal(comp:GetPropertyChangedSignal("AbsolutePosition"), function()
		onChange(comp)
	end)

	Creator.AddSignal(comp:GetPropertyChangedSignal("AbsoluteSize"), function()
		onChange(comp)
	end)

	Blur.AddParent = function(Parent)
		Creator.AddSignal(Parent:GetPropertyChangedSignal("Visible"), function()
			Blur.SetVisibility(Parent.Visible)
		end)
	end

	Blur.SetVisibility = function(Value)
		model.Transparency = Value and 0.98 or 1
	end

	Blur.Frame = comp
	Blur.Model = model

	return Blur
end

end)() end,
    [6] = function()local wax,script,require=ImportGlobals(6)local ImportGlobals return (function(...)local Creator = require(script.Parent.Parent.Creator)
local AcrylicBlur = require(script.Parent.AcrylicBlur)

local New = Creator.New

return function(props)
	local AcrylicPaint = {}

	AcrylicPaint.Frame = New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 0.9,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0,
	}, {
		New("ImageLabel", {
			Image = "rbxassetid://8992230677",
			ScaleType = "Slice",
			SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, 120, 1, 116),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			BackgroundTransparency = 1,
			ImageColor3 = Color3.fromRGB(0, 0, 0),
			ImageTransparency = 0.7,
		}),

		New("UICorner", {
			CornerRadius = UDim.new(0, 8),
		}),

		New("Frame", {
			BackgroundTransparency = 0.45,
			Size = UDim2.fromScale(1, 1),
			Name = "Background",
			ThemeTag = {
				BackgroundColor3 = "AcrylicMain",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),

		New("Frame", {
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 0.4,
			Size = UDim2.fromScale(1, 1),
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),

			New("UIGradient", {
				Rotation = 90,
				ThemeTag = {
					Color = "AcrylicGradient",
				},
			}),
		}),

		New("ImageLabel", {
			Image = "rbxassetid://9968344105",
			ImageTransparency = 0.98,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),

		New("ImageLabel", {
			Image = "rbxassetid://9968344227",
			ImageTransparency = 0.9,
			ScaleType = Enum.ScaleType.Tile,
			TileSize = UDim2.new(0, 128, 0, 128),
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			ThemeTag = {
				ImageTransparency = "AcrylicNoise",
			},
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
		}),

		New("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ZIndex = 2,
		}, {
			New("UICorner", {
				CornerRadius = UDim.new(0, 8),
			}),
			New("UIStroke", {
				Transparency = 0.5,
				Thickness = 1,
				ThemeTag = {
					Color = "AcrylicBorder",
				},
			}),
		}),
	})

	local Blur

	if require(script.Parent.Parent).UseAcrylic then
		Blur = AcrylicBlur()
		Blur.Frame.Parent = AcrylicPaint.Frame
		AcrylicPaint.Model = Blur.Model
		AcrylicPaint.AddParent = Blur.AddParent
		AcrylicPaint.SetVisibility = Blur.SetVisibility
	end

	return AcrylicPaint
end

end)() end,
    [7] = function()local wax,script,require=ImportGlobals(7)local ImportGlobals return (function(...)local Root = script.Parent.Parent
local Creator = require(Root.Creator)

local function createAcrylic()
	local Part = Creator.New("Part", {
		Name = "Body",
		Color = Color3.new(0, 0, 0),
		Material = Enum.Material.Glass,
		Size = Vector3.new(1, 1, 0),
		Anchored = true,
		CanCollide = false,
		Locked = true,
		CastShadow = false,
		Transparency = 0.98,
	}, {
		Creator.New("SpecialMesh", {
			MeshType = Enum.MeshType.Brick,
			Offset = Vector3.new(0, 0, -0.000001),
		}),
	})

	return Part
end

return createAcrylic

end)() end,
    [8] = function()local wax,script,require=ImportGlobals(8)local ImportGlobals return (function(...)local function map(value, inMin, inMax, outMin, outMax)
	return (value - inMin) * (outMax - outMin) / (inMax - inMin) + outMin
end

local function viewportPointToWorld(location, distance)
	local unitRay = game:GetService("Workspace").CurrentCamera:ScreenPointToRay(location.X, location.Y)
	return unitRay.Origin + unitRay.Direction * distance
end

local function getOffset()
	local viewportSizeY = game:GetService("Workspace").CurrentCamera.ViewportSize.Y
	return map(viewportSizeY, 0, 2560, 8, 56)
end

return { viewportPointToWorld, getOffset }

end)() end,
    [9] = function()local wax,script,require=ImportGlobals(9)local ImportGlobals return (function(...)local Root = script.Parent
local Flipper = require(Root.Flipper)

local Creator = {
	Registry = {},
	Signals = {},
	TransparencyMotors = {},
}


function Creator.AddSignal(Signal, Function)
	table.insert(Creator.Signals, Signal:Connect(Function))
end

function Creator.Disconnect()
	for Idx = #Creator.Signals, 1, -1 do
		local Connection = table.remove(Creator.Signals, Idx)
		Connection:Disconnect()
	end
end

function Creator.OverrideTag(Object, Properties)
	Creator.Registry[Object].Properties = Properties
end

function Creator.SpringMotor(Initial, Instance, Prop, IgnoreDialogCheck, ResetOnThemeChange)
	IgnoreDialogCheck = IgnoreDialogCheck or false
	ResetOnThemeChange = ResetOnThemeChange or false
	local Motor = Flipper.SingleMotor.new(Initial)
	Motor:onStep(function(value)
		Instance[Prop] = value
	end)

	if ResetOnThemeChange then
		table.insert(Creator.TransparencyMotors, Motor)
	end

	local function SetValue(Value, Ignore)
		Ignore = Ignore or false
		if not IgnoreDialogCheck then
			if not Ignore then
				if Prop == "BackgroundTransparency" then
					return
				end
			end
		end
		Motor:setGoal(Flipper.Spring.new(Value, { frequency = 8 }))
	end

	return Motor, SetValue
end

return Creator
end)() end,
    [10] = function()local wax,script,require=ImportGlobals(10)local ImportGlobals return (function(...)local Flipper = {
	SingleMotor = require(script.SingleMotor),
	GroupMotor = require(script.GroupMotor),

	Instant = require(script.Instant),
	Linear = require(script.Linear),
	Spring = require(script.Spring),

	isMotor = require(script.isMotor),
}

return Flipper

end)() end,
    [11] = function()local wax,script,require=ImportGlobals(11)local ImportGlobals return (function(...)local RunService = game:GetService("RunService")

local Signal = require(script.Parent.Signal)

local noop = function() end

local BaseMotor = {}
BaseMotor.__index = BaseMotor

function BaseMotor.new()
	return setmetatable({
		_onStep = Signal.new(),
		_onStart = Signal.new(),
		_onComplete = Signal.new(),
	}, BaseMotor)
end

function BaseMotor:onStep(handler)
	return self._onStep:connect(handler)
end

function BaseMotor:onStart(handler)
	return self._onStart:connect(handler)
end

function BaseMotor:onComplete(handler)
	return self._onComplete:connect(handler)
end

function BaseMotor:start()
	if not self._connection then
		self._connection = RunService.RenderStepped:Connect(function(deltaTime)
			self:step(deltaTime)
		end)
	end
end

function BaseMotor:stop()
	if self._connection then
		self._connection:Disconnect()
		self._connection = nil
	end
end

BaseMotor.destroy = BaseMotor.stop

BaseMotor.step = noop
BaseMotor.getValue = noop
BaseMotor.setGoal = noop

function BaseMotor:__tostring()
	return "Motor"
end

return BaseMotor

end)() end,
    [12] = function()local wax,script,require=ImportGlobals(12)local ImportGlobals return (function(...)return function()
	local RunService = game:GetService("RunService")

	local BaseMotor = require(script.Parent.BaseMotor)

	describe("connection management", function()
		local motor = BaseMotor.new()

		it("should hook up connections on :start()", function()
			motor:start()
			expect(typeof(motor._connection)).to.equal("RBXScriptConnection")
		end)

		it("should remove connections on :stop() or :destroy()", function()
			motor:stop()
			expect(motor._connection).to.equal(nil)
		end)
	end)

	it("should call :step() with deltaTime", function()
		local motor = BaseMotor.new()

		local argumentsProvided
		function motor:step(...)
			argumentsProvided = { ... }
			motor:stop()
		end

		motor:start()

		local expectedDeltaTime = RunService.RenderStepped:Wait()

		-- Give it another frame, because connections tend to be invoked later than :Wait() calls
		RunService.RenderStepped:Wait()

		expect(argumentsProvided).to.be.ok()
		expect(argumentsProvided[1]).to.equal(expectedDeltaTime)
	end)
end

end)() end,
    [13] = function()local wax,script,require=ImportGlobals(13)local ImportGlobals return (function(...)local BaseMotor = require(script.Parent.BaseMotor)
local SingleMotor = require(script.Parent.SingleMotor)

local isMotor = require(script.Parent.isMotor)

local GroupMotor = setmetatable({}, BaseMotor)
GroupMotor.__index = GroupMotor

local function toMotor(value)
	if isMotor(value) then
		return value
	end

	local valueType = typeof(value)

	if valueType == "number" then
		return SingleMotor.new(value, false)
	elseif valueType == "table" then
		return GroupMotor.new(value, false)
	end

	error(("Unable to convert %q to motor; type %s is unsupported"):format(value, valueType), 2)
end

function GroupMotor.new(initialValues, useImplicitConnections)
	assert(initialValues, "Missing argument #1: initialValues")
	assert(typeof(initialValues) == "table", "initialValues must be a table!")
	assert(
		not initialValues.step,
		'initialValues contains disallowed property "step". Did you mean to put a table of values here?'
	)

	local self = setmetatable(BaseMotor.new(), GroupMotor)

	if useImplicitConnections ~= nil then
		self._useImplicitConnections = useImplicitConnections
	else
		self._useImplicitConnections = true
	end

	self._complete = true
	self._motors = {}

	for key, value in pairs(initialValues) do
		self._motors[key] = toMotor(value)
	end

	return self
end

function GroupMotor:step(deltaTime)
	if self._complete then
		return true
	end

	local allMotorsComplete = true

	for _, motor in pairs(self._motors) do
		local complete = motor:step(deltaTime)
		if not complete then
			-- If any of the sub-motors are incomplete, the group motor will not be complete either
			allMotorsComplete = false
		end
	end

	self._onStep:fire(self:getValue())

	if allMotorsComplete then
		if self._useImplicitConnections then
			self:stop()
		end

		self._complete = true
		self._onComplete:fire()
	end

	return allMotorsComplete
end

function GroupMotor:setGoal(goals)
	assert(not goals.step, 'goals contains disallowed property "step". Did you mean to put a table of goals here?')

	self._complete = false
	self._onStart:fire()

	for key, goal in pairs(goals) do
		local motor = assert(self._motors[key], ("Unknown motor for key %s"):format(key))
		motor:setGoal(goal)
	end

	if self._useImplicitConnections then
		self:start()
	end
end

function GroupMotor:getValue()
	local values = {}

	for key, motor in pairs(self._motors) do
		values[key] = motor:getValue()
	end

	return values
end

function GroupMotor:__tostring()
	return "Motor(Group)"
end

return GroupMotor

end)() end,
    [14] = function()local wax,script,require=ImportGlobals(14)local ImportGlobals return (function(...)return function()
	local GroupMotor = require(script.Parent.GroupMotor)

	local Instant = require(script.Parent.Instant)
	local Spring = require(script.Parent.Spring)

	it("should complete when all child motors are complete", function()
		local motor = GroupMotor.new({
			A = 1,
			B = 2,
		}, false)

		expect(motor._complete).to.equal(true)

		motor:setGoal({
			A = Instant.new(3),
			B = Spring.new(4, { frequency = 7.5, dampingRatio = 1 }),
		})

		expect(motor._complete).to.equal(false)

		motor:step(1 / 60)

		expect(motor._complete).to.equal(false)

		for _ = 1, 0.5 * 60 do
			motor:step(1 / 60)
		end

		expect(motor._complete).to.equal(true)
	end)

	it("should start when the goal is set", function()
		local motor = GroupMotor.new({
			A = 0,
		}, false)

		local bool = false
		motor:onStart(function()
			bool = not bool
		end)

		motor:setGoal({
			A = Instant.new(1),
		})

		expect(bool).to.equal(true)

		motor:setGoal({
			A = Instant.new(1),
		})

		expect(bool).to.equal(false)
	end)

	it("should properly return all values", function()
		local motor = GroupMotor.new({
			A = 1,
			B = 2,
		}, false)

		local value = motor:getValue()

		expect(value.A).to.equal(1)
		expect(value.B).to.equal(2)
	end)

	it("should error when a goal is given to GroupMotor.new", function()
		local success = pcall(function()
			GroupMotor.new(Instant.new(0))
		end)

		expect(success).to.equal(false)
	end)

	it("should error when a single goal is provided to GroupMotor:step", function()
		local success = pcall(function()
			GroupMotor.new({ a = 1 }):setGoal(Instant.new(0))
		end)

		expect(success).to.equal(false)
	end)
end

end)() end,
    [15] = function()local wax,script,require=ImportGlobals(15)local ImportGlobals return (function(...)local Instant = {}
Instant.__index = Instant

function Instant.new(targetValue)
	return setmetatable({
		_targetValue = targetValue,
	}, Instant)
end

function Instant:step()
	return {
		complete = true,
		value = self._targetValue,
	}
end

return Instant

end)() end,
    [16] = function()local wax,script,require=ImportGlobals(16)local ImportGlobals return (function(...)return function()
	local Instant = require(script.Parent.Instant)

	it("should return a completed state with the provided value", function()
		local goal = Instant.new(1.23)
		local state = goal:step(0.1, { value = 0, complete = false })
		expect(state.complete).to.equal(true)
		expect(state.value).to.equal(1.23)
	end)
end

end)() end,
    [17] = function()local wax,script,require=ImportGlobals(17)local ImportGlobals return (function(...)local Linear = {}
Linear.__index = Linear

function Linear.new(targetValue, options)
	assert(targetValue, "Missing argument #1: targetValue")

	options = options or {}

	return setmetatable({
		_targetValue = targetValue,
		_velocity = options.velocity or 1,
	}, Linear)
end

function Linear:step(state, dt)
	local position = state.value
	local velocity = self._velocity -- Linear motion ignores the state's velocity
	local goal = self._targetValue

	local dPos = dt * velocity

	local complete = dPos >= math.abs(goal - position)
	position = position + dPos * (goal > position and 1 or -1)
	if complete then
		position = self._targetValue
		velocity = 0
	end

	return {
		complete = complete,
		value = position,
		velocity = velocity,
	}
end

return Linear

end)() end,
    [18] = function()local wax,script,require=ImportGlobals(18)local ImportGlobals return (function(...)return function()
	local SingleMotor = require(script.Parent.SingleMotor)
	local Linear = require(script.Parent.Linear)

	describe("completed state", function()
		local motor = SingleMotor.new(0, false)

		local goal = Linear.new(1, { velocity = 1 })
		motor:setGoal(goal)

		for _ = 1, 60 do
			motor:step(1 / 60)
		end

		it("should complete", function()
			expect(motor._state.complete).to.equal(true)
		end)

		it("should be exactly the goal value when completed", function()
			expect(motor._state.value).to.equal(1)
		end)
	end)

	describe("uncompleted state", function()
		local motor = SingleMotor.new(0, false)

		local goal = Linear.new(1, { velocity = 1 })
		motor:setGoal(goal)

		for _ = 1, 59 do
			motor:step(1 / 60)
		end

		it("should be uncomplete", function()
			expect(motor._state.complete).to.equal(false)
		end)
	end)

	describe("negative velocity", function()
		local motor = SingleMotor.new(1, false)

		local goal = Linear.new(0, { velocity = 1 })
		motor:setGoal(goal)

		for _ = 1, 60 do
			motor:step(1 / 60)
		end

		it("should complete", function()
			expect(motor._state.complete).to.equal(true)
		end)

		it("should be exactly the goal value when completed", function()
			expect(motor._state.value).to.equal(0)
		end)
	end)
end

end)() end,
    [19] = function()local wax,script,require=ImportGlobals(19)local ImportGlobals return (function(...)local Connection = {}
Connection.__index = Connection

function Connection.new(signal, handler)
	return setmetatable({
		signal = signal,
		connected = true,
		_handler = handler,
	}, Connection)
end

function Connection:disconnect()
	if self.connected then
		self.connected = false

		for index, connection in pairs(self.signal._connections) do
			if connection == self then
				table.remove(self.signal._connections, index)
				return
			end
		end
	end
end

local Signal = {}
Signal.__index = Signal

function Signal.new()
	return setmetatable({
		_connections = {},
		_threads = {},
	}, Signal)
end

function Signal:fire(...)
	for _, connection in pairs(self._connections) do
		connection._handler(...)
	end

	for _, thread in pairs(self._threads) do
		coroutine.resume(thread, ...)
	end

	self._threads = {}
end

function Signal:connect(handler)
	local connection = Connection.new(self, handler)
	table.insert(self._connections, connection)
	return connection
end

function Signal:wait()
	table.insert(self._threads, coroutine.running())
	return coroutine.yield()
end

return Signal

end)() end,
    [20] = function()local wax,script,require=ImportGlobals(20)local ImportGlobals return (function(...)return function()
	local Signal = require(script.Parent.Signal)

	it("should invoke all connections, instantly", function()
		local signal = Signal.new()

		local a, b

		signal:connect(function(value)
			a = value
		end)

		signal:connect(function(value)
			b = value
		end)

		signal:fire("hello")

		expect(a).to.equal("hello")
		expect(b).to.equal("hello")
	end)

	it("should return values when :wait() is called", function()
		local signal = Signal.new()

		spawn(function()
			signal:fire(123, "hello")
		end)

		local a, b = signal:wait()

		expect(a).to.equal(123)
		expect(b).to.equal("hello")
	end)

	it("should properly handle disconnections", function()
		local signal = Signal.new()

		local didRun = false

		local connection = signal:connect(function()
			didRun = true
		end)
		connection:disconnect()

		signal:fire()
		expect(didRun).to.equal(false)
	end)
end

end)() end,
    [21] = function()local wax,script,require=ImportGlobals(21)local ImportGlobals return (function(...)local BaseMotor = require(script.Parent.BaseMotor)

local SingleMotor = setmetatable({}, BaseMotor)
SingleMotor.__index = SingleMotor

function SingleMotor.new(initialValue, useImplicitConnections)
	assert(initialValue, "Missing argument #1: initialValue")
	assert(typeof(initialValue) == "number", "initialValue must be a number!")

	local self = setmetatable(BaseMotor.new(), SingleMotor)

	if useImplicitConnections ~= nil then
		self._useImplicitConnections = useImplicitConnections
	else
		self._useImplicitConnections = true
	end

	self._goal = nil
	self._state = {
		complete = true,
		value = initialValue,
	}

	return self
end

function SingleMotor:step(deltaTime)
	if self._state.complete then
		return true
	end

	local newState = self._goal:step(self._state, deltaTime)

	self._state = newState
	self._onStep:fire(newState.value)

	if newState.complete then
		if self._useImplicitConnections then
			self:stop()
		end

		self._onComplete:fire()
	end

	return newState.complete
end

function SingleMotor:getValue()
	return self._state.value
end

function SingleMotor:setGoal(goal)
	self._state.complete = false
	self._goal = goal

	self._onStart:fire()

	if self._useImplicitConnections then
		self:start()
	end
end

function SingleMotor:__tostring()
	return "Motor(Single)"
end

return SingleMotor

end)() end,
    [22] = function()local wax,script,require=ImportGlobals(22)local ImportGlobals return (function(...)return function()
	local SingleMotor = require(script.Parent.SingleMotor)
	local Instant = require(script.Parent.Instant)

	it("should assign new state on step", function()
		local motor = SingleMotor.new(0, false)

		motor:setGoal(Instant.new(5))
		motor:step(1 / 60)

		expect(motor._state.complete).to.equal(true)
		expect(motor._state.value).to.equal(5)
	end)

	it("should invoke onComplete listeners when the goal is completed", function()
		local motor = SingleMotor.new(0, false)

		local didComplete = false
		motor:onComplete(function()
			didComplete = true
		end)

		motor:setGoal(Instant.new(5))
		motor:step(1 / 60)

		expect(didComplete).to.equal(true)
	end)

	it("should start when the goal is set", function()
		local motor = SingleMotor.new(0, false)

		local bool = false
		motor:onStart(function()
			bool = not bool
		end)

		motor:setGoal(Instant.new(5))

		expect(bool).to.equal(true)

		motor:setGoal(Instant.new(5))

		expect(bool).to.equal(false)
	end)
end

end)() end,
    [23] = function()local wax,script,require=ImportGlobals(23)local ImportGlobals return (function(...)local VELOCITY_THRESHOLD = 0.001
local POSITION_THRESHOLD = 0.001

local EPS = 0.0001

local Spring = {}
Spring.__index = Spring

function Spring.new(targetValue, options)
	assert(targetValue, "Missing argument #1: targetValue")
	options = options or {}

	return setmetatable({
		_targetValue = targetValue,
		_frequency = options.frequency or 4,
		_dampingRatio = options.dampingRatio or 1,
	}, Spring)
end

function Spring:step(state, dt)
	-- Copyright 2018 Parker Stebbins (parker@fractality.io)
	-- github.com/Fraktality/Spring
	-- Distributed under the MIT license

	local d = self._dampingRatio
	local f = self._frequency * 2 * math.pi
	local g = self._targetValue
	local p0 = state.value
	local v0 = state.velocity or 0

	local offset = p0 - g
	local decay = math.exp(-d * f * dt)

	local p1, v1

	if d == 1 then -- Critically damped
		p1 = (offset * (1 + f * dt) + v0 * dt) * decay + g
		v1 = (v0 * (1 - f * dt) - offset * (f * f * dt)) * decay
	elseif d < 1 then -- Underdamped
		local c = math.sqrt(1 - d * d)

		local i = math.cos(f * c * dt)
		local j = math.sin(f * c * dt)

		-- Damping ratios approaching 1 can cause division by small numbers.
		-- To fix that, group terms around z=j/c and find an approximation for z.
		-- Start with the definition of z:
		--    z = sin(dt*f*c)/c
		-- Substitute a=dt*f:
		--    z = sin(a*c)/c
		-- Take the Maclaurin expansion of z with respect to c:
		--    z = a - (a^3*c^2)/6 + (a^5*c^4)/120 + O(c^6)
		--    z ≈ a - (a^3*c^2)/6 + (a^5*c^4)/120
		-- Rewrite in Horner form:
		--    z ≈ a + ((a*a)*(c*c)*(c*c)/20 - c*c)*(a*a*a)/6

		local z
		if c > EPS then
			z = j / c
		else
			local a = dt * f
			z = a + ((a * a) * (c * c) * (c * c) / 20 - c * c) * (a * a * a) / 6
		end

		-- Frequencies approaching 0 present a similar problem.
		-- We want an approximation for y as f approaches 0, where:
		--    y = sin(dt*f*c)/(f*c)
		-- Substitute b=dt*c:
		--    y = sin(b*c)/b
		-- Now reapply the process from z.

		local y
		if f * c > EPS then
			y = j / (f * c)
		else
			local b = f * c
			y = dt + ((dt * dt) * (b * b) * (b * b) / 20 - b * b) * (dt * dt * dt) / 6
		end

		p1 = (offset * (i + d * z) + v0 * y) * decay + g
		v1 = (v0 * (i - z * d) - offset * (z * f)) * decay
	else -- Overdamped
		local c = math.sqrt(d * d - 1)

		local r1 = -f * (d - c)
		local r2 = -f * (d + c)

		local co2 = (v0 - offset * r1) / (2 * f * c)
		local co1 = offset - co2

		local e1 = co1 * math.exp(r1 * dt)
		local e2 = co2 * math.exp(r2 * dt)

		p1 = e1 + e2 + g
		v1 = e1 * r1 + e2 * r2
	end

	local complete = math.abs(v1) < VELOCITY_THRESHOLD and math.abs(p1 - g) < POSITION_THRESHOLD

	return {
		complete = complete,
		value = complete and g or p1,
		velocity = v1,
	}
end

return Spring

end)() end,
    [24] = function()local wax,script,require=ImportGlobals(24)local ImportGlobals return (function(...)return function()
	local SingleMotor = require(script.Parent.SingleMotor)
	local Spring = require(script.Parent.Spring)

	describe("completed state", function()
		local motor = SingleMotor.new(0, false)

		local goal = Spring.new(1, { frequency = 2, dampingRatio = 0.75 })
		motor:setGoal(goal)

		for _ = 1, 100 do
			motor:step(1 / 60)
		end

		it("should complete", function()
			expect(motor._state.complete).to.equal(true)
		end)

		it("should be exactly the goal value when completed", function()
			expect(motor._state.value).to.equal(1)
		end)
	end)

	it("should inherit velocity", function()
		local motor = SingleMotor.new(0, false)
		motor._state = { complete = false, value = 0, velocity = -5 }

		local goal = Spring.new(1, { frequency = 2, dampingRatio = 1 })

		motor:setGoal(goal)
		motor:step(1 / 60)

		expect(motor._state.velocity < 0).to.equal(true)
	end)
end

end)() end,
    [25] = function()local wax,script,require=ImportGlobals(25)local ImportGlobals return (function(...)local function isMotor(value)
	local motorType = tostring(value):match("^Motor%((.+)%)$")

	if motorType then
		return true, motorType
	else
		return false
	end
end

return isMotor

end)() end,
    [26] = function()local wax,script,require=ImportGlobals(26)local ImportGlobals return (function(...)return function()
	local isMotor = require(script.Parent.isMotor)

	local SingleMotor = require(script.Parent.SingleMotor)
	local GroupMotor = require(script.Parent.GroupMotor)

	local singleMotor = SingleMotor.new(0)
	local groupMotor = GroupMotor.new({})

	it("should properly detect motors", function()
		expect(isMotor(singleMotor)).to.equal(true)
		expect(isMotor(groupMotor)).to.equal(true)
	end)

	it("shouldn't detect things that aren't motors", function()
		expect(isMotor({})).to.equal(false)
	end)

	it("should return the proper motor type", function()
		local _, singleMotorType = isMotor(singleMotor)
		local _, groupMotorType = isMotor(groupMotor)

		expect(singleMotorType).to.equal("Single")
		expect(groupMotorType).to.equal("Group")
	end)
end

end)() end,
    [28] = function()local wax,script,require=ImportGlobals(28)local ImportGlobals return (function(...)local HttpService = cloneref(game:GetService("HttpService"))

local configs = require(script.Parent.configs.panda)

local LibraryURL = "https://raw.githubusercontent.com/Panda-Repositories/PandaKS_Libraries/refs/heads/main/library/LuaLib/ROBLOX/PandaSVALLib.lua"
local PandaAuth = loadstring(game:HttpGet(LibraryURL))()

local KeyManager = {}

-- Initialize PandaAuth Configuration
PandaAuth:Initialize(configs)

local playerID = game.Players.LocalPlayer.UserId

-- Save a key to file
function KeyManager:SaveKey(key)
    local folderPath = "Pelinda Data/" .. configs.DisplayName
    local filePath = folderPath .. "/Key.txt"

    -- Ensure the folder exists
    if not isfolder(folderPath) then
        makefolder(folderPath)
    end

    -- Save the key to file
    writefile(filePath, key)
    print("[FileSystem] Key saved for Player ID:", playerID)
end

-- Check key validity with optional parameter
function KeyManager:CheckKey(key)
    local folderPath = "Pelinda Data/" .. configs.DisplayName
    local filePath = folderPath .. "/Key.txt"

    -- Ensure the folder exists
    if not isfolder(folderPath) then
        makefolder(folderPath)
    end

    -- If a key is provided
    if key then
        if PandaAuth:ValidateKey(key) then
            print("[Auth] Provided key is valid.")
            self:SaveKey(key) -- Save the new valid key
            return true
        else
            print("[Auth] Provided key is invalid.")
            return false
        end
    end

    -- If no key is provided, check saved key
    if isfile(filePath) then
        local savedKey = readfile(filePath)
        if PandaAuth:ValidateKey(savedKey) then
            print("[Auth] Player ID", playerID, "has a valid premium key.")
            return true
        else
            print("[Auth] Player ID", playerID, "has an invalid or expired key.")
            return false
        end
    else
        print("[FileSystem] No key found for Player ID:", playerID)
        return false
    end
end

function KeyManager:GetKey()
    return PandaAuth:GetKey()
end

return KeyManager

end)() end,
    [30] = function()local wax,script,require=ImportGlobals(30)local ImportGlobals return (function(...)return {
    Service = "spectrum",          -- Your service name
    DisplayName = "Project Spectrum", -- Display name
    API_Key = "UF108RTaLAE3i3YS",         -- Your API key
    IsDebug = true,                   -- Enable debug mode to see detailed logs (optional)
    Allow_BlacklistUsers = false,     -- Disable blacklisted users (optional)
    Save_Key = true,                 -- Do not save keys to user data (optional)
    DiagnosticLogs = true             -- Enable diagnostic logs (optional)
}
end)() end
} -- [RefId] = Closure

-- Holds the actual DOM data
local ObjectTree = {
    {
        1,
        2,
        {
            "ZPU"
        },
        {
            {
                3,
                1,
                {
                    "modules"
                },
                {
                    {
                        27,
                        1,
                        {
                            "Key"
                        },
                        {
                            {
                                29,
                                1,
                                {
                                    "configs"
                                },
                                {
                                    {
                                        30,
                                        2,
                                        {
                                            "panda"
                                        }
                                    }
                                }
                            },
                            {
                                28,
                                2,
                                {
                                    "ValidateKey"
                                }
                            }
                        }
                    },
                    {
                        4,
                        2,
                        {
                            "Acrylic"
                        },
                        {
                            {
                                5,
                                2,
                                {
                                    "AcrylicBlur"
                                }
                            },
                            {
                                8,
                                2,
                                {
                                    "Utils"
                                }
                            },
                            {
                                6,
                                2,
                                {
                                    "AcrylicPaint"
                                }
                            },
                            {
                                7,
                                2,
                                {
                                    "CreateAcrylic"
                                }
                            }
                        }
                    },
                    {
                        9,
                        2,
                        {
                            "Creator"
                        }
                    },
                    {
                        10,
                        2,
                        {
                            "Flipper"
                        },
                        {
                            {
                                11,
                                2,
                                {
                                    "BaseMotor"
                                }
                            },
                            {
                                15,
                                2,
                                {
                                    "Instant"
                                }
                            },
                            {
                                21,
                                2,
                                {
                                    "SingleMotor"
                                }
                            },
                            {
                                23,
                                2,
                                {
                                    "Spring"
                                }
                            },
                            {
                                25,
                                2,
                                {
                                    "isMotor"
                                }
                            },
                            {
                                26,
                                2,
                                {
                                    "isMotor.spec"
                                }
                            },
                            {
                                24,
                                2,
                                {
                                    "Spring.spec"
                                }
                            },
                            {
                                14,
                                2,
                                {
                                    "GroupMotor.spec"
                                }
                            },
                            {
                                12,
                                2,
                                {
                                    "BaseMotor.spec"
                                }
                            },
                            {
                                17,
                                2,
                                {
                                    "Linear"
                                }
                            },
                            {
                                22,
                                2,
                                {
                                    "SingleMotor.spec"
                                }
                            },
                            {
                                19,
                                2,
                                {
                                    "Signal"
                                }
                            },
                            {
                                16,
                                2,
                                {
                                    "Instant.spec"
                                }
                            },
                            {
                                18,
                                2,
                                {
                                    "Linear.spec"
                                }
                            },
                            {
                                13,
                                2,
                                {
                                    "GroupMotor"
                                }
                            },
                            {
                                20,
                                2,
                                {
                                    "Signal.spec"
                                }
                            }
                        }
                    }
                }
            },
            {
                2,
                2,
                {
                    "Window"
                }
            }
        }
    }
}

-- Line offsets for debugging (only included when minifyTables is false)
local LineOffsets = {
    8,
    29,
    [4] = 996,
    [5] = 1049,
    [6] = 1168,
    [7] = 1289,
    [8] = 1316,
    [9] = 1333,
    [10] = 1387,
    [11] = 1401,
    [12] = 1458,
    [13] = 1499,
    [14] = 1611,
    [15] = 1696,
    [16] = 1715,
    [17] = 1727,
    [18] = 1765,
    [19] = 1824,
    [20] = 1884,
    [21] = 1935,
    [22] = 2004,
    [23] = 2051,
    [24] = 2160,
    [25] = 2197,
    [26] = 2210,
    [28] = 2238,
    [30] = 2312
}

-- Misc AOT variable imports
local WaxVersion = "0.4.1"
local EnvName = "WaxRuntime"

-- ++++++++ RUNTIME IMPL BELOW ++++++++ --

-- Localizing certain libraries and built-ins for runtime efficiency
local string, task, setmetatable, error, next, table, unpack, coroutine, script, type, require, pcall, tostring, tonumber, _VERSION =
      string, task, setmetatable, error, next, table, unpack, coroutine, script, type, require, pcall, tostring, tonumber, _VERSION

local table_insert = table.insert
local table_remove = table.remove
local table_freeze = table.freeze or function(t) return t end -- lol

local coroutine_wrap = coroutine.wrap

local string_sub = string.sub
local string_match = string.match
local string_gmatch = string.gmatch

-- The Lune runtime has its own `task` impl, but it must be imported by its builtin
-- module path, "@lune/task"
if _VERSION and string_sub(_VERSION, 1, 4) == "Lune" then
    local RequireSuccess, LuneTaskLib = pcall(require, "@lune/task")
    if RequireSuccess and LuneTaskLib then
        task = LuneTaskLib
    end
end

local task_defer = task and task.defer

-- If we're not running on the Roblox engine, we won't have a `task` global
local Defer = task_defer or function(f, ...)
    coroutine_wrap(f)(...)
end

-- ClassName "IDs"
local ClassNameIdBindings = {
    [1] = "Folder",
    [2] = "ModuleScript",
    [3] = "Script",
    [4] = "LocalScript",
    [5] = "StringValue",
}

local RefBindings = {} -- [RefId] = RealObject

local ScriptClosures = {}
local ScriptClosureRefIds = {} -- [ScriptClosure] = RefId
local StoredModuleValues = {}
local ScriptsToRun = {}

-- wax.shared __index/__newindex
local SharedEnvironment = {}

-- We're creating 'fake' instance refs soley for traversal of the DOM for require() compatibility
-- It's meant to be as lazy as possible
local RefChildren = {} -- [Ref] = {ChildrenRef, ...}

-- Implemented instance methods
local InstanceMethods = {
    GetFullName = { {}, function(self)
        local Path = self.Name
        local ObjectPointer = self.Parent

        while ObjectPointer do
            Path = ObjectPointer.Name .. "." .. Path

            -- Move up the DOM (parent will be nil at the end, and this while loop will stop)
            ObjectPointer = ObjectPointer.Parent
        end

        return Path
    end},

    GetChildren = { {}, function(self)
        local ReturnArray = {}

        for Child in next, RefChildren[self] do
            table_insert(ReturnArray, Child)
        end

        return ReturnArray
    end},

    GetDescendants = { {}, function(self)
        local ReturnArray = {}

        for Child in next, RefChildren[self] do
            table_insert(ReturnArray, Child)

            for _, Descendant in next, Child:GetDescendants() do
                table_insert(ReturnArray, Descendant)
            end
        end

        return ReturnArray
    end},

    FindFirstChild = { {"string", "boolean?"}, function(self, name, recursive)
        local Children = RefChildren[self]

        for Child in next, Children do
            if Child.Name == name then
                return Child
            end
        end

        if recursive then
            for Child in next, Children do
                -- Yeah, Roblox follows this behavior- instead of searching the entire base of a
                -- ref first, the engine uses a direct recursive call
                return Child:FindFirstChild(name, true)
            end
        end
    end},

    FindFirstAncestor = { {"string"}, function(self, name)
        local RefPointer = self.Parent
        while RefPointer do
            if RefPointer.Name == name then
                return RefPointer
            end

            RefPointer = RefPointer.Parent
        end
    end},

    -- Just to implement for traversal usage
    WaitForChild = { {"string", "number?"}, function(self, name)
        return self:FindFirstChild(name)
    end},
}

-- "Proxies" to instance methods, with err checks etc
local InstanceMethodProxies = {}
for MethodName, MethodObject in next, InstanceMethods do
    local Types = MethodObject[1]
    local Method = MethodObject[2]

    local EvaluatedTypeInfo = {}
    for ArgIndex, TypeInfo in next, Types do
        local ExpectedType, IsOptional = string_match(TypeInfo, "^([^%?]+)(%??)")
        EvaluatedTypeInfo[ArgIndex] = {ExpectedType, IsOptional}
    end

    InstanceMethodProxies[MethodName] = function(self, ...)
        if not RefChildren[self] then
            error("Expected ':' not '.' calling member function " .. MethodName, 2)
        end

        local Args = {...}
        for ArgIndex, TypeInfo in next, EvaluatedTypeInfo do
            local RealArg = Args[ArgIndex]
            local RealArgType = type(RealArg)
            local ExpectedType, IsOptional = TypeInfo[1], TypeInfo[2]

            if RealArg == nil and not IsOptional then
                error("Argument " .. RealArg .. " missing or nil", 3)
            end

            if ExpectedType ~= "any" and RealArgType ~= ExpectedType and not (RealArgType == "nil" and IsOptional) then
                error("Argument " .. ArgIndex .. " expects type \"" .. ExpectedType .. "\", got \"" .. RealArgType .. "\"", 2)
            end
        end

        return Method(self, ...)
    end
end

local function CreateRef(className, name, parent)
    -- `name` and `parent` can also be set later by the init script if they're absent

    -- Extras
    local StringValue_Value

    -- Will be set to RefChildren later aswell
    local Children = setmetatable({}, {__mode = "k"})

    -- Err funcs
    local function InvalidMember(member)
        error(member .. " is not a valid (virtual) member of " .. className .. " \"" .. name .. "\"", 3)
    end
    local function ReadOnlyProperty(property)
        error("Unable to assign (virtual) property " .. property .. ". Property is read only", 3)
    end

    local Ref = {}
    local RefMetatable = {}

    RefMetatable.__metatable = false

    RefMetatable.__index = function(_, index)
        if index == "ClassName" then -- First check "properties"
            return className
        elseif index == "Name" then
            return name
        elseif index == "Parent" then
            return parent
        elseif className == "StringValue" and index == "Value" then
            -- Supporting StringValue.Value for Rojo .txt file conv
            return StringValue_Value
        else -- Lastly, check "methods"
            local InstanceMethod = InstanceMethodProxies[index]

            if InstanceMethod then
                return InstanceMethod
            end
        end

        -- Next we'll look thru child refs
        for Child in next, Children do
            if Child.Name == index then
                return Child
            end
        end

        -- At this point, no member was found; this is the same err format as Roblox
        InvalidMember(index)
    end

    RefMetatable.__newindex = function(_, index, value)
        -- __newindex is only for props fyi
        if index == "ClassName" then
            ReadOnlyProperty(index)
        elseif index == "Name" then
            name = value
        elseif index == "Parent" then
            -- We'll just ignore the process if it's trying to set itself
            if value == Ref then
                return
            end

            if parent ~= nil then
                -- Remove this ref from the CURRENT parent
                RefChildren[parent][Ref] = nil
            end

            parent = value

            if value ~= nil then
                -- And NOW we're setting the new parent
                RefChildren[value][Ref] = true
            end
        elseif className == "StringValue" and index == "Value" then
            -- Supporting StringValue.Value for Rojo .txt file conv
            StringValue_Value = value
        else
            -- Same err as __index when no member is found
            InvalidMember(index)
        end
    end

    RefMetatable.__tostring = function()
        return name
    end

    setmetatable(Ref, RefMetatable)

    RefChildren[Ref] = Children

    if parent ~= nil then
        RefChildren[parent][Ref] = true
    end

    return Ref
end

-- Create real ref DOM from object tree
local function CreateRefFromObject(object, parent)
    local RefId = object[1]
    local ClassNameId = object[2]
    local Properties = object[3] -- Optional
    local Children = object[4] -- Optional

    local ClassName = ClassNameIdBindings[ClassNameId]

    local Name = Properties and table_remove(Properties, 1) or ClassName

    local Ref = CreateRef(ClassName, Name, parent) -- 3rd arg may be nil if this is from root
    RefBindings[RefId] = Ref

    if Properties then
        for PropertyName, PropertyValue in next, Properties do
            Ref[PropertyName] = PropertyValue
        end
    end

    if Children then
        for _, ChildObject in next, Children do
            CreateRefFromObject(ChildObject, Ref)
        end
    end

    return Ref
end

local RealObjectRoot = CreateRef("Folder", "[" .. EnvName .. "]")
for _, Object in next, ObjectTree do
    CreateRefFromObject(Object, RealObjectRoot)
end

-- Now we'll set script closure refs and check if they should be ran as a BaseScript
for RefId, Closure in next, ClosureBindings do
    local Ref = RefBindings[RefId]

    ScriptClosures[Ref] = Closure
    ScriptClosureRefIds[Ref] = RefId

    local ClassName = Ref.ClassName
    if ClassName == "LocalScript" or ClassName == "Script" then
        table_insert(ScriptsToRun, Ref)
    end
end

local function LoadScript(scriptRef)
    local ScriptClassName = scriptRef.ClassName

    -- First we'll check for a cached module value (packed into a tbl)
    local StoredModuleValue = StoredModuleValues[scriptRef]
    if StoredModuleValue and ScriptClassName == "ModuleScript" then
        return unpack(StoredModuleValue)
    end

    local Closure = ScriptClosures[scriptRef]

    local function FormatError(originalErrorMessage)
        originalErrorMessage = tostring(originalErrorMessage)

        local VirtualFullName = scriptRef:GetFullName()

        -- Check for vanilla/Roblox format
        local OriginalErrorLine, BaseErrorMessage = string_match(originalErrorMessage, "[^:]+:(%d+): (.+)")

        if not OriginalErrorLine or not LineOffsets then
            return VirtualFullName .. ":*: " .. (BaseErrorMessage or originalErrorMessage)
        end

        OriginalErrorLine = tonumber(OriginalErrorLine)

        local RefId = ScriptClosureRefIds[scriptRef]
        local LineOffset = LineOffsets[RefId]

        local RealErrorLine = OriginalErrorLine - LineOffset + 1
        if RealErrorLine < 0 then
            RealErrorLine = "?"
        end

        return VirtualFullName .. ":" .. RealErrorLine .. ": " .. BaseErrorMessage
    end

    -- If it's a BaseScript, we'll just run it directly!
    if ScriptClassName == "LocalScript" or ScriptClassName == "Script" then
        local RunSuccess, ErrorMessage = pcall(Closure)
        if not RunSuccess then
            error(FormatError(ErrorMessage), 0)
        end
    else
        local PCallReturn = {pcall(Closure)}

        local RunSuccess = table_remove(PCallReturn, 1)
        if not RunSuccess then
            local ErrorMessage = table_remove(PCallReturn, 1)
            error(FormatError(ErrorMessage), 0)
        end

        StoredModuleValues[scriptRef] = PCallReturn
        return unpack(PCallReturn)
    end
end

-- We'll assign the actual func from the top of this output for flattening user globals at runtime
-- Returns (in a tuple order): wax, script, require
function ImportGlobals(refId)
    local ScriptRef = RefBindings[refId]

    local function RealCall(f, ...)
        local PCallReturn = {pcall(f, ...)}

        local CallSuccess = table_remove(PCallReturn, 1)
        if not CallSuccess then
            error(PCallReturn[1], 3)
        end

        return unpack(PCallReturn)
    end

    -- `wax.shared` index
    local WaxShared = table_freeze(setmetatable({}, {
        __index = SharedEnvironment,
        __newindex = function(_, index, value)
            SharedEnvironment[index] = value
        end,
        __len = function()
            return #SharedEnvironment
        end,
        __iter = function()
            return next, SharedEnvironment
        end,
    }))

    local Global_wax = table_freeze({
        -- From AOT variable imports
        version = WaxVersion,
        envname = EnvName,

        shared = WaxShared,

        -- "Real" globals instead of the env set ones
        script = script,
        require = require,
    })

    local Global_script = ScriptRef

    local function Global_require(module, ...)
        local ModuleArgType = type(module)

        local ErrorNonModuleScript = "Attempted to call require with a non-ModuleScript"
        local ErrorSelfRequire = "Attempted to call require with self"

        if ModuleArgType == "table" and RefChildren[module]  then
            if module.ClassName ~= "ModuleScript" then
                error(ErrorNonModuleScript, 2)
            elseif module == ScriptRef then
                error(ErrorSelfRequire, 2)
            end

            return LoadScript(module)
        elseif ModuleArgType == "string" and string_sub(module, 1, 1) ~= "@" then
            -- The control flow on this SUCKS

            if #module == 0 then
                error("Attempted to call require with empty string", 2)
            end

            local CurrentRefPointer = ScriptRef

            if string_sub(module, 1, 1) == "/" then
                CurrentRefPointer = RealObjectRoot
            elseif string_sub(module, 1, 2) == "./" then
                module = string_sub(module, 3)
            end

            local PreviousPathMatch
            for PathMatch in string_gmatch(module, "([^/]*)/?") do
                local RealIndex = PathMatch
                if PathMatch == ".." then
                    RealIndex = "Parent"
                end

                -- Don't advance dir if it's just another "/" either
                if RealIndex ~= "" then
                    local ResultRef = CurrentRefPointer:FindFirstChild(RealIndex)
                    if not ResultRef then
                        local CurrentRefParent = CurrentRefPointer.Parent
                        if CurrentRefParent then
                            ResultRef = CurrentRefParent:FindFirstChild(RealIndex)
                        end
                    end

                    if ResultRef then
                        CurrentRefPointer = ResultRef
                    elseif PathMatch ~= PreviousPathMatch and PathMatch ~= "init" and PathMatch ~= "init.server" and PathMatch ~= "init.client" then
                        error("Virtual script path \"" .. module .. "\" not found", 2)
                    end
                end

                -- For possible checks next cycle
                PreviousPathMatch = PathMatch
            end

            if CurrentRefPointer.ClassName ~= "ModuleScript" then
                error(ErrorNonModuleScript, 2)
            elseif CurrentRefPointer == ScriptRef then
                error(ErrorSelfRequire, 2)
            end

            return LoadScript(CurrentRefPointer)
        end

        return RealCall(require, module, ...)
    end

    -- Now, return flattened globals ready for direct runtime exec
    return Global_wax, Global_script, Global_require
end

for _, ScriptRef in next, ScriptsToRun do
    Defer(LoadScript, ScriptRef)
end

-- AoT adjustment: Load init module (MainModule behavior)
return LoadScript(RealObjectRoot:GetChildren()[1])
