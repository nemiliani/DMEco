if __name__ == '__main__':
    with open('producto_premium_2014.txt','r') as prod:
        with open('producto_premium_2014.txt.csv','w') as out:
            for line in prod:
                params = line.split('\t')
                out.write(','.join(params))
