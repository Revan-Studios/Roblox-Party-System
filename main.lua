while true do
	wait();
	if game.Players.LocalPlayer.Character then
		break;
	end;
end;
game.ReplicatedStorage.Parts.Remotes.Create.OnClientEvent:Connect(function()
	local l__LocalPlayer__1 = game.Players.LocalPlayer;
	if l__LocalPlayer__1.PlayerGui:FindFirstChild("Party") then
		l__LocalPlayer__1.PlayerGui.Party.Background.Leader.Text = l__LocalPlayer__1.Name;
	end;
end);
game.ReplicatedStorage.Parts.Remotes.LeaderJoin.OnClientEvent:Connect(function()

end);
local u1 = true;
local u2 = false;
game.ReplicatedStorage.Parts.Remotes.Leave.OnClientEvent:Connect(function()
	u1 = false;
	u2 = true;
	wait(5);
	u1 = true;
end);
spawn(function()
	while wait() do
		if u2 == true then
			u2 = false;
			print("Running");
			local l__LocalPlayer__2 = game.Players.LocalPlayer;
			if l__LocalPlayer__2.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__2.PlayerGui:FindFirstChild("Party").Team.Leader.Value) == nil then
				game.ReplicatedStorage.Leave1:FireServer();
			end;
			if l__LocalPlayer__2.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__2.PlayerGui:FindFirstChild("Party").Team.Second.Value) == nil then
				game.ReplicatedStorage.Leave2:FireServer();
			end;
			if l__LocalPlayer__2.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__2.PlayerGui:FindFirstChild("Party").Team.Third.Value) == nil then
				game.ReplicatedStorage.Leave3:FireServer();
			end;
			if l__LocalPlayer__2.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__2.PlayerGui:FindFirstChild("Party").Team.Fourth.Value) == nil then
				game.ReplicatedStorage.Leave4:FireServer();
			end;
		end;
		if u1 == true then
			local l__LocalPlayer__3 = game.Players.LocalPlayer;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") then
				l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Background.Leader.Text = l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Team.Leader.Value;
				l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Background.Second.Text = l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Team.Second.Value;
				l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Background.Third.Text = l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Team.Third.Value;
				l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Background.Fourth.Text = l__LocalPlayer__3.PlayerGui:FindFirstChild("Party").Team.Fourth.Value;
			end;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text) then
				l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Level.Text = game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text).Stats.Level.Value;
				if game.workspace.Players:WaitForChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text):WaitForChild("Head"):FindFirstChild("Leader") == nil and game.Players.LocalPlayer.PlayerGui:FindFirstChild("InviteUI") == nil then
					local v4 = game.ReplicatedStorage.Parts.Party.Leader:Clone();
					v4.Parent = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text).Head;
					v4.CFrame = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text).HumanoidRootPart.CFrame * CFrame.new(0, 3.5, 0);
					local v5 = Instance.new("WeldConstraint");
					v5.Parent = v4;
					v5.Part0 = v4;
					v5.Part1 = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text).HumanoidRootPart;
				end;
				if game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text) and game.workspace.Players:WaitForChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text):WaitForChild("Head"):FindFirstChild("Second") == nil and game.Players.LocalPlayer.PlayerGui:FindFirstChild("InviteUI") == nil then
					local v6 = game.ReplicatedStorage.Parts.Party.Second:Clone();
					v6.Parent = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text).Head;
					v6.CFrame = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text).HumanoidRootPart.CFrame * CFrame.new(0, 3.5, 0);
					local v7 = Instance.new("WeldConstraint");
					v7.Parent = v6;
					v7.Part0 = v6;
					v7.Part1 = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text).HumanoidRootPart;
				end;
				if game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text) and game.workspace.Players:WaitForChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text):WaitForChild("Head"):FindFirstChild("Third") == nil and game.Players.LocalPlayer.PlayerGui:FindFirstChild("InviteUI") == nil then
					local v8 = game.ReplicatedStorage.Parts.Party.Third:Clone();
					v8.Parent = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text).Head;
					v8.CFrame = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text).HumanoidRootPart.CFrame * CFrame.new(0, 3.5, 0);
					local v9 = Instance.new("WeldConstraint");
					v9.Parent = v8;
					v9.Part0 = v8;
					v9.Part1 = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text).HumanoidRootPart;
				end;
				if game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text) and game.workspace.Players:WaitForChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text):WaitForChild("Head"):FindFirstChild("Fourth") == nil and game.Players.LocalPlayer.PlayerGui:FindFirstChild("InviteUI") == nil then
					local v10 = game.ReplicatedStorage.Parts.Party.Fourth:Clone();
					v10.Parent = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text).Head;
					v10.CFrame = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text).HumanoidRootPart.CFrame * CFrame.new(0, 3.5, 0);
					local v11 = Instance.new("WeldConstraint");
					v11.Parent = v10;
					v11.Part0 = v10;
					v11.Part1 = game.workspace.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text).HumanoidRootPart;
				end;
			end;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text) then
				l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Level.Text = game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text).Stats.Level.Value;
			elseif l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Text) == nil then
				l__LocalPlayer__3.PlayerGui.Party.Background.Leader.Level.Text = "N/A";
			end;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text) then
				l__LocalPlayer__3.PlayerGui.Party.Background.Second.Level.Text = game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text).Stats.Level.Value;
			elseif l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Second.Text) == nil then
				l__LocalPlayer__3.PlayerGui.Party.Background.Second.Level.Text = "N/A";
			end;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text) then
				l__LocalPlayer__3.PlayerGui.Party.Background.Third.Level.Text = game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text).Stats.Level.Value;
			elseif l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Third.Text) == nil then
				l__LocalPlayer__3.PlayerGui.Party.Background.Third.Level.Text = "N/A";
			end;
			if l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text) then
				l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Level.Text = game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text).Stats.Level.Value;
			elseif l__LocalPlayer__3.PlayerGui:FindFirstChild("Party") and game.Players:FindFirstChild(l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Text) == nil then
				l__LocalPlayer__3.PlayerGui.Party.Background.Fourth.Level.Text = "N/A";
			end;
		end;	
	end;
end);
