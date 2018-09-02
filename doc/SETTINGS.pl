:- module(_, [], [doccfg]).

:- include(core_docsrc(common/'LPDOCCOMMON')).

%filepath := at_bundle(provrml, 'lib').
filepath := ~ciaofilepath_common.

doc_structure := [
  'provrml/provrml'-[
    'provrml/boundary',
    'provrml/dictionary',
    'provrml/dictionary_tree',
    'provrml/provrmlerror',
    'provrml/field_type',
    'provrml/field_value',
    'provrml/field_value_check',
    'provrml/generator',
    'provrml/generator_util',
    'provrml/internal_types',
    'provrml/provrml_io',
    'provrml/lookup',
    'provrml/provrml_parser',
    'provrml/parser_util',
    'provrml/possible',
    'provrml/tokeniser'
  ]
].

%doc_mainopts := no_patches.
doc_mainopts := _ :- fail. % Allow patches in main changelog (those are the release notes)
% TODO: Added no_propuses because texindex breaks with very large
%       indices (due to internal, maybe arbitrary, limitations) --JF.
doc_compopts := no_isoline|no_engmods|propmods|no_changelog|no_propuses.

bibfile := ~ciao_bibfile.

% TODO: port this manual
allow_markdown := no.
syntax_highlight := no.
