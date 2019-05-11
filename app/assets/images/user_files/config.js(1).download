CKEDITOR.editorConfig = function( config )
{

  config.toolbar_Mini =
    [
        ['Bold','Italic','Underline','Strike', 'Link'], ['NumberedList','BulletedList','-','Outdent','Indent','Blockquote'], ['pbckcode']
    ];

  config.toolbarGroups = [
    { name: 'links' },
    { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
    { name: 'paragraph',   groups: [ 'list', 'indent', 'blocks', 'align', 'bidi' ] },
        { name: 'pbckcode' }
  ];


  // Remove some buttons, provided by the standard plugins, which we don't
  // need to have in the Standard(s) toolbar.
  config.removeButtons = 'Underline,Subscript,Superscript';

  // Se the most common block elements.
  config.format_tags = 'p;h1;h2;h3;pre';

  // Make dialogs simpler.
  config.removeDialogTabs = 'image:advanced;link:advanced';

    //PbCKCode editor
  config.extraPlugins = 'pbckcode,confighelper';
  config.pbckcode = {
      modes: [["Ruby", 'ruby'], ["CSS", "css"], ["HTML", "html"], ["JavaScript", "javascript"], ["SQL", "sql"]],
      theme: 'clouds_midnight',
      highlighter: "PRETTIFY"
  };

  config.uiColor = '#FFFFFF';

}

CKEDITOR.on('dialogDefinition', function(ev){
  if (ev.data.name == 'link'){
    ev.data.definition.getContents('target').get('linkTargetType')['default'] = '_blank';
  }
});