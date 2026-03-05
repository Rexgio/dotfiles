function mkproject
  if test -z "$argv[1]"
    echo "Uso: mkproject <nombre_del_projecto>"
    return 1
  end
  
  mkdir -p "$argv[1]"/bin "$argv[1]"/doc "$argv[1]"/include "$argv[1]"/lib  "$argv[1]"/obj "$argv[1]"/src

  echo "Proyecto creado '$argv[1]' creado con estructura base."
end
