# Ascension Cores — Claude Context

## Comms style
Caveman speak. Short. No articles. Grunt. Skip filler. Apply same to thinking.

## Env
- MC 26.1.2, Fabric Loader 0.19.2, Fabric API 0.149.0+26.1.2
- Gradle 9.4.1, JDK 26 at `C:\Program Files\Java\jdk-26.0.1`
- Build: `.\gradlew.bat build` → jar in `build/libs/`
- Run server: `.\gradlew.bat runServer` (eula at `run/eula.txt`)
- Mod id: `ascensioncores`, root pkg `com.ascensioncores`, mixin pkg `com.ascensioncores.mixin`

## MC 26 mapping
- Pre-mapped Mojang names. NO mappings line in build.gradle. NO `loom.officialMojangMappings()`.
- Access widener header: `accessWidener v2 official`. Set `loom { accessWidenerPath = file(...) }`.

## Inspect MC jar
```powershell
$jar = "C:\Git\Ascension Cores\.gradle\loom-cache\minecraftMaven\net\minecraft\minecraft-merged-*\26.1.2\*.jar"
cd $env:TEMP
& "C:\Program Files\Java\jdk-26.0.1\bin\jar.exe" xf $jar net/minecraft/the/ClassName.class
& "C:\Program Files\Java\jdk-26.0.1\bin\javap.exe" -p net/minecraft/the/ClassName.class
```

## MC 26 gotchas
- `Entity.getTags()` → `Entity.entityTags()`
- `MobEffects.MOVEMENT_SLOWDOWN` → `MobEffects.SLOWNESS`
- `SoundEvents.X` returns `Holder<SoundEvent>` — call `.value()` for `Level.playSound(...)`
- `LootItemConditionType` gone — register `MapCodec` directly into `BuiltInRegistries.LOOT_CONDITION_TYPE`
- `Item.Properties` requires `.setId(ResourceKey<Item>)` BEFORE `new Item(...)`
- Recipe JSON ingredients = plain string ids (`"minecraft:flint"`), not `{"item":"..."}`
- Each item needs `assets/<ns>/items/<name>.json` (model definition) pointing to `models/item/...` — without it, item = missing texture
- `CommandSourceStack.hasPermission(int)` gone → `src.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER)`
- `ClipContext` in `net.minecraft.world.level`, not `world.phys`
- `Connection.send()` 2nd param = `io.netty.channel.ChannelFutureListener`, not `PacketSendListener`

## Mixin rules
- `@Shadow` targets DECLARING class. Parent field → mixin parent.
- `slotsChanged` on `ItemCombinerMenu` (parent of `AnvilMenu`) — can't `@Inject` from `AnvilMenu` mixin. Use `createResult` (fires per slot change) or mixin the parent.
- Anvil `createResult` has early returns — use `@At("RETURN")`, NOT `@At("TAIL")`
- `inputSlots`/`resultSlots`/`player` on `ItemCombinerMenu` — exposed via `ItemCombinerMenuAccessor` mixin
- Interface on parent mixin auto-applies to subclass instances (duck typing)
- Prefer Fabric event callbacks over mixins where possible
- Register components/items eagerly in `main` entrypoint (`AscensionCommonMod`) — lazy init races registry freeze

## Config style
- `Files.writeString(path, toPropertiesString(), UTF_8)` with text block
- NEVER `Properties.store()` (timestamp + encoding issues on Windows)
- Live values: chest loot uses custom `AscensionConfigChanceCondition` so `/ascensioncores reload` applies without `/reload`
- Mob drops + anvil costs read config directly per-event

## Commands
```java
Commands.literal("ascensioncores")
    .requires(src -> src.permissions().hasPermission(Permissions.COMMANDS_GAMEMASTER))
CommandRegistrationCallback.EVENT.register(
    (dispatcher, registryAccess, env) -> MyCommand.register(dispatcher));
```

## fabric.mod.json
- `"environment": "*"` (this mod has client + server bits). `"server"` only if dedicated-server-only.
- `"${version}"` substituted by `processResources` from `mod_version` in `gradle.properties`
- No `icon` field unless file exists
- Entrypoints: `main` = `AscensionCommonMod`, `client` = `AscensionClientMod`. No `server` (removed; was redundant)
