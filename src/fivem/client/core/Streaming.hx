package fivem.client.core;

import fivem.client.natives.Graphics;
import fivem.client.natives.Streaming as StreamingNatives;
import fivem.shared.core.Thread;
import fivem.shared.util.Hash;
import fivem.shared.util.Vector3;

/**
	Asset streaming — loading models, animations, textures and collision
	before you use them.

	GTA loads almost nothing up front. Spawning a vehicle whose model isn't
	resident produces handle 0; playing an animation from an unloaded
	dictionary silently does nothing. Every request here blocks the calling
	coroutine until the asset is resident and returns whether it succeeded:

	```haxe
	if (Streaming.requestAnimDict("amb@world_human_smoking@male@male_a@base")) {
	    ped.playAnim("amb@world_human_smoking@male@male_a@base", "base", 49);
	}
	```

	The `Vehicle.create` / `Ped.create` / `Prop.create` helpers already do this
	for you; call these directly for animations, textures and collision.

	Every loaded asset holds memory until released. The `create` helpers
	release the model as soon as the entity exists — the entity keeps its own
	reference, so this is safe and stops the resource from pinning every model
	it has ever spawned.
**/
class Streaming {
	/**
		Streams a model in.

		@param timeoutMs How long to wait before giving up. The default is
		       generous because a cold disk on a slow client genuinely takes
		       seconds for large vehicle models.
		@return False if the model is invalid or didn't load in time.
	**/
	public static function requestModel(model:Hash, timeoutMs:Int = 10000):Bool {
		if (!StreamingNatives.isModelValid(model) || !StreamingNatives.isModelInCdimage(model)) return false;
		if (StreamingNatives.hasModelLoaded(model)) return true;

		StreamingNatives.requestModel(model);
		return Thread.waitUntil(() -> StreamingNatives.hasModelLoaded(model), timeoutMs);
	}

	/**
		Tells the game the model can be evicted once nothing references it.
		Safe to call immediately after spawning — the spawned entity holds its
		own reference.
	**/
	public static inline function releaseModel(model:Hash):Void {
		StreamingNatives.setModelAsNoLongerNeeded(model);
	}

	public static inline function isModelLoaded(model:Hash):Bool {
		return StreamingNatives.hasModelLoaded(model);
	}

	/** Whether the hash names a model the game actually ships or a resource streams. **/
	public static inline function isModelValid(model:Hash):Bool {
		return StreamingNatives.isModelValid(model) && StreamingNatives.isModelInCdimage(model);
	}

	/** Streams an animation dictionary in. **/
	public static function requestAnimDict(dict:String, timeoutMs:Int = 5000):Bool {
		if (StreamingNatives.hasAnimDictLoaded(dict)) return true;

		StreamingNatives.requestAnimDict(dict);
		return Thread.waitUntil(() -> StreamingNatives.hasAnimDictLoaded(dict), timeoutMs);
	}

	public static inline function releaseAnimDict(dict:String):Void {
		StreamingNatives.removeAnimDict(dict);
	}

	/** Streams a texture dictionary in — needed before drawing sprites or textured markers. **/
	public static function requestTextureDict(dict:String, timeoutMs:Int = 5000):Bool {
		if (Graphics.hasStreamedTextureDictLoaded(dict)) return true;

		Graphics.requestStreamedTextureDict(dict, false);
		return Thread.waitUntil(() -> Graphics.hasStreamedTextureDictLoaded(dict), timeoutMs);
	}

	/** Streams a particle effect asset in, for use with the PTFX natives. **/
	public static function requestPtfxAsset(assetName:String, timeoutMs:Int = 5000):Bool {
		if (StreamingNatives.hasNamedPtfxAssetLoaded(assetName)) return true;

		StreamingNatives.requestNamedPtfxAsset(assetName);
		return Thread.waitUntil(() -> StreamingNatives.hasNamedPtfxAssetLoaded(assetName), timeoutMs);
	}

	/**
		Forces the collision mesh around a point to load, then waits for it.

		Worth doing before teleporting a player somewhere distant: without
		collision the ground isn't there yet and they fall through the map.
		Pass the entity being moved so the wait can check the right thing.
	**/
	public static function requestCollisionAt(position:Vector3, ?entity:Entity, timeoutMs:Int = 5000):Bool {
		StreamingNatives.requestCollisionAtCoord(position.x, position.y, position.z);
		if (entity == null) {
			// With no entity to test against, the best available signal is
			// simply giving the streamer a moment to catch up.
			Thread.wait(100);
			return true;
		}

		return Thread.waitUntil(() -> fivem.client.natives.Entity.hasCollisionLoadedAroundEntity(entity.handle), timeoutMs);
	}
}
