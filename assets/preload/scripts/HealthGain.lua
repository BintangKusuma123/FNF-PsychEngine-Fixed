function goodNoteHit(id, direction, noteType, isSustainNote)
    --We add a x2 to byfriends current note hit health
    health = getProperty('health')
    setProperty('health', health+ 0.026);
end