:- bundle(provrml).
version('1.0').
depends([
    core
]).
alias_paths([
    library = 'lib'
]).
lib('lib').
manual('provrml', [main='doc/SETTINGS.pl']).
