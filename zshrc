# Set Variables


# Change zsh options


# Create aliasses 


alias ls='ls -lAFh'
alias shcfg='nano ~/.zshrc'
alias lg='lazygit'

# Customize Prompt(s)
PROMPT='
%1~ %L %# '

RPROMPT='%*'

# Add Location to $PATH Variable


# Write Handy Functions
function mkcd() {
  mkdir -p "$@" && cd "$_";
}

# Use ZSH plugins


# ... 
neofetch
