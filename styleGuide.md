# Style Guide for polybox.js

- Use ```const``` keyword for constants and avoid using ```var```.  
Example: ```const canvasElement = document.createElement("canvas");```

- Avoid using ```var``` and instead use ```let```.  
Example: ```let score = 4;```

- Use type annotations for function arguments and return types.  
Example: ```function lerp(to: number, from: number, x: number): number {...}```

- Use ```class``` keyword to define classes.  
Example: ```class Vector {...}```

- Use double quotes for string literals.  
Example: ```const color = ["#00E06C", "#F04F54", ...] as const;```

- Use semicolons at the end of statements.  
Example: ```const context = canvasElement.getContext("2d", { alpha: false })!;```

- Use a consistent naming convention for variables, functions and classes.  
Example: ```class ColorMixer {...}```

- Use meaningful variable and function names that accurately describe their purpose.  
Example: ```function mixColors(primary: string, secondary: string, x: number): string {...}```

- Use comments to describe complex or important sections of code.  
Example: ```// Define the entity group```

- Use whitespace to improve code readability. Use indentation to show block structure.  
