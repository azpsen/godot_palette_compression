## Godot Palette Compression Shader ##

This shader compresses the colors of a scene to a user-defined palette of 6 colors. Useful for 3D pixel art games aiming for a specific color palette.

The file `palcom.gdshader` can be applied to a ViewportContainer to act as a custom post-processing effect. This is how the shader is used in the example scene (`house.tscn`). The shader's default color palette is also tailored specifically to this scene but can easily be changed in the editor or in the shader itself.
