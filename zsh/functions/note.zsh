function note {
    if [ "$#" -eq 1 ] 
    then;
        vim ~/docs/notes/$1.asciidoc
    else
        vim ~/docs/notes/
    fi
}
