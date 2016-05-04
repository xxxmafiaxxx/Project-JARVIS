from win32com.client import Dispatch

def triggerEvent(event):
    eg = Dispatch("EventGhost")
    eg.TriggerEvent(event)

if __name__ == "__main__":
    import sys
    triggerEvent(sys.argv[1])
