enum DialogueDisplay {
	Textbox,
	CutsceneFade,
}

global.dialogueList		=	ds_list_create();

dialogue_type = DialogueDisplay.Textbox;

colour = c_white;