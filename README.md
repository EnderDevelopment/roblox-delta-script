# Roblox Delta Time Script

A Roblox server-side delta time script that measures `Heartbeat` intervals and publishes the capped delta time, smoothed delta time, and accumulated server time as `Workspace` attributes for other server scripts to read.

## Install

1. Open your experience in Roblox Studio.
2. Create a `Script` inside `ServerScriptService`.
3. Copy the contents of `DeltaTime.server.lua` into the Script.
4. Start the experience to run the script on the server.

## Use

The script updates these `Workspace` attributes on each server heartbeat:

- `DeltaTime`: The heartbeat duration in seconds, capped at `0.25`.
- `SmoothedDeltaTime`: A smoothed delta time, updated with a smoothing factor of `0.1`.
- `ElapsedServerTime`: Accumulated time in seconds using the capped delta values.

Read an attribute from another server script:

```lua
local deltaTime = workspace:GetAttribute("DeltaTime") or 0
```

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/a4a24c39-3b0d-4f6c-a348-227c4f3a440a?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=a4a24c39-3b0d-4f6c-a348-227c4f3a440a
