{
	Purpose: List model paths
	Game: The Elder Scrolls V: Skyrim
	Author: fireundubh <fireundubh@gmail.com>
	Version: 0.1
}

unit UserScript;

function Initialize: integer;
	begin
		Result := 0;
	end;

function Process(e: IInterface): integer;
	var
		rec: IInterface;
		query, formid, name: string;
	begin
		Result := 0;
	
		formid := GetEditValue(ElementByPath(e, 'Record Header\FormID'));
		name := GetEditValue(ElementByPath(e, 'RNAM'));
		AddMessage(name + '	' + formid);

	end;

function Finalize: integer;
	begin
		Result := 0;
	end;

end.
