function onCreatePost()
    runHaxeCode([[
        for (i in game.unspawnNotes) {
            if (i.isSustainNote)
                       i.blockHit = true;
       }
    ]])
end
function goodNoteHit(id)
    runHaxeCode([[
        note = game.notes.members[]]..id..[[];
        if (!note.isSustainNote) {
            for (sus in note.tail)
                sus.blockHit = false;
        }
    ]])
end
function noteMiss(id, data, type, here)
    runHaxeCode([[noteToUse = game.notes.members[]]..id..[[];]])
    --a little edit since i used bruh as a nil
    if here then
        runHaxeCode([[
            tail = noteToUse.parent.tail;
            for (note in tail) {
                note.blockHit = true;
                note.ignoreNote = true;
                note.alpha = 0.6;
                note.copyAlpha = false;
            }
        ]])
        
    else
        runHaxeCode([[
            tail = noteToUse.tail;
            for (note in tail){
                note.blockHit = true;
                note.ignoreNote = true;
                note.alpha = 0.6;
                note.copyAlpha = false;
            }
         //kind of thought this would work... (the line below)
            //note.canBeHit = false;
        ]])
    end
    
end