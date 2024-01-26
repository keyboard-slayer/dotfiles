if status is-interactive
    set fish_greeting
    set -Ux EDITOR nvim
    set -U fish_user_paths ~/.local/bin $fish_user_paths
    # Commands to run in interactive sessions can go here
end
