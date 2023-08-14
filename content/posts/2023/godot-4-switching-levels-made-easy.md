---
title: "Godot 4: Switching Levels Made Easy"
date: 2023-07-25T15:25:56-07:00
url: /posts/godot-4-switching-levels-made-easy
---

Level changing is automatic, and doesn't require any extra variables for each level.

```python
const FILE_BEGIN = "res://levels/level_"

func go_to_next_level():
  var current_scene_file = get_tree().current_scene.scene_file_path
  var next_level_number = current_scene_file.to_int() + 1

  var next_level_path = FILE_BEGIN + str(next_level_number) + ".tscn"
  get_tree().change_scene_to_file(next_level_path)
```

Make sure you change your `FILE_BEGIN` path to reflect the pattern in which you save levels in your project.

Hope this helps! Watch the video on [YouTube](https://youtu.be/GZrALMvOwY8) if you have any questions.
