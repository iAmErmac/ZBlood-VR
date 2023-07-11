version "3.3"
 
class DeadMonsterDrops : EventHandler
{
	override void WorldThingDied(WorldEvent e)
	{
		if ( e.thing.bIsMonster )
		{			
			//estimating monster through health and dropping items accordingly
			
			if(e.thing.SpawnHealth() <= 145){
				//Console.printf("Heretic Mummy or Hexen gargoyle or Strife Stalker");
				e.thing.A_DropItem("FlareShellSpawner", -1, 64);
				e.thing.A_DropItem("BulletSpawner", -1, 16);
				e.thing.A_DropItem("ShellSpawner", -1, 16);
			 }
			 else if(e.thing.SpawnHealth() <= 165){
				//Console.printf("Serpent");
				e.thing.A_DropItem("FlareShellSpawner", -1, 64);
				e.thing.A_DropItem("BulletSpawner", -1, 32);
				e.thing.A_DropItem("ShellSpawner", -1, 64);
				e.thing.A_DropItem("UselessStuff", -1, 100); // drop beating hearts
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 100);
			 }
			 else if(e.thing.SpawnHealth() <= 220){
				//Console.printf("Ice golem");
				e.thing.A_DropItem("BulletSpawner", -1, 16);
				e.thing.A_DropItem("ShellSpawner", -1, 32);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 50);
			 }
			 else if(e.thing.SpawnHealth() <= 235){
				//Console.printf("Bishop");
				e.thing.A_DropItem("FlareShellSpawner", -1, 64);
				e.thing.A_DropItem("ShellSpawner", -1, 64);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 100);
			 }
			 else if(e.thing.SpawnHealth() <= 325){
				//Console.printf("Ettin");
				e.thing.A_DropItem("FlareShellSpawner", -1, 256);
				e.thing.A_DropItem("ShellSpawner", -1, 64);
				e.thing.A_DropItem("UselessStuff", -1, 100);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 80);
			 }
			 else if(e.thing.SpawnHealth() <= 360){
				//Console.printf("Heretic Knight or Hexen sentaur or Serpent leader");
				e.thing.A_DropItem("FlareShellSpawner", -1, 64);
				e.thing.A_DropItem("ShellSpawner", -1, 64);
				e.thing.A_DropItem("BulletSpawner", -1, 16);
				e.thing.A_DropItem("UselessStuff", -1, 100);
				e.thing.A_DropItem("SmallArmorSpawner", -1, 32);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 100);
			 }
			 else if(e.thing.SpawnHealth() <= 450){
				//Console.printf("Sentaur leader or chaos serpent");
				e.thing.A_DropItem("ShellSpawner", -1, 192);
				e.thing.A_DropItem("SprayCanisterSpawner", -1, 192);
				e.thing.A_DropItem("UselessStuff", -1, 100);
				e.thing.A_DropItem("SmallArmorSpawner", -1, 64);
				e.thing.A_DropItem("ArmorFragmentSpawner", -1, 200);
			 }
			 else if(e.thing.SpawnHealth() <= 1160){
				//Console.printf("Death wyvern");
				e.thing.A_DropItem("GasolineCanSpawner", -1, 64);
				e.thing.A_DropItem("BulletBoxSpawner", -1, 16);
				e.thing.A_DropItem("SprayCanisterSpawner", -1, 192);
				e.thing.A_DropItem("SmallArmorSpawner", -1, 256);
			 }
			 else if(e.thing.SpawnHealth() <= 1450){
				//Console.printf("Hexen mirror boss or Loremaster");
				e.thing.A_DropItem("SprayCanisterSpawner", -1, 64);
				e.thing.A_DropItem("BulletSpawner", -1, 64);
				e.thing.A_DropItem("CellPickupSpawner", -1, 32);
				e.thing.A_DropItem("HappyAmmoPack", 1, 64);
				e.thing.A_SpawnProjectile("CellPickupSpawner64", Random(10, 30), Random(-3, 3), Random(-90, 90));
				e.thing.A_DropItem("UselessStuff", -1, 256);
				e.thing.A_DropItem("BigArmorSpawner", -1, 256);
				e.thing.A_DropItem("GunsAkimboSpawner", -1, 256);
			 }
			 else if(e.thing.SpawnHealth() <= 9000){
				//Console.printf("Heresiarch or Korax");
				e.thing.A_DropItem("BulletSpawner", -1, 128);
				e.thing.A_DropItem("GasolineCanSpawner");
				e.thing.A_DropItem("TrappedSoulSpawner");
				e.thing.A_DropItem("CellPickupSpawner");
				e.thing.A_DropItem("HappyAmmoPack", 1, 128);
				e.thing.A_SpawnProjectile("CellPickupSpawner128", Random(10, 30), Random(-3, 3), Random(-90, 90));
				e.thing.A_SpawnProjectile("BFGItemDropSpawner64", Random(10, 30), Random(-3, 3), Random(-90, 90));
				e.thing.A_DropItem("GunsAkimboSpawner", -1, 256);
			 }
			 else {
				//Console.printf("Cannot detect monster");
				e.thing.A_DropItem("BulletSpawner", -1, 128);
				e.thing.A_DropItem("CellPickupSpawner", -1, 128);
				e.thing.A_DropItem("TrappedSoulSpawner", -1, 128);
				e.thing.A_DropItem("HappyAmmoPack", 1, 128);
				e.thing.A_SpawnProjectile("CellPickupSpawner128", Random(10, 30), Random(-3, 3), Random(-90, 90));
				e.thing.A_SpawnProjectile("BFGItemDropSpawner64", Random(10, 30), Random(-3, 3), Random(-90, 90));
			 }
		}
	}
}

Class DeadMonsterDropSpawner : Actor
{
	Default
	{
		Radius 1;
		Height 1;
		Speed 5;
		PROJECTILE;
		+NOCLIP;
	}
}

Class CellPickupSpawner : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_DropItem("CellPickupSpawner", -1, 32);
      stop;
   }
}

Class CellPickupSpawner128 : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_DropItem("CellPickupSpawner", -1, 128);
      stop;
   }
}

Class CellPickupSpawner64 : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_DropItem("CellPickupSpawner", -1, 64);
      stop;
   }
}

Class CellPickupSpawner32 : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_DropItem("CellPickupSpawner", -1, 32);
      stop;
   }
}

Class BFGItemDropSpawner64 : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_Jump(256, "SpawnA", "SpawnB");
      stop;
	SpawnA:
      TNT1 A 0 A_DropItem("LifeLeechSpawner", -1, 64);
      stop;
	SpawnB:
      TNT1 A 0 A_DropItem("VoodooDollSpawner", -1, 64);
      stop;
   }
}

Class BFGItemDropSpawner16 : DeadMonsterDropSpawner
{
   States
   {
   Spawn:
      TNT1 A 10;
      TNT1 A 0 A_Stop;
      TNT1 A 0 A_Jump(256, "SpawnA", "SpawnB");
      stop;
	SpawnA:
      TNT1 A 0 A_DropItem("LifeLeechSpawner", -1, 64);
      stop;
	SpawnB:
      TNT1 A 0 A_DropItem("VoodooDollSpawner", -1, 64);
      stop;
   }
}