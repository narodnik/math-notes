import math, pygame, time

pygame.init()

screen = pygame.display.set_mode((800, 600), pygame.RESIZABLE)
stopped = False

font = pygame.font.SysFont('dejavusans', 50, bold=True)

scale = 80
origin_x, origin_y = 0, 0
d = -3
sqrt_neg_d = math.sqrt(-d)
assert d % 4 == 1
while not stopped:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            print("Received quit!")
            stopped = True
        elif event.type == pygame.VIDEORESIZE:
            # Reload all assets
            #slideshow.reload()
            pass
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_MINUS:
                scale *= 0.9
                print("zoom out")
            elif event.key in (pygame.K_PLUS, pygame.K_EQUALS):
                scale *= 1.1
                print("zoom in")
            elif event.key == pygame.K_UP:
                origin_y -= scale
            elif event.key == pygame.K_DOWN:
                origin_y += scale
            elif event.key == pygame.K_LEFT:
                origin_x -= scale
            elif event.key == pygame.K_RIGHT:
                origin_x += scale
            elif event.key == pygame.K_a:
                d -= 4
                print(d)
                sqrt_neg_d = math.sqrt(-d)
                assert d % 4 == 1
            elif event.key == pygame.K_s:
                if d < -3:
                    d += 4
                print(d)
                sqrt_neg_d = math.sqrt(-d)
                assert d % 4 == 1

    dim = screen.get_rect()
    w, h = dim.w, dim.h

    screen.fill(pygame.Color("black"))

    x̅ = w/2 + origin_x
    y̅ = h/2 + origin_y

    mouse_x, mouse_y = pygame.mouse.get_pos()
    x = (mouse_x - x̅)/scale
    y = (mouse_y - y̅)/scale
    dist = math.sqrt(x**2 + y**2)
    text = font.render(f"√({x:.2f}² + {y:.2f}²) = {dist:.2f}", True, (255, 255, 255))
    screen.blit(text, (w - 800, h - 200))
    text = font.render(f"√({d}) = {sqrt_neg_d:.2f}", True, (255, 255, 255))
    screen.blit(text, (w - 800, h - 200 + font.get_linesize()))

    pygame.draw.line(screen, (0, 255, 0),
                     (0, y̅), (w, y̅), 2)
    pygame.draw.line(screen, (0, 255, 0),
                     (x̅, 0), (x̅, h), 2)

    # Vertical bisectors
    x = x̅ - scale/2
    y1 = y̅ - 2*scale
    y2 = y̅ + 2*scale
    pygame.draw.line(screen, (100, 100, 100),
                     (x, y1), (x, y2), 2)
    x = x̅ + scale/2
    pygame.draw.line(screen, (100, 100, 100),
                     (x, y1), (x, y2), 2)

    # Top right diagonal
    x = x̅ + scale/4
    y = y̅ - scale*sqrt_neg_d/4
    pygame.draw.circle(screen, (0, 0, 255), (x, y), 5)
    m = -1/sqrt_neg_d
    x1 = x - 2*scale
    x2 = x + 2*scale
    y1 = y + 2*m*scale
    y2 = y - 2*m*scale
    pygame.draw.line(screen, (100, 100, 100),
                     (x1, y1), (x2, y2), 2)

    # Top left diagonal
    x = x̅ - scale/4
    pygame.draw.circle(screen, (0, 0, 255), (x, y), 5)
    x1 = x + 2*scale
    x2 = x - 2*scale
    y1 = y + 2*m*scale
    y2 = y - 2*m*scale
    pygame.draw.line(screen, (100, 100, 100),
                     (x1, y1), (x2, y2), 2)

    # Bottom right diagonal
    x = x̅ + scale/4
    y = y̅ + scale*sqrt_neg_d/4
    pygame.draw.circle(screen, (0, 0, 255), (x, y), 5)
    m = -1/sqrt_neg_d
    x1 = x - 2*scale
    x2 = x + 2*scale
    y1 = y - 2*m*scale
    y2 = y + 2*m*scale
    pygame.draw.line(screen, (100, 100, 100),
                     (x1, y1), (x2, y2), 2)

    # Bottom left diagonal
    x = x̅ - scale/4
    pygame.draw.circle(screen, (0, 0, 255), (x, y), 5)
    x1 = x + 2*scale
    x2 = x - 2*scale
    y1 = y - 2*m*scale
    y2 = y + 2*m*scale
    pygame.draw.line(screen, (100, 100, 100),
                     (x1, y1), (x2, y2), 2)

    # Draw all the points
    for i in range(-20, 20):
        for j in range(-20, 20):
            x = x̅
            y = y̅
            x += i*scale + j*scale/2
            y -= j*sqrt_neg_d*scale/2
            pygame.draw.circle(screen, (255, 255, 255), (x, y), 5)

    pygame.display.flip()
    time.sleep(0.1)

