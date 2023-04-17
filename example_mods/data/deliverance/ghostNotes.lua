function onSpawnNote(id, direction, notetype, sustain)
    if notetype == 'GF Sing' then
        setPropertyFromGroup('notes', id, 'texture', 'ghostNotes');
    end
end

--Script by Diegol5528, edited by TheDreamerFrom04