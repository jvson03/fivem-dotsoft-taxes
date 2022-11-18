[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)

# Dotsoft Taxes

Players will have to pay taxes every interval for each house or vehicle they own. This resource was make for Redwood V in order to balance the economy.


## Configuration


```bash
-- Time in minutes
Config.Time = 48

-- [Vehicle Tax] --
Config.EnableVehicleTax = true

-- The sql table name for the player vehicles
Config.OwnedVehiclesTable = 'player_vehicles'

-- Tax per vehicle owned
Config.VehicleTax = math.random (20, 40)

-- [House Tax] --
Config.EnableHouseTax = true

-- The sql table name for the player houses
Config.OwnedHousesTable = 'player_houses'

-- Tax per house owned
Config.HouseTax = math.random (20, 60)
```
    