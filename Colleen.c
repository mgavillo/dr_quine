#include <stdio.h>
//other com
char *fun(){
    return "#include <stdio.h>%c//other com%cchar *fun(){%c%creturn %c%s%c;%c%cmain(){%c%cchar *s = fun();//main_com%c%cprintf(s, 34, s, 34)%c}%c";
}

main(){
    char *s = fun();//main_com
    printf(s, 10, 10, 10, 9, 34, s, 34, 10, 10, 10, 9, 10, 9, 10, 10);
}
