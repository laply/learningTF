import pandas as pd
import numpy as np
import json # json - parsing 

# file read 

record = json.loads('LoadData') # json file 

records = [json.loads(line) for line in open('path', encoding='UTF8')] # like this
frame = pd.DataFrame(records) # 한번에 데이터를 넣을 수 있다. 
frame.info()


# table 내에서 읽을 column을 선택한후 ::의 구분자로 되어있는 파일에서 데이터 read (.dat) 형식 (1::Toy Story (1995)::Animation|Children's|Comedy)
unames = ['user_id', 'gender', 'age', 'occupation', 'zip']
users = pd.read_table('users.dat', sep='::', header=None, name=unames)
rnames = ['user_id', 'movie_id', 'rating', 'timestamp']
ratings = pd.read_table('users.dat', sep='::', header=None, name=rnames)
mnames = ['movie_id', 'title', 'genres']
movies = pd.read_table('users.dat', sep='::', header=None, name=mnames)


data = pd.merge(pd.merge(ratings, users), movies) # 데이터 합치는 것도 가능


name1880 = pd.read_csv('babynames/yob1880.txt', names=['names', 'sex', 'births']) # .text file read ( Mary,F,7065 ) ,을 기준으로 분리하여 습득

# 파일이 여러개로 나누어져 있을때 
years = range(1880, 2011) # 추출할 년도를 정하고 
pieces = []
columns = ['names', 'sex', 'births'] #각 데이터 처리 
for year in years:
    path = 'babynames/yob%d.txt'%year
    frame = pd.read_csv(path, names=columns)
    
    frame['year'] = year
    pieces.append(frame)

names = pd.concat(pieces, ignore_index=True)