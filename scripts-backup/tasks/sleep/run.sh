#!/usr/bin/env bash
{ set +x; } 2>/dev/null

pause
say:file :tasks:sleep:run &
pid=$!
growlnotify -t "Проветривание" --image "ventilation.png"
growlnotify -t "Зубы" --image "teeth.png"
growlnotify -t "Вода" --image"water.png"
waitpid $pid
display sleep
mute
