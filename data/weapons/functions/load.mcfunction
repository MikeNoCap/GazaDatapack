scoreboard objectives add HoldingGlock dummy "HoldingGlock"
team add NoCollision "NoCollision"
team modify NoCollision collisionRule never
team modify NoCollision seeFriendlyInvisibles false
tellraw @a {"text": "Miklath Industries sine våpen systemer er up and running!", "bold": true, "color": "green"}