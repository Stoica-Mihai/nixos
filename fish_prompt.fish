function fish_prompt
        set -l LAST_STATUS        $status
        set -l LAST_STATUS_STRING ""

        # Colors
        set -l RESET   (set_color normal)
        set -l BLUE    (set_color 4392F1)
        set -l YELLOW  (set_color F9DB6D)
        set -l ORANGE  (set_color FF715B)
        set -l PURPLE  (set_color CC4BC2)
        set -l GREEN   (set_color 06D6A0)
        set -l RED     (set_color red)
        set -l BROWN   (set_color CC998D)

        #Headers
        set -l VERSION (lsb_release -d -s | tr -d '"')
        set -l TIME    (date "+%T")
        set -l USER    (whoami)
        set -l PATH    (prompt_pwd --dir-length=0)

        if test $LAST_STATUS -ne 0
                set LAST_STATUS_STRING (string join '' "$RED" "[$LAST_STATUS]" "$RESET")
        else
                set LAST_STATUS_STRING (string join '' "$GREEN" "[$LAST_STATUS]" "$RESET")
        end

        echo -e "$BLUE$USER$RESET - $ORANGE$VERSION$RESET - $PURPLE$TIME$RESET - $BROWN$PATH$RESET\n$LAST_STATUS_STRING$YELLOW ~> $RESET"
end
