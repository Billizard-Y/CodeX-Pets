#!/usr/bin/env bash
set -euo pipefail

pet_id="${1:-hoop-chick}"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source_dir="$repo_root/$pet_id"
pet_json="$source_dir/pet.json"
spritesheet="$source_dir/spritesheet.webp"

if [[ ! -f "$pet_json" ]]; then
  echo "Missing pet manifest: $pet_json" >&2
  exit 1
fi

if [[ ! -f "$spritesheet" ]]; then
  echo "Missing spritesheet: $spritesheet" >&2
  exit 1
fi

codex_home="${CODEX_HOME:-$HOME/.codex}"
target_dir="$codex_home/pets/$pet_id"

mkdir -p "$target_dir"
cp "$pet_json" "$target_dir/pet.json"
cp "$spritesheet" "$target_dir/spritesheet.webp"

echo "Installed $pet_id to $target_dir"
echo "Open Codex Desktop > Settings > Personalization > Pets, then click Refresh and select the pet."
