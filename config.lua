Config = {}

Config.Legacy = false --Set this to true if you are using ESX Legacy (https://github.com/esx-framework/esx-legacy) and read the tutorial in the README

Config.Locale = "en"
Config.Time = 2 * 60000 --This is the time between the taxes. You can change the first number. Example: 2 x 60 Seconds = 2 Minutes
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
