package fivem.server.core;

import fivem.server.natives.Cfx;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	A world object on the server — crates, props, placeable scenery.

	Named `Prop` rather than `Object` to stay clear of Haxe's own namespace and
	of the `fivem.server.natives.Object` extern.

	Server-created props are visible to everyone and persist without a client
	nearby, which is what you want for anything gameplay-relevant. Purely
	decorative props are cheaper spawned client-side.
**/
class Prop extends Entity {
	public function new(handle:Int) {
		super(handle);
	}

	public static function create(model:Hash, position:Vector3):Prop {
		var handle:Int = Cfx.createObject(model, position.x, position.y, position.z, true, true, false);
		return handle == 0 ? null : new Prop(handle);
	}

	/**
		Spawns a prop with its origin exactly at `position`, skipping the
		game's model-offset correction — the form to use when restoring props
		from saved coordinates.
	**/
	public static function createNoOffset(model:Hash, position:Vector3):Prop {
		var handle:Int = Cfx.createObjectNoOffset(model, position.x, position.y, position.z, true, true, false);
		return handle == 0 ? null : new Prop(handle);
	}
}
