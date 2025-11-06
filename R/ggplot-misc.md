# Various things in ggplot

Assuming the plot is called `p`

Vertically offset every second label ([jan-glx/Stackoverflow](https://stackoverflow.com/a/60650595)):
```
p +
scale_x_discrete(guide = guide_axis(n.dodge = 2))
```

Rotate labels ([jan-glx/Stackoverflow](https://stackoverflow.com/a/60650595):
```
p +
guides(x =  guide_axis(angle = 90)) 
```
