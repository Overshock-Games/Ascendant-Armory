from pathlib import Path
import struct
import zlib

OUT = Path("src/main/resources/assets/ascensioncores/textures/item")

def write_png(path, pixels):
    path.parent.mkdir(parents=True, exist_ok=True)
    raw = b"".join(b"\x00" + b"".join(bytes(px) for px in row) for row in pixels)

    def chunk(kind, data):
        return (
            struct.pack(">I", len(data))
            + kind
            + data
            + struct.pack(">I", zlib.crc32(kind + data) & 0xFFFFFFFF)
        )

    data = b"\x89PNG\r\n\x1a\n"
    data += chunk(b"IHDR", struct.pack(">IIBBBBB", 16, 16, 8, 6, 0, 0, 0))
    data += chunk(b"IDAT", zlib.compress(raw, 9))
    data += chunk(b"IEND", b"")
    path.write_bytes(data)

def render(rows, palette):
    assert len(rows) == 16
    pixels = []
    for row in rows:
        assert len(row) == 16, row
        pixels.append([palette[ch] for ch in row])
    return pixels

transparent = (0, 0, 0, 0)

# A beveled, glowing gem structure
core_shape = [
    "................",
    ".......TT.......",
    "......TW2T......",
    ".....TW332T.....",
    "....TW34432T....",
    "...TW3455432T...",
    "..TW345665432T..",
    ".TW3456HH65432T.",
    ".B23456HH65432B.",
    "..B2345665432B..",
    "...B23455432B...",
    "....B234432B....",
    ".....B2332B.....",
    "......B22B......",
    ".......BB.......",
    "................",
]

upgrade = render(
    core_shape,
    {
        ".": transparent,
        "T": (22, 64, 61, 255),    # Dark outline top
        "B": (11, 33, 31, 255),    # Darker outline bottom
        "W": (163, 255, 248, 255), # Edge highlight (glass reflection)
        "2": (20, 92, 87, 255),    # Deep edge shadow
        "3": (28, 128, 121, 255),  # Base dark shell
        "4": (37, 173, 164, 255),  # Mid shell
        "5": (46, 219, 208, 255),  # Bright inner
        "6": (99, 255, 245, 255),  # Glowing ring
        "H": (255, 255, 255, 255), # White-hot core
    },
)

chaos = render(
    core_shape,
    {
        ".": transparent,
        "T": (51, 15, 69, 255),    # Dark outline top
        "B": (26, 8, 36, 255),     # Darker outline bottom
        "W": (240, 163, 255, 255), # Edge highlight (glass reflection)
        "2": (74, 18, 102, 255),   # Deep edge shadow
        "3": (105, 23, 145, 255),  # Base dark shell
        "4": (143, 31, 199, 255),  # Mid shell
        "5": (186, 46, 255, 255),  # Bright inner
        "6": (226, 117, 255, 255), # Glowing ring
        "H": (255, 255, 255, 255), # White-hot core
    },
)

write_png(OUT / "ascension_core.png", upgrade)
write_png(OUT / "chaos_core.png", chaos)
print("Generated core textures")