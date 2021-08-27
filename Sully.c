#include <stdio.h>
main(){
	char *s = "#include <stdio.h>%cmain(){%c%cchar *s = %c%s%c;%c%cint i = %i;%c%cchar file[10] = %cSully_X.c%c;%c%cwhile (i >= 0){%c%c%cfile[6] = 48 + i;%c%c%cfprintf(fopen(file, %cw%c), s, 10, 10, 9, 34, s, 34, 10, 9, i, 10, 9, 34, 34, 10, 9, 10, 9, 9, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 10);%c%c%ci--;%c%c}%c}%c";
	int i = 5;
	char file[10] = "Sully_X.c";
	while (i >= 0){
		file[6] = 48 + i;
		fprintf(fopen(file, "w"), s, 10, 10, 9, 34, s, 34, 10, 9, i, 10, 9, 34, 34, 10, 9, 10, 9, 9, 10, 9, 9, 34, 34, 10, 9, 9, 10, 9, 10, 10);
		i--;
	}
}
