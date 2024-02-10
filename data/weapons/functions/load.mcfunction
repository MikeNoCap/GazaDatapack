scoreboard objectives add HoldingGlock dummy "HoldingGlock"
scoreboard objectives add FiringGlock used:crossbow "FiringGlock"
team add NoCollision "NoCollision"
team modify NoCollision collisionRule never
team modify NoCollision seeFriendlyInvisibles false
scoreboard objectives add id dummy
tellraw @a {"text": "Miklath Industries sine våpen systemer er up and running!", "bold": true, "color": "green"}
