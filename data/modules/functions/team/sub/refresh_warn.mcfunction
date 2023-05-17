
function modules:team/sub/update

# 显示人数警告
execute if score $balance_team debug matches 0 if score $team_diff mem matches 1.. run function modules:team/warn_select
execute if score $balance_team debug matches 0 if score $team_diff mem matches 2.. run function modules:team/warn_diff
