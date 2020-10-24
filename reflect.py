import os

output_lines = []
for file_name in os.listdir('.'):
    ext = file_name.split('.')[-1]
    if ext not in ['csv', 'txt', 'tsv', 'json']:
        continue
    output_lines.append(file_name)

    content = open(file_name).read()
    lines = content.split('\n')
    first_line = lines[0]
    if ext == 'csv':
        for k in first_line.split(','):
            output_lines.append('\t%s' % (k))
    elif ext in ['tsv', 'txt']:
        for k in first_line.split('\t'):
            output_lines.append('\t%s' % (k))

    output_lines.append('.' * 32)


fout = open('reflect.output.txt', 'w')
fout.write('\n'.join(output_lines))
fout.close()
