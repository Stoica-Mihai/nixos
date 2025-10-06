# env.nu
#
# Installed by:
# version = "0.107.0"

# COLORS
let BLUE = (ansi --escape { fg: '#4392F1' })
let YELLOW = (ansi --escape { fg: '#F9DB6D' })
let ORANGE = (ansi --escape { fg: '#FF715B' })
let PURPLE = (ansi --escape { fg: '#CC4BC2' })
let GREEN = (ansi --escape { fg: '#06D6A0' })
let RED = (ansi --escape { fg: red })
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
    let os = (open /etc/os-release | from ini | get "" | get VERSION | str trim)
    let pwd = ($env.PWD | str replace $env.HOME ~)

    $"($BLUE)($user)($RESET) - ($ORANGE)($os)($RESET) - ($PURPLE)($time)($RESET) - ($BROWN)($pwd)($RESET) \n($status_code) "
}

# Assign the prompt and clear the time on the right
$env.PROMPT_COMMAND = { || create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = { || "" }
