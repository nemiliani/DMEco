import os
import settings
from field_names import FIELD_NAMES

if __name__ == '__main__':
    with open(os.path.join(settings.DATA_PATH, settings.DATA_FILE), 'r') as f:
        r1 = f.readline().split('\t')
        r2 = f.readline().split('\t')
        for i in range(171):
            if r1[i] != r2[i]:
                print '%s:%s -> %s' % (r1[i], r2[i], FIELD_NAMES[i])
