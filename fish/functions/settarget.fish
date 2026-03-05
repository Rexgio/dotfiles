function settarget
    if test (count $argv) -eq 1
        echo $argv[1] > ~/.config/polybar/shapes/scripts/target
    else if test (count $argv) -gt 2
        echo "settarget [IP] [NAME] | settarget [IP]"
    else 
      echo $argv[1] $argv[2] > ~/.config/polybar/shapes/scripts/target
    end
end
