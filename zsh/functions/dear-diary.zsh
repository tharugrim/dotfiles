function dear-diary {
    DIARY_DIR="/home/tobias/docs/diary"
    DIARY_ENTRY_DIR=${DIARY_DIR}/$(date +"%Y")/$(date +"%B")
    DIARY_ENTRY=${DIARY_ENTRY_DIR}/$(date +"%d").tex
    mkdir -p ${DIARY_ENTRY_DIR}
    [ ! -f ${DIARY_ENTRY} ] && cp ${DIARY_DIR}/template.tex ${DIARY_ENTRY} 
    vim ${DIARY_ENTRY}; 
    pushd
    cd ${DIARY_DIR}
    pdflatex main.tex; 
    zathura ${DIARY_DIR}/main.pdf
    popd
}
