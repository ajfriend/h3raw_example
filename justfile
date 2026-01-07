clean:
    just rm zig-out
    just rm .zig-cache
    just rm .claude

rm pattern:
    @find . -name "{{pattern}}" -type d -prune -exec rm -rf {} + 2>/dev/null || true

run:
    zig build run
