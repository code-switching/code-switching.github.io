import fileinput

def file_to_conll(lines):
    current = None
    for line in lines:
        fields = line.strip().split('\t')
        
        if not current:
            current = fields[0]

        if fields[0] != current:
            current = fields[0]
            print("")
            
        print("{}\t{}".format(fields[4], fields[5]))
    print("")
    
def main():
    file_to_conll(fileinput.input())

if __name__ == '__main__':
    main()