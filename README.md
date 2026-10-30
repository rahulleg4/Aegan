# Aegan

A top-down multiplayer arena shooter set in real places across three timelines.

| Timeline | Years | Battlegrounds | Arsenal |
|---|---|---|---|
| Past | 1500–1800 | Port Royal, Jamaica (1688) · Cartagena de Indias (1620) | Brace of Pistols, Blunderbuss, Flintlock Musket, Grenado |
| Present | 1980–2026 | Shibuya, Tokyo (2026) · Lower Manhattan (1989) | Assault Rifle, Pump Shotgun, Marksman Rifle, Frag |
| Future | 2350+ | Mumbai Arcology Ring (2387) · Tranquility Base, Moon (2412) | Plasma Carbine, Arc Scatter, Rail Lance, Singularity |

Each era plays differently: black powder needs a reload after every shot and leaves smoke in the air, the present has magazines and sprinting, and the future has regenerating shields, bouncing plasma and a blink dash.

## Play

Open `index.html` in a browser. No build step, no install.

To host it, turn on GitHub Pages for this repo (Settings → Pages → deploy from the `main` branch).

## Modes

- **Solo**: you and bots against a bot squad
- **2P Co-op**: two players on one keyboard (split screen) against bots
- **2P Versus**: Player 1's squad against Player 2's squad
- **Campaign**: past, present and future back to back, three rounds

Squads of 2v2 to 4v4, three bot difficulties, first to 15/25/40 kills or the most kills after five minutes.

## Controls

| | Player 1 | Player 2 |
|---|---|---|
| Move | W A S D | Arrow keys |
| Aim / fire | Mouse + click, or Space | Enter (aims where you face, with aim assist) |
| Switch weapon | 1 2 3, Q, mouse wheel | . |
| Grenade | E | / |
| Reload | R | , |
| Sprint / blink | Left Shift | Right Shift |

Gamepads work too (the first pad is Player 2 in two-player games). Esc or P pauses, M mutes. On touch screens, solo play uses twin thumb sticks.

## Files

- `index.html`: the complete game, standalone
- `aegan.html`: the same game without the document wrapper, as published to Claude Artifacts
