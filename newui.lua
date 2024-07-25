local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "NotesGui"
screenGui.Parent = playerGui

-- Create Sidebar Frame
local sidebarFrame = Instance.new("Frame")
sidebarFrame.Name = "SidebarFrame"
sidebarFrame.Size = UDim2.new(0.2, 0, 1, 0)
sidebarFrame.Position = UDim2.new(0, 0, 0, 0)
sidebarFrame.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
sidebarFrame.Parent = screenGui

-- Create All Notes Section
local allNotesLabel = Instance.new("TextLabel")
allNotesLabel.Name = "AllNotesLabel"
allNotesLabel.Size = UDim2.new(1, 0, 0, 50)
allNotesLabel.Position = UDim2.new(0, 0, 0, 0)
allNotesLabel.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
allNotesLabel.Text = "All Notes"
allNotesLabel.TextSize = 24
allNotesLabel.Font = Enum.Font.Gotham
allNotesLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
allNotesLabel.Parent = sidebarFrame

-- Create Notes List
local notesList = Instance.new("ScrollingFrame")
notesList.Name = "NotesList"
notesList.Size = UDim2.new(1, 0, 1, -50)
notesList.Position = UDim2.new(0, 0, 0, 50)
notesList.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
notesList.CanvasSize = UDim2.new(0, 0, 2, 0)
notesList.ScrollBarThickness = 8
notesList.Parent = sidebarFrame

-- Function to create note entries
local function createNoteEntry(title, description, time)
    local noteFrame = Instance.new("Frame")
    noteFrame.Size = UDim2.new(1, -10, 0, 100)
    noteFrame.Position = UDim2.new(0, 5, 0, 0)
    noteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    noteFrame.BorderSizePixel = 0
    noteFrame.Parent = notesList

    local noteTitle = Instance.new("TextLabel")
    noteTitle.Size = UDim2.new(1, -10, 0, 30)
    noteTitle.Position = UDim2.new(0, 5, 0, 5)
    noteTitle.BackgroundTransparency = 1
    noteTitle.Text = title
    noteTitle.TextSize = 20
    noteTitle.Font = Enum.Font.Gotham
    noteTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
    noteTitle.TextXAlignment = Enum.TextXAlignment.Left
    noteTitle.Parent = noteFrame

    local noteDescription = Instance.new("TextLabel")
    noteDescription.Size = UDim2.new(1, -10, 0, 40)
    noteDescription.Position = UDim2.new(0, 5, 0, 40)
    noteDescription.BackgroundTransparency = 1
    noteDescription.Text = description
    noteDescription.TextSize = 16
    noteDescription.Font = Enum.Font.Gotham
    noteDescription.TextColor3 = Color3.fromRGB(100, 100, 100)
    noteDescription.TextXAlignment = Enum.TextXAlignment.Left
    noteDescription.TextYAlignment = Enum.TextYAlignment.Top
    noteDescription.TextWrapped = true
    noteDescription.Parent = noteFrame

    local noteTime = Instance.new("TextLabel")
    noteTime.Size = UDim2.new(0, 50, 0, 20)
    noteTime.Position = UDim2.new(1, -55, 1, -25)
    noteTime.BackgroundTransparency = 1
    noteTime.Text = time
    noteTime.TextSize = 14
    noteTime.Font = Enum.Font.Gotham
    noteTime.TextColor3 = Color3.fromRGB(150, 150, 150)
    noteTime.TextXAlignment = Enum.TextXAlignment.Right
    noteTime.Parent = noteFrame
end

-- Example notes
createNoteEntry("Salsile project brief", "No, going all perfect! Let me show you images of the project.", "4 mins")
createNoteEntry("Design management", "We have to manage all our design project everyday in one tool.", "8 mins")
createNoteEntry("Daily task due", "There is always some daily we have in our hand which we have to done.", "6 mins")

-- Create Main Note Display Frame
local mainNoteFrame = Instance.new("Frame")
mainNoteFrame.Name = "MainNoteFrame"
mainNoteFrame.Size = UDim2.new(0.8, 0, 1, 0)
mainNoteFrame.Position = UDim2.new(0.2, 0, 0, 0)
mainNoteFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainNoteFrame.Parent = screenGui

-- Main Note Title
local mainNoteTitle = Instance.new("TextLabel")
mainNoteTitle.Name = "MainNoteTitle"
mainNoteTitle.Size = UDim2.new(1, -20, 0, 50)
mainNoteTitle.Position = UDim2.new(0, 10, 0, 10)
mainNoteTitle.BackgroundTransparency = 1
mainNoteTitle.Text = "Salsile Project Brief"
mainNoteTitle.TextSize = 24
mainNoteTitle.Font = Enum.Font.Gotham
mainNoteTitle.TextColor3 = Color3.fromRGB(0, 0, 0)
mainNoteTitle.TextXAlignment = Enum.TextXAlignment.Left
mainNoteTitle.Parent = mainNoteFrame

-- Main Note Content
local mainNoteContent = Instance.new("TextLabel")
mainNoteContent.Name = "MainNoteContent"
mainNoteContent.Size = UDim2.new(1, -20, 0, 200)
mainNoteContent.Position = UDim2.new(0, 10, 0, 70)
mainNoteContent.BackgroundTransparency = 1
mainNoteContent.Text = [[Salsile Inc. is a well-established fashion retailer specializing in high-quality clothing and accessories for men and women. The client is looking to revamp their existing e-commerce website to enhance user experience, improve overall aesthetics, and increase online sales. The new design should reflect their brand identity as a modern, and customer-centric fashion store.]]
mainNoteContent.TextSize = 18
mainNoteContent.Font = Enum.Font.Gotham
mainNoteContent.TextColor3 = Color3.fromRGB(50, 50, 50)
mainNoteContent.TextXAlignment = Enum.TextXAlignment.Left
mainNoteContent.TextYAlignment = Enum.TextYAlignment.Top
mainNoteContent.TextWrapped = true
mainNoteContent.Parent = mainNoteFrame

-- Edit Button
local editButton = Instance.new("TextButton")
editButton.Name = "EditButton"
editButton.Size = UDim2.new(0, 100, 0, 40)
editButton.Position = UDim2.new(1, -110, 0, 10)
editButton.BackgroundColor3 = Color3.fromRGB(180, 180, 255)
editButton.Text = "Edit"
editButton.TextSize = 18
editButton.Font = Enum.Font.Gotham
editButton.TextColor3 = Color3.fromRGB(0, 0, 0)
editButton.Parent = mainNoteFrame

-- Save Button
local saveButton = Instance.new("TextButton")
saveButton.Name = "SaveButton"
saveButton.Size = UDim2.new(0, 100, 0, 40)
saveButton.Position = UDim2.new(1, -110, 0, 220)
saveButton.BackgroundColor3 = Color3.fromRGB(180, 180, 255)
saveButton.Text = "Save"
saveButton.TextSize = 18
saveButton.Font = Enum.Font.Gotham
saveButton.TextColor3 = Color3.fromRGB(0, 0, 0)
saveButton.Parent = mainNoteFrame

-- To-Do List Frame
local todoListFrame = Instance.new("Frame")
todoListFrame.Name = "ToDoListFrame"
todoListFrame.Size = UDim2.new(1, -20, 0, 60)
todoListFrame.Position = UDim2.new(0, 10, 0, 280)
todoListFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
todoListFrame.BorderSizePixel = 0
todoListFrame.Parent = mainNoteFrame

-- To-Do Checkbox
local todoCheckBox = Instance.new("TextButton")
todoCheckBox.Name = "ToDoCheckBox"
todoCheckBox.Size = UDim2.new(0, 20, 0, 20)
todoCheckBox.Position = UDim2.new(0, 5, 0, 20)
todoCheckBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
todoCheckBox.Text = ""
todoCheckBox.Parent = todoListFrame

local todoCheckBoxBorder = Instance.new("UICorner")
todoCheckBoxBorder.CornerRadius = UDim.new(0, 5)
todoCheckBoxBorder.Parent = todoCheckBox

-- To-Do Label
local todoLabel = Instance.new("TextLabel")
todoLabel.Name = "ToDoLabel"
todoLabel.Size = UDim2.new(1, -35, 1, 0)
todoLabel.Position = UDim2.new(0, 30, 0, 0)
todoLabel.BackgroundTransparency = 1
todoLabel.Text = "Prepare for the design meeting"
todoLabel.TextSize = 18
todoLabel.Font = Enum.Font.Gotham
todoLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
todoLabel.TextXAlignment = Enum.TextXAlignment.Left
todoLabel.Parent = todoListFrame

-- To-Do Status Label
local todoStatusLabel = Instance.new("TextLabel")
todoStatusLabel.Name = "ToDoStatusLabel"
todoStatusLabel.Size = UDim2.new(0, 100, 0, 20)
todoStatusLabel.Position = UDim2.new(1, -105, 0, 20)
todoStatusLabel.BackgroundTransparency = 1
todoStatusLabel.Text = "Pending"
todoStatusLabel.TextSize = 14
todoStatusLabel.Font = Enum.Font.Gotham
todoStatusLabel.TextColor3 = Color3.fromRGB(255, 165, 0)
todoStatusLabel.TextXAlignment = Enum.TextXAlignment.Right
todoStatusLabel.Parent = todoListFrame

-- To-Do Time Label
local todoTimeLabel = Instance.new("TextLabel")
todoTimeLabel.Name = "ToDoTimeLabel"
todoTimeLabel.Size = UDim2.new(0, 100, 0, 20)
todoTimeLabel.Position = UDim2.new(1, -105, 1, -20)
todoTimeLabel.BackgroundTransparency = 1
todoTimeLabel.Text = "10:30 AM"
todoTimeLabel.TextSize = 14
todoTimeLabel.Font = Enum.Font.Gotham
todoTimeLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
todoTimeLabel.TextXAlignment = Enum.TextXAlignment.Right
todoTimeLabel.Parent = todoListFrame