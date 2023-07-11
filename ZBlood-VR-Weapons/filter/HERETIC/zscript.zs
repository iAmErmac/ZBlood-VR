version "3.3"
 
class DeadMonsterDrops : EventHandler
{
	override void WorldThingDied(WorldEvent e)
	{
		if ( e.thing.bIsMonster && e.Thing.GetSpecies() != "HereticImp" && e.Thing.GetSpecies() != "HereticImpLeader" )
		{			
			//estimating monster through health and dropping items accordingly
			if(e.thing.SpawnHealth() <= 360){
				//Console.printf("common enemies");
				e.thing.A_DropItem("UselessStuff", -1, 100); // drop beating hearts
				e.thing.A_DropItem("TNTSpawner", -1, 8);
				e.thing.A_DropItem("ProxyBombSpawner", -1, 8);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 100);
			 }
			 else if(e.thing.SpawnHealth() <= 505){
				//Console.printf("heavy enemies");
				e.thing.A_DropItem("UselessStuff", -1, 150);
				e.thing.A_DropItem("SmallArmorSpawner", -1, 64);
				e.thing.A_DropItem("HappyTNTBundle", -1, 16);
				e.thing.A_DropItem("SmallArmorDrop", -1, 100);
			 }
			 else if(e.thing.SpawnHealth() <= 1260){
				//Console.printf("Iron Lich");
				e.thing.A_DropItem("BigArmorSpawner", -1, 64);
				e.thing.A_DropItem("HappyTNTBundle", -1, 16);
				e.thing.A_DropItem("SmallArmorDrop", -1, 200);
			 }
			 else if(e.thing.SpawnHealth() <= 5400){
				//Console.printf("Snakerider D'Sparil or Minotaur");
				e.thing.A_DropItem("UselessStuff", -1, 256);
				e.thing.A_DropItem("BigArmorSpawner", -1, 256);
				e.thing.A_DropItem("HappyAmmoPack", -1, 128);
				e.thing.A_DropItem("GunsAkimboSpawner", -1, 256);
			 }
			 else if(e.thing.SpawnHealth() <= 6300){
				//Console.printf("D'Sparil");
				e.thing.A_DropItem("UselessStuff", -1, 256);
				e.thing.A_DropItem("SuperArmorSpawner", -1, 256);
				e.thing.A_DropItem("HappyAmmoPack", -1, 256);
			 }
			 else {
				//Console.printf("Cannot detect monster");
				e.thing.A_DropItem("GunsAkimboSpawner", -1, 128);
				e.thing.A_DropItem("HappyAmmoPack", -1, 128);
				e.thing.A_DropItem("BigArmorSpawner", -1, 64);
			 }
		}
	}
}