tell application "iTerm"
	activate
	tell the (current window)
		tell the (current session)
			get name
		end tell
	end tell
end tell
