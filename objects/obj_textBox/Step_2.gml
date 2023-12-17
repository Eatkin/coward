ticker			+=	1;
	
//Auto-display all text if we press mouse
var _continue	=	mouse_check_button_pressed(mb_left);

//Auto-continue after a couple seconds or howeveer long
if (expiry <= 0)
	_continue	=	true;
	
if (!firstFrame and _continue)	{
	if (dialogueComplete)
		destroyTriggered	=	true;
	else	{
		stringToShow		=	text;
		dialogueComplete	=	true;
	}
	exit;
}

if (!dialogueComplete)	{
	if (ticker >= string_length(text))	{
		stringToShow		=	text;
		dialogueComplete	=	true;
	}
	else
		stringToShow		=	string_copy(text, 1, ticker);
}
else
	expiry		-=	1;

firstFrame		=	false;