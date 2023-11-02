version "3.3"
 
class DeadMonsterDrops : EventHandler
{
	override void WorldThingDied(WorldEvent e)
	{
		if (e.thing && e.thing.bIsMonster)
		{			
			//estimating monster through health and dropping items accordingly
			
			if(e.thing.SpawnHealth() <= 140){
				//Console.printf("common enemies");
				if(!e.thing.bNoBlood) // make sure its not a robot
				{
					e.thing.A_DropItem("UselessStuff", -1, 100); // drop beating hearts
					e.thing.A_DropItem("TNTSpawner", -1, 16);
					e.thing.A_DropItem("ProxyBombSpawner", -1, 16);
					e.thing.A_DropItem("ProxyBombSpawner", -1, 16);
					e.thing.A_DropItem("RemoteBombSpawner", -1, 8);
				}
			 }
			 else if(e.thing.SpawnHealth() <= 600){
				//Console.printf("heavy enemies");
				e.thing.A_DropItem("SmallArmorSpawner", -1, 64);
				e.thing.A_DropItem("HappyTNTBundle", -1, 16);
			 }
			 else if(e.thing.SpawnHealth() <= 2000){
				//Console.printf("heavy enemies");
				e.thing.A_DropItem("SmallArmorSpawner", -1, 64);
				e.thing.A_DropItem("BigArmorSpawner", -1, 16);
				e.thing.A_DropItem("HappyTNTBundle", -1, 16);
				e.thing.A_DropItem("HappyAmmoPack", -1, 16);
			 }
			 else {
				//Console.printf("Cannot detect monster");
				e.thing.A_DropItem("BloodPowerItemsSpawner", -1, 128);
				e.thing.A_DropItem("HappyAmmoPack", -1, 128);
				e.thing.A_DropItem("BigArmorSpawner", -1, 64);
			 }
		}
	}
}