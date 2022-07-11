Config = {}

Config.Locale = "en"
Config.Time = 20 * 6000 --This is the time between the taxes. You can change the first number. 
Config.Tax = 25 --Tax for ONE car. Will be multiplied by the count of cars a user has

Translation = {
    ['de'] = {
        ['title'] = 'Finanzamt',
        ['description'] = 'Du hast~r~ %s $~s~ für~y~ %s Fahrzeuge~s~ gezahlt.'
    },
    ['en'] = {
        ['title'] = 'Tax Office',
        ['description'] = 'You paid~r~ %s $~s~ for~y~ %s vehicles~s~.'
    },
    ['fr'] = {
        ['title'] = 'Bureau des impôts',
        ['description'] = 'Vous avez payé~r~ %s $~s~ de taxes pour~y~ %s véhicule~s~.'
    }
}
