#!/usr/bin/env bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"
output_dir="${1:-${repo_root}/dist}"
source_file="${repo_root}/reprolevel_manuscript.md"
output_stem="reprolevel-manuscript-v1.0"

# 2026-08-12 00:00:00 UTC. This prevents the PDF metadata from depending on the
# time at which manuscript version 1.0 is built.
export SOURCE_DATE_EPOCH="${SOURCE_DATE_EPOCH:-1786492800}"

command -v pandoc >/dev/null 2>&1 || {
  echo "pandoc is required to build the manuscript." >&2
  exit 1
}

command -v xelatex >/dev/null 2>&1 || {
  echo "xelatex is required to build the manuscript PDF." >&2
  exit 1
}

mkdir -p "${output_dir}"
install -m 0644 "${source_file}" "${output_dir}/${output_stem}.md"

pandoc "${source_file}" \
  --from=gfm+smart \
  --to=html5 \
  --standalone \
  --embed-resources \
  --css="${repo_root}/assets/manuscript.css" \
  --metadata=lang:en-GB \
  --metadata=pagetitle:"Reproducibility Levels in Practice" \
  --output="${output_dir}/${output_stem}.html"

pandoc "${source_file}" \
  --from=gfm+smart \
  --pdf-engine=xelatex \
  --lua-filter="${repo_root}/scripts/pdf-table-layout.lua" \
  --include-in-header="${repo_root}/assets/manuscript-pdf-header.tex" \
  --variable=geometry:margin=22mm \
  --variable=fontsize:10pt \
  --variable=colorlinks:true \
  --variable=urlcolor:blue \
  --output="${output_dir}/${output_stem}.pdf"

echo "Generated manuscript files in ${output_dir}:"
echo "  ${output_stem}.md"
echo "  ${output_stem}.html"
echo "  ${output_stem}.pdf"
