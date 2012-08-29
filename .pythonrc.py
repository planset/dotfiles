import os

HISTORYFILE = os.path.join(os.environ['HOME'], ".pythonhistory")
try:
    import rlcompleter, readline
    readline.parse_and_bind("tab: complete")
    readline.parse_and_bind("set input-meta on")
    readline.parse_and_bind("set convert-meta off")
    readline.parse_and_bind("set output-meta on")
    try:
        f = open(HISTORYFILE, "a")
        f.close()
        readline.read_history_file(HISTORYFILE)
    except IOError:
        pass
    try:
        import atexit
        atexit.register(lambda: readline.write_history_file(HISTORYFILE))
    except:
        pass
except:
    pass

try:
    from see import see
except:
    pass

del os
