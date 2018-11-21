### Override default prompt function adding git branch/status
function fish_prompt
    set_color blue;
    printf '%s ' (whoami);
    set_color green;
    printf '%s' (prompt_pwd);
    set_color yellow;
    printf '%s> ' (__fish_git_prompt);
    set_color normal;
end