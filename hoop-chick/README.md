# Hoop Chick

Hoop Chick is a Codex Desktop pet: a yellow basketball chick with gray middle-part bowl-cut hair, blue overalls, white sneakers, and an orange basketball. In idle, it gradually gets sleepy and grows a little nose bubble; hovering the pet triggers the jump animation so it snaps awake.

## Files

- `pet.json` - pet manifest.
- `spritesheet.webp` - 1536 x 1872 spritesheet with Codex pet animation rows.
- `preview/contact-sheet.png` - static preview of all frames.
- `preview/animations/*.gif` - per-state animation previews.

## Install

From the repository root:

```powershell
powershell -ExecutionPolicy Bypass -File .\install.ps1 hoop-chick
```

or:

```bash
./install.sh hoop-chick
```

Manual install:

1. Copy this `hoop-chick` folder to `$HOME/.codex/pets/hoop-chick`.
2. If `CODEX_HOME` is set, copy it to `$CODEX_HOME/pets/hoop-chick`.
3. Open Codex Desktop.
4. Go to Settings > Personalization > Pets.
5. Click Refresh.
6. Select the Hoop Chick pet shown from `pet.json`.

Codex custom pet id: `custom:hoop-chick`.

## Validation

The spritesheet is WebP RGBA-compatible at `1536 x 1872`, matching the Codex pet atlas size of 8 columns by 9 rows with 192 x 208 cells.
