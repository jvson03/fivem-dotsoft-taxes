Config = {}

-- Time in minutes
Config.Time = 48

-- [Vehicle Tax] --
Config.EnableVehicleTax = true

-- The sql table name for the player vehicles
Config.OwnedVehiclesTable = 'player_vehicles'

-- Tax per vehicle owned
Config.VehicleTax = math.random (20, 40)

-- Taxes for each vehicle type (!WIP)
Config.Tax = {
    Automobile = math.random (20, 40),
    Bike = math.random (15, 35),
    Boat = math.random (450, 800),
    Heli = math.random (600, 1200),
    Plane = math.random (700, 1800)
}

-- [House Tax] --
Config.EnableHouseTax = true

-- The sql table name for the player houses
Config.OwnedHousesTable = 'player_houses'

-- Tax per house owned
Config.HouseTax = math.random (20, 60)