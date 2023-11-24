import itertools, numpy as np, pygame, time

pygame.init()

screen = pygame.display.set_mode((800, 600), pygame.RESIZABLE)
stopped = False

font = pygame.font.SysFont('dejavusans', 50, bold=True)

i = 1

while not stopped:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            print("Received quit!")
            stopped = True
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_UP:
                i += 1
            elif event.key == pygame.K_DOWN:
                i -= 1
                if i < 1:
                    i = 1

    dim = screen.get_rect()
    w, h = dim.w, dim.h

    center = np.matrix([w/2, h/2]).T
    ex = 100 * np.matrix([2, 1]).T
    ey = 100 * np.matrix([2, -1]).T
    ez = 100 * np.matrix([0, 1]).T

    screen.fill(pygame.Color("black"))

    text = font.render(f"{i} / {n}", True, (255, 255, 255))
    screen.blit(text, (0, 0))

    perm = (σ(1), σ(2), σ(3), σ(4))
    text = font.render(f"{perm}", True, (255, 255, 255))
    screen.blit(text, (0, 80))

    permutations = {}
    for i1, i2 in diagonals:
        j1 = σ(i1+1)-1
        j2 = diagonals[j1][1]
        permutations[i1] = j1
        permutations[i2] = j2

    for v1i, v2i, color in edges:
        #v1j = permutations[v1i]
        #v2j = permutations[v2i]

        color = (120, 120, 120)
        v1 = vertices[v1i]
        v2 = vertices[v2i]
        pygame.draw.line(screen, color, project(v1), project(v2), 2)

    for idx, vertex in enumerate(vertices):
        jdx = permutations[idx]
        text = font.render(f"{jdx+1}", True, (255, 255, 255))
        screen.blit(text, project(vertex))

    pygame.display.flip()
    time.sleep(0.1)

