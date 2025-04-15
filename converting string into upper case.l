%{
#include <stdio.h>
#include <ctype.h>
%}

%%

[a-z]+   {
            int i;
            for(i = 0; yytext[i] != '\0'; i++) {
                yytext[i] = toupper(yytext[i]);
            }
            printf("%s", yytext);
        }
.|\n     printf("%s", yytext);

%%

int main() {
    yylex();
    return 0;
}
