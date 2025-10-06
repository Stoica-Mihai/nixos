# env.nu
#
# Installed by:
# version = "0.107.0"

# COLORS
let BLUE = (ansi blue)
let ORANGE = (ansi --escape { fg: '#FF715B' })
let PURPLE = (ansi purple)
let GREEN = (ansi green)
let RED = (ansi red)
let BROWN = (ansi --escape { fg: '#CC998D' })
let RESET = (ansi reset)

# Prompt (requires nu_plugin_formats plugin) -> https://crates.io/crates/nu_plugin_formats
def create_left_prompt [] {
    let status_code = (
        if ($env.LAST_EXIT_CODE == 0) {
                $"($GREEN)[($env.LAST_EXIT_CODE)]($RESET)"
        } else {
                $"($RED)[($env.LAST_EXIT_CODE)]($RESET)"
        }
    )
    let time = (date now | format date '%T')
    let user = (whoami)
    let os = (open /etc/os-release | from ini | get "".VERSION | str trim)
    let pwd = ($env.PWD | str replace $env.HOME ~)

    $"($BLUE)($user)($RESET) - ($ORANGE)($os)($RESET) - ($PURPLE)($time)($RESET) - ($BROWN)($pwd)($RESET) \n($status_code) "
}

# Assign the prompt and clear the time on the right
$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = { || "" }
