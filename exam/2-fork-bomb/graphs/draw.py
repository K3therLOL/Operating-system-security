import matplotlib.pyplot as plt
from datetime import datetime

with open("../benchmarks/metric", "r") as log:
    times, cpus, rams, pids = [], [], [], []
    for line in log:
        objs = line.split()
        times.append(objs[0])
        cpus.append(float(objs[1].removesuffix("%")))
        mem_chunk = 0
        if objs[2].endswith("KiB"):
            mem_chunk = float(objs[2].removesuffix("KiB")) / 2 ** 10
        else:
            mem_chunk = float(objs[2].removesuffix("MiB"))
        rams.append(mem_chunk)
        pids.append(float(objs[3]))

x = []
for time in times:
    start = datetime.strptime(times[0], "%H:%M:%S")
    end = datetime.strptime(time, "%H:%M:%S")
    diff = end - start
    x.append(diff.total_seconds())

def draw_line_graph(x, y, x_label, y_label, title):
    plt.plot(x, y, label="Performance")
    plt.title(title)
    plt.xlabel(x_label)
    plt.ylabel(y_label)
    plt.savefig(f"{title}.png")
    plt.clf()

draw_line_graph(x, cpus, "t, seconds", "cpu, %", "CPU")
draw_line_graph(x, rams, "t, seconds", "ram, MiB", "RAM")
draw_line_graph(x, pids, "t, seconds", "pids", "PIDS")
