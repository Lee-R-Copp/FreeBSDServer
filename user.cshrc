cat << DELIMITER >> ~/.cshrc

# Defaults
alias   dir   ls -aGhlF
alias   edit  /usr/bin/ee
setenv  EDITOR  ee
setenv  PAGER  less

# Fancy Prompt
set prompt = "%{\033[1;32m%}[%Y-%W-%D_%P]%{\033[0m%}%{\033[1;35m%}[%N@%m:%~]%{\033[0m%} "

# Special Key Support
if (xterm == "xterm" || xterm == "vt100" || xterm == "vt102" || xterm !~ "con*") then
  bindkey "\e[1~" beginning-of-line
  bindkey "\e[7~" beginning-of-line
  bindkey "\e[2~" overwrite-mode
  bindkey "\e[3~" delete-char
  bindkey "\e[4~" end-of-line
  bindkey "\e[8~" end-of-line
endif

DELIMITER
cat ~/.cshrc
