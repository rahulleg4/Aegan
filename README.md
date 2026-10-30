# Aegan

A multiplayer shooter fought in real places across three timelines, played in first person or from above.

**Play:** https://rahulleg4.github.io/Aegan/

| Timeline | Years | Battlegrounds | Arsenal |
|---|---|---|---|
| Past | 1500–1800 | Port Royal, Jamaica (1688) · Cartagena de Indias (1620) | Brace of Pistols, Blunderbuss, Flintlock Musket, Grenado |
| Present | 1980–2026 | Shibuya, Tokyo (2026) · Lower Manhattan (1989) | Assault Rifle, Pump Shotgun, Marksman Rifle, Frag |
| Future | 2350+ | Mumbai Arcology Ring (2387) · Tranquility Base, Moon (2412) | Plasma Carbine, Arc Scatter, Rail Lance, Singularity |

Each era plays differently: black powder needs a reload after every shot and leaves smoke in the air, the present has magazines and sprinting, and the future has regenerating shields, bouncing plasma and a blink dash.

## Views

- **First person** (default): a 3D city built with three.js. Buildings have lit windows, the modern and future cities play at night, and each player in a two-player game gets their own first-person half of the screen.
- **Top-down**: the 2.5D view, where buildings lean toward the camera and cast long shadows.

## Maps

Each map is laid out by hand from the real place's street plan and landmarks (north is up, one tile is roughly 10 m). Proportions are compressed to fit an arena, so they are faithful in layout, not survey-accurate.

| Map | What's there |
|---|---|
| Port Royal, 1688 | Fort Charles on the western point, wharves along Thames Street on Kingston Harbour, Queen Street, St Paul's Church, the narrowing Palisadoes spit |
| Cartagena de Indias, 1620 | The sea walls and bastions, Plaza Mayor with the cathedral and the Palace of the Inquisition, the clock-tower gate and the bridge over the canal to Getsemaní |
| Shibuya, 2026 | The Scramble Crossing with its diagonal crosswalks, Hachiko Square, Shibuya Station and the Yamanote viaduct, QFRONT, Center Gai, 109 at the Dogenzaka fork, Scramble Square, Hikarie, Mark City |
| Lower Manhattan, 1989 | The World Trade Center twin towers and plaza, Trinity Church on Broadway, Wall Street with Federal Hall and the Stock Exchange, Bowling Green, Battery Park and Castle Clinton, the Hudson and East River |
| Mumbai, 2387 | Back Bay and the Marine Drive curve, the Oval Maidan, the Rajabai clock tower and High Court, the Gateway of India and the Taj on the harbour, Colaba |
| Tranquility Base, 2412 | The preserved Apollo 11 descent stage and flag, West crater and Little West crater, a habitat base around the site |

## Characters

Pick one of four time-travellers on the menu (each player picks their own in two-player games):

| Character | Role | Ability |
|---|---|---|
| Mara Vance | Gunsmith | Reloads 35% faster |
| Dev Okafor | Bruiser | 130 health instead of 100 |
| Lin Tao | Runner | 12% faster, longer sprint, quicker blink |
| Rafael Cruz | Demolitions | One extra grenade, 25% bigger blasts |

## Modes

- **Solo**: you and bots against a bot squad
- **2P Co-op**: two players on one keyboard (split screen) against bots
- **2P Versus**: Player 1's squad against Player 2's squad
- **Campaign**: past, present and future back to back, three rounds

Squads of 2v2 to 4v4, three bot difficulties, first to 15/25/40 kills or the most kills after five minutes.

## Controls

| | Player 1 | Player 2 |
|---|---|---|
| Move | W A S D | Up / Down to move, Left / Right to turn (first person) or move (top-down) |
| Look / aim | Mouse (click the game to capture it) | Turns with the arrow keys, light aim assist |
| Fire | Click or Space | Enter |
| Switch weapon | 1 2 3, Q, mouse wheel | . |
| Grenade | E | / |
| Reload | R | , |
| Sprint / blink | Left Shift | Right Shift |

Gamepads work too (left stick moves, right stick looks; the first pad is Player 2 in two-player games). Esc or P pauses, M mutes. On touch screens, solo play uses twin thumb sticks.

## Project layout

```
index.html        the page (runs as-is, this is what GitHub Pages serves)
css/style.css     menu, dialogs and HUD styling
js/game.js        the whole game: maps, simulation, bots, 2D and 3D rendering, input, audio
build.ps1         builds dist/aegan.html, a single self-contained file
dist/aegan.html   the single-file build, as published to Claude Artifacts
```

Edit `index.html`, `css/style.css` or `js/game.js`, then run `./build.ps1` (PowerShell) to refresh the single-file build. The only external dependency is three.js r128, loaded from cdnjs.
