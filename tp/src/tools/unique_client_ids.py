import os
import settings
from field_names import FIELD_NAMES

if __name__ == '__main__':
    idmap = {}
    with open(os.path.join(settings.DATA_PATH, settings.DATA_FILE), 'r') as f:
        for line in f:
            reg = line.split('\t')
            try :
                idmap[int(reg[0])] += 1
            except KeyError:
                idmap[int(reg[0])] = 1
    for k,v in idmap.iteritems():
        print k
