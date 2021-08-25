ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'
ZSH_AUTOSUGGEST_ACCEPT_WIDGETS=(
	end-of-line
	vi-end-of-line
	vi-add-eol
)
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
	forward-char
	forward-word
	emacs-forward-word
	vi-forward-char
	vi-forward-word
	vi-forward-word-end
	vi-forward-blank-word
	vi-forward-blank-word-end
	vi-find-next-char
	vi-find-next-char-skip
)
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)

# Bind Shift-ENTER to directly execute
# Being able to send this key requires a workaround in the terminal emulator to send a custom sequence
# For Windows Terminal, add in the actions section:
# { "command": { "action": "sendInput", "input": "\u001b[[SE" }, "keys": "shift+enter" }
# bindkey '^[[[SE' autosuggest-execute
