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