function filterItems(request){
    // what are the filters
    $('.'+request).toggleClass('inactive');
}

function addGeneralFilter(filters){
    filtersToAdd = "";
    if(filters.includes("Magic_Resist") || filters.includes("Health") 
    || filters.includes("Health_Regeneration") || filters.includes("Armor")){
        filtersToAdd += "Defense ";
    }
    if(filters.includes("Damage") || filters.includes("Critical_Strike_Chance") 
    || filters.includes("Attack_Speed") || filters.includes("Life_Steal")){
        filtersToAdd += "Attack ";
    }
    
    if(filters.includes("Ability_Power") || filters.includes("Cooldown_Reduction") 
    || filters.includes("Mana") || filters.includes("Mana_Regeneration")){
        filtersToAdd += "Magic ";
    }
    
    if(filters.includes("Movement_Speed")){
        filtersToAdd += "Misc ";
    }
    
    return filtersToAdd;
}