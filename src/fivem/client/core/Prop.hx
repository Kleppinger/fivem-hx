package fivem.client.core;

import fivem.client.natives.Object as ObjectNatives;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	A world object — the game's third entity type, covering everything that
	isn't a ped or a vehicle: crates, cones, ATMs, dropped items, placeable
	scenery.

	Named `Prop` rather than `Object` to stay clear of `Object` in Haxe's own
	namespace and of the `fivem.client.natives.Object` extern.

	```haxe
	var cone = Prop.create("prop_roadcone02a", position, false);
	cone.placeOnGround();
	```

	Local props (the default) exist on this client only and are much cheaper —
	the right choice for decoration. Spawn networked props only when other
	players genuinely need to see and interact with them.
**/
class Prop extends Entity {
	public function new(handle:Int) {
		super(handle);
	}

	/**
		Drops the prop so it rests correctly on whatever is beneath it, instead
		of floating or intersecting the ground.
	**/
	public inline function placeOnGround():Bool {
		return ObjectNatives.placeObjectOnGroundProperly(handle);
	}

	/**
		Spawns a prop, streaming its model in first. Returns `null` if the
		model is invalid or failed to load.

		@param networked Whether other players can see it.
		@param placeOnGround Whether to snap it onto the surface below.
	**/
	public static function create(model:Hash, position:Vector3, networked:Bool = false, placeOnGround:Bool = false):Prop {
		if (!Streaming.requestModel(model)) return null;

		var handle:Int = ObjectNatives.createObject(model, position.x, position.y, position.z, networked, false, false);
		Streaming.releaseModel(model);
		if (handle == 0) return null;

		var prop = new Prop(handle);
		if (placeOnGround) prop.placeOnGround();
		return prop;
	}

	/**
		Spawns a prop with its origin exactly at `position`, skipping the
		game's automatic model-offset correction.

		Use this when placing props from saved coordinates — the offset applied
		by `create` is what makes a re-loaded object drift from where it was
		saved.
	**/
	public static function createNoOffset(model:Hash, position:Vector3, networked:Bool = false):Prop {
		if (!Streaming.requestModel(model)) return null;

		var handle:Int = ObjectNatives.createObjectNoOffset(model, position.x, position.y, position.z, networked, false, false);
		Streaming.releaseModel(model);

		return handle == 0 ? null : new Prop(handle);
	}
}
