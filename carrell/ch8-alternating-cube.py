import itertools, numpy as np, pygame, time

class Permutation:

    def __init__(self, perms):
        self.perms = perms

    def __call__(self, i):
        return self.perms[i - 1] + 1

    def sgn(self):
        s = 1
        for j in range(1, 4+1):
            for i in range(1, j):
                s *= (self(i) - self(j)) / (i - j)
        return int(s)

S4 = [Permutation(σ) for σ in itertools.permutations(range(4), 4)]
A4 = [σ for σ in S4 if σ.sgn() == 1]

pygame.init()

screen = pygame.display.set_mode((800, 600), pygame.RESIZABLE)
stopped = False

font = pygame.font.SysFont('dejavusans', 50, bold=True)

i = 0
n = len(A4) - 1

edges = [
    # top right corner
    (0, 3, (255, 0, 0)),
    (0, 1, (100, 55, 0)),
    (0, 4, (92, 100, 0)),
    # top opposite corner
    (2, 3, (37, 100, 0)),
    (2, 1, (0, 100, 18)),
    (2, 6, (0, 100, 73)),
    # bottom right corner
    (7, 3, (0, 90, 100)),
    (7, 4, (0, 73, 100)),
    (7, 6, (33, 0, 100)),
    # bottom opposite corner
    (5, 1, (92, 0, 100)),
    (5, 4, (100, 0, 55)),
    (5, 6, (255, 255, 255)),
]

vertices = [
    # anti-clockwise
    (1, 1, 1),
    (-1, 1, 1),
    (-1, -1, 1),
    (1, -1, 1),
    # bottom
    (1, 1, -1),
    (-1, 1, -1),
    (-1, -1, -1),
    (1, -1, -1),
]

diagonals = [
    (0, 6),
    (1, 7),
    (2, 4),
    (3, 5)
]

center = None
ex, ey, ez = None, None, None

def project(v):
    v = v[0]*ex + v[1]*ey - v[2]*ez + center
    return int(v[0]), int(v[1])

while not stopped:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            print("Received quit!")
            stopped = True
        elif event.type == pygame.KEYDOWN:
            if event.key == pygame.K_UP:
                i += 1
                if i > n:
                    i = 0
            elif event.key == pygame.K_DOWN:
                i -= 1
                if i < 0:
                    i = n

    σ = A4[i]

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

