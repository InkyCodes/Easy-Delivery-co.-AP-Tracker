function three_radio_towers()
    local upton = Tracker:FindObjectForCode("@Radio Towers/Upton/Upton")
    local easton = Tracker:FindObjectForCode("@Radio Towers/Easton/Easton")
    local snowy = Tracker:FindObjectForCode("@Radio Towers/Snowy Peaks/Snowy Peaks")

    if not upton or not easton or not snowy then
        return false
    end

    return
        upton.AvailableChestCount < upton.ChestCount
        and easton.AvailableChestCount < easton.ChestCount
        and snowy.AvailableChestCount < snowy.ChestCount
end


function SnowcatsEnabled()
    -- Ohne aktive AP-Verbindung immer sichtbar
    if Archipelago.PlayerNumber == -1 then
        return true
    end

    return SLOT_DATA
        and SLOT_DATA["snowcats"] == 1
end


function BlindBagsEnabled()
    -- Ohne aktive AP-Verbindung immer sichtbar
    if Archipelago.PlayerNumber == -1 then
        return true
    end

    return SLOT_DATA
        and SLOT_DATA["blind_bags"] == 1
end


function PerfectDeliveriesEnabled()
    -- Ohne aktive AP-Verbindung immer sichtbar
    if Archipelago.PlayerNumber == -1 then
        return true
    end

    return SLOT_DATA
        and SLOT_DATA["perfect_deliveries"] == 1
end