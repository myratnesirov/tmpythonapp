import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class Kod extends StatelessWidget {
  final List<String> at = <String>[
    '1 Duşman vs Oýunçy',
    '2 Hereketli Ýazgy',
    '3 Kalkulýator Ýazmak',
    '4 Kafe Kassa',
    '5 Kitaphana',
    '6 Kontakt',
    '7 Funksiýa args',
    '8 Class I',
    '9 Sapaklaryň Ýetişigi',
    '10 Hasaplama Ulgamy',
    '11 Funksiýanyň Grafigi',
  ];

  final List<String> kody = <String>[
    '''
import random, os

class Dusman():
    def __init__(self):
        self.diri = True
        self.jan = random.randint(30, 70)
        self.gorag = random.randint(0, 10)
        self.guyc = random.randint(20, 50)

    def ur(self, oyuncy):
        giden_jan = self.guyc - oyuncy.gorag
        oyuncy.jan -= giden_jan
        if oyuncy.jan <= 0:
            oyuncy.diri = False

class Oyuncy():
    def __init__(self):
        self.diri = True
        self.jan = 300
        self.gorag = 20
        self.guyc = 55

    def ur(self, dusman):
        giden_jan = self.guyc - dusman.gorag
        dusman.jan -= giden_jan
        if dusman.jan <= 0:
            dusman.diri = False
            dusmanlar.remove(dusman)
dusmanlar = list()
for i in range(10):
    dusmanlar.append(Dusman())

oyuncy = Oyuncy()

while True:
    os.system('cls')
    print('Oyuncy => Jan: {} | Guyc: {} | Gorag: {}'.format(oyuncy.jan, oyuncy.guyc, oyuncy.gorag))
    print('_______________________________________________________')
    if oyuncy.diri == False:
        print('Waaa Utyldyn, masgaraaaaa :=)')
        quit()
    if not dusmanlar:
        print('Malades Atabay!')
    for i in dusmanlar:
        print('{} Dusman => Jan: {} | Guyc: {} | Gorag: {}'.format(dusmanlar.index(i), i.jan, i.guyc, i.gorag))
    print('___________________________________________________')

    sayla = int(input('Urjak dusmanyny sayla: '))
    dusman = dusmanlar[sayla]
    oyuncy.ur(dusman)
    if dusmanlar:
        uran = dusmanlar[random.randint(0, len(dusmanlar)-1)]
        uran.ur(oyuncy)
          ''',
    '''
  from tkinter import *
  
  r = Tk()
  r.geometry('500x200')
  r.title('TURKMENCE PYTHON')
  r.resizable(FALSE, FALSE)
  r.configure(bg='black')
  
  yazgy = 'T U R K M E N C E  P Y T H O N'
  yazgy = (' '*40) + yazgy + (' '*40)
  
  text = Text(r, height=1, width=20, font='verdana 20 bold', fg='blue')
  text.place(x=50, y=50)
  
  i =0
  
  def yazdyr(x, i):
      text.insert('1.1', x)
      if i == len(yazgy):
          i = 0
      else:
          i = i+1
      r.after(80, lambda: yazdyr(yazgy[i:i+40], i))
  
  yazdyr(yazgy[i:i+40], i)
  
  r.mainloop()
          ''',
    '''
from tkinter import *

t = Tk()
t.title('Kalkulyator')

e = Entry(t, width = 35, borderwidth = 5)
e.grid(row=0, column=0, columnspan=3, padx=10, pady=10)

def bas(san):
    hazirki = e.get()
    e.delete(0, END)
    e.insert(0, str(hazirki) + str(san))

def c():
    e.delete(0, END)

def gosmak():
    birinji_san = e.get()
    global bir_san
    global amal
    amal = 'gosmak'
    bir_san = int(birinji_san)
    e.delete(0, END)

def ayyrmak():
    birinji_san = e.get()
    global bir_san
    global amal
    amal = 'ayyrmak'
    bir_san = int(birinji_san)
    e.delete(0, END)

def kopeltmek():
    birinji_san = e.get()
    global bir_san
    global amal
    amal = 'kopeltmek'
    bir_san = int(birinji_san)
    e.delete(0, END)

def bolmek():
    birinji_san = e.get()
    global bir_san
    global amal
    amal = 'bolmek'
    bir_san = int(birinji_san)
    e.delete(0, END)

def dendir():
    ikinji_san = e.get()
    e.delete(0, END)
    if amal == 'gosmak':
        e.insert(0, bir_san + int(ikinji_san))
    if amal == 'ayyrmak':
        e.insert(0, bir_san - int(ikinji_san))
    if amal == 'kopeltmek':
        e.insert(0, bir_san * int(ikinji_san))
    if amal == 'bolmek':
        e.insert(0, bir_san / int(ikinji_san))

button_1 = Button(t, text='1', padx=40, pady=20, command = lambda: bas(1))
button_2 = Button(t, text='2', padx=40, pady=20, command = lambda: bas(2))
button_3 = Button(t, text='3', padx=40, pady=20, command = lambda: bas(3))
button_4 = Button(t, text='4', padx=40, pady=20, command = lambda: bas(4))
button_5 = Button(t, text='5', padx=40, pady=20, command = lambda: bas(5))
button_6 = Button(t, text='6', padx=40, pady=20, command = lambda: bas(6))
button_7 = Button(t, text='7', padx=40, pady=20, command = lambda: bas(7))
button_8 = Button(t, text='8', padx=40, pady=20, command = lambda: bas(8))
button_9 = Button(t, text='9', padx=40, pady=20, command = lambda: bas(9))
button_0 = Button(t, text='0', padx=40, pady=20, command = lambda: bas(0))
button_gosmak = Button(t, text='+', padx =40, pady=20, command = gosmak)
button_ayyrmak = Button(t, text='-', padx =40, pady=20, command = ayyrmak)
button_kopeltmek = Button(t, text='*', padx =40, pady=20, command = kopeltmek)
button_bolmek = Button(t, text='/', padx =40, pady=20, command = bolmek)
button_dendir = Button(t, text='=', padx=40, pady =20, command = dendir)
button_C = Button(t, text='C', padx=40, pady=20, command = c)

button_7.grid(row=1, column=0)
button_8.grid(row=1, column=1)
button_9.grid(row=1, column=2)
button_gosmak.grid(row=1, column=3)

button_4.grid(row=2, column=0)
button_5.grid(row=2, column=1)
button_6.grid(row=2, column=2)
button_ayyrmak.grid(row=2, column=3)

button_1.grid(row=3, column=0)
button_2.grid(row=3, column=1)
button_3.grid(row=3, column=2)
button_kopeltmek.grid(row=3, column=3)

button_C.grid(row=4, column=0)
button_0.grid(row=4, column=1)
button_dendir.grid(row=4, column=2)
button_bolmek.grid(row=4, column=3)

mainloop()
          ''',
    '''
yerler = dict()

for i in range(10):
    yerler[i] = 0

def toleggos():
    yerNo = int(input("Stol No: "))
    if yerNo < 10:
        toleg = yerler[yerNo]
        gosulmaly = float(input("Gosuljak Toleg: "))
        jemi = toleg + gosulmaly
        yerler[yerNo] = jemi
    else:
        print("1-10 arasynda stol nomer girin!")
        print("Menu ucin Enter'e basyn!")
        input()

def tolegayyr():
    yerNo = int(input("Stol No: "))
    if yerNo < 10:
        toleg = yerler[yerNo]
        ayyrmaly = float(input("Ayryljak Toleg: "))
        jemi = toleg - ayyrmaly
        if jemi < 0:
            print("Yalnyslyk bar, tazeden barlap gorun!")
        else:
            yerler[yerNo] = jemi
    else:
        print("1-10 arasynda stol nomer girin!")
        print("Menu ucin Enter'e basyn!")
        input()

def tolegkontrol(tolegfile):
    maglumatlar = list()
    try:
        file = open(tolegfile)
        maglumatlar = file.read()
        maglumatlar = maglumatlar.split(" ")
        maglumatlar.pop()
        file.close()
        flag = True
    except FileNotFoundError:
        file = open(tolegfile,"w")
        file.close()
        print("Maglumat file'y doredildi!")
        flag = False
    if flag:
        for i in enumerate(maglumatlar):
            yerler[i[0]] = float(i[1])
    else:
        pass

def infoupdate():
    file = open("info.txt", "w")
    for i in range(10):
        toleg = yerler[i]
        toleg = str(toleg)
        file.write(toleg)
    file.close()

def main():
    tolegkontrol("info.txt")
    while True:
        print("""
        
        [1] Yerleri Gor
        [2] Toleg Gos
        [3] Toleg Ayyr
        [4] Cykys
        
        """)
        sayla = input("1-4 arasynda saylan: ")
        if sayla == "1":
            for i in range(10):
                print("Stol: {}  ucin toleg: {}".format(i, yerler[i]))
        elif sayla == "2":
            toleggos()
            infoupdate()
            print("Tamamlandy!")
            print("Menu ucin Enter'e basyn!")
            input()
        elif sayla == "3":
            tolegayyr()
            print("Tamamlandy!")
            print("Menu ucin Enter'e basyn!")
            input()
        elif sayla == "4":
            quit()
        else:
            print("Yalnys Girdiniz!")
            print("Menu ucin Enter'e basyn!")
            input()
main()
          ''',
    '''
kitaphana = list()
menu = """

[1] Kitap Gos
[2] Kitap Al
[3] Kitaphana Sanawy
[4] Cykys

"""
def kg(kitap:tuple, sanaw:list):
    sanaw.append(kitap)
    print("Kitap Gosuldy!")
    print("Enter for menu")
    input()
def ka(kitap:tuple,sanaw:list):
    if kitap in sanaw:
        sanaw.remove(kitap)
        print("Kitaby Aldynyz!")
        print("Press Enter for menu")
        input()
    else:
        print("Gozleyan kitabynyz tapylmady :(")
        print("Press enter for menu")
        input()
def ks(sanaw:list):
    for i in sanaw:
        print("Kitabyn Ady:     {}     |    Awtory:     {}".format(i[0],i[1]))
        print("Press enter for menu")
        input()
while True:
    print(menu)
    sec = input("Menu dan saylan!")
    if sec == "1":
        ady = input("Gosmak isleyan kitabynyzyn ady: ")
        awtor = input("Kitabyn Awtory: ")
        kg((ady,awtor),kitaphana)
    elif sec == "2":
        ady = input("Aljak kitabynyzyn ady: ")
        awtor = input("Awtoryn ady: ")
        ka((ady,awtor),kitaphana)
    elif sec == "3":
        ks(kitaphana)
    elif sec == "4":
        quit()
    else:
        print("Yalnys Girdiniz, Tazeden Synap Gorun!")
        print("Press Enter for menu")
        input()
          ''',
    '''
contact = {
    "Annadurdy":{
        "Oy adresi":"6, Zaybal boldum koce, Biderek obasy, Dashoguz Welayat",
        "Is adresi":"74, Doyduk koce, Irdik saheri. Yokbol welayat",
        "Is nomeri":"12356777",
        "El nomeri":"98764322"
    },
    "Amanguly":{
        "Oy adresi":"34, Yolcy koce, Yolagcy obasy, Lebap Weelayat",
        "Is adresi":"26, Haydar koce, Jaydar obasy, Paydar Welayat",
        "Is nomeri":"03975674",
        "El nomeri":"85234589"
    }
}

menu = """
____________
[1] Gozleg
[2] Cykys
____________
"""
while True:
    print(menu)
    sayla = input("Menudan saylan: ")
    if sayla == "1":
        atlar = contact.keys()
        gozlegadam = input("Kimi gozleyipdurusun: ")
        if gozlegadam in atlar:
            gozlegzat = input("Gozleyan zadynyz: ")
            print(contact.get(gozlegadam).get(gozlegzat, "Tapylmady"))
        else:
            print("Gozleyan kishiniz tapylmady!")
    elif sayla == "2":
        print("Cykylyar....")
        break
    else:
        print("Yalnys girdiniz tazeden synap gorun: ")
        input()
          ''',
    '''
def f(*args):
    jem = 0
    for i in args:
        jem += i
    return jem
print(f(2,3,4,5,6,7))
          ''',
    '''
class Player():
    def __init__(self,at,guyc):
        self.name = at
        self.power = guyc
    def namechange(self, at):
        self.at = at
Myrat = Player("Myrat",90)
Myrat.namechange("Maksat")
print(Myrat.at)
          ''',
    '''
from tkinter import *
from tkinter import ttk

r = Tk()
r.title('TURKMENCE PYTHON UNIVERSITY')
r.geometry('1000x600')
r.resizable(FALSE, FALSE)

def garsyla():
    s1 = str(entady.get())
    s2 = str(entfamiliya.get())
    s3 = str(entid.get())
    lbgarsyla['text'] = 'Hos Geldin ' + s1 + ' ' + s2 + ' (' + s3 + ')' + 'Bahalarynyzy barlamak ucin girizin'

def baha():
    s1 = int(entsynag.get())
    s2 = int(entfinal.get())
    global final
    final = s1*0.4 + s2*0.6
    lbbaha['text'] = str(final)

def yetisik():
    if final >= 90:
        lbyetisik['text'] = 'Goreldeli'
    elif final >=80:
        lbyetisik['text'] = 'Gowy'
    elif final >=70:
        lbyetisik['text'] = 'Kanagatlanarly'
    else:
        lbyetisik['text'] = 'Ýykyldyňyz :('

lb = Label(r, text='SAPAKLARYŇ ÝETIŞIGI', font='verdana 16 bold', fg='red')
lb.place(x=390, y=10)
lbady = Label(r, text='TALYP ADY', font='verdana 12 bold')
lbady.place(x=40, y=70)
lbfamiliya = Label(r, text="TALYP FAMILIYA", font='verdana 12 bold')
lbfamiliya.place(x=40, y=120)
lbid = Label(r, text='TALYP ID', font='verdana 12 bold')
lbid.place(x=530, y=70)
lbbolum = Label(r, text='BÖLÜM/UGUR', font='verdana 12 bold')
lbbolum.place(x=530, y=120)
lbsynag = Label(r, text='SYNAG BAHASY', font='verdana 12 bold')
lbsynag.place(x=40, y=300)
lbfinal = Label(r, text='FINAL BAHASY', font='verdana 12 bold')
lbfinal.place(x=40, y=400)
entady = Entry(r, font='verdana 12 bold', width=20)
entady.place(x=250, y=70)
entfamiliya = Entry(r, font='verdana 12 bold', width=20)
entfamiliya.place(x=250, y=120)
entid = Entry(r, font='verdana 12 bold', width=20)
entid.place(x=725, y=70)
entsynag = Entry(r, font='verdana 12 bold', width=20)
entsynag.place(x=250, y=300)
entfinal = Entry(r, font='verdana 12 bold', width=20)
entfinal.place(x=250, y=400)

lbgarsyla = Label(r, font='verdana 12 bold', bg='green')
lbgarsyla.place(x=350, y=240)
lbbaha = Label(r, font='verdana 12 bold', bg='red')
lbbaha.place(x=750, y=300)
lbyetisik = Label(r, font='verdana 12 bold', bg='red')
lbyetisik.place(x=750, y=400)

entbolum = ttk.Combobox(r, font='verdana 12 bold', width=20)
entbolum['value'] = ('Sayla:', 'Fizika', 'Matematika', 'Himiya', 'Biologiya', 'Inzner')
entbolum.current(0)
entbolum.place(x=725, y=120)

btgiris = Button(r, text='Giriş', font='verdana 12 bold', command=garsyla)
btgiris.place(x=460, y=190)
btbaha = Button(r, text='Jemleýji Baha', font='verdana 12 bold', command=baha)
btbaha.place(x=530, y=300)
btyetisik = Button(r, text='Ýetişigi', font='verdana 12 bold', command=yetisik)
btyetisik.place(x=530, y=400)


r.mainloop()
          ''',
    '''
from tkinter import *
from tkinter import ttk

r = Tk()
r.title('HASAPLAMA ULGAMY')
r.geometry('650x600')
r.resizable(FALSE, FALSE)
r.configure(bg='light blue')

def baha():
    s1 = str(entpalaw.get())
    if s1.isdigit():
        s1 = int(entpalaw.get())
    else:
        s1 = 0
        
    s2 = str(entcorba.get())
    if s2.isdigit():
        s2 = int(entcorba.get())
    else:
        s2 = 0

    s3 = str(entpizza.get())
    if s3.isdigit():
        s3 = int(entpizza.get())
    else:
        s3 = 0

    s4 = str(entayran.get())
    if s4.isdigit():
        s4 = int(entayran.get())
    else:
        s4 = 0

    s5 = str(entkola.get())
    if s5.isdigit():
        s5 = int(entkola.get())
    else:
        s5 = 0
        
    s6 = str(entsuw.get())
    if s6.isdigit():
        s6 = int(entsuw.get())
    else:
        s6 = 0

    s7 = str(entmedewik.get())
    if s7.isdigit():
        s7 = int(entmedewik.get())
    else:
        s7 = 0

    s8 = str(enttort.get())
    if s8.isdigit():
        s8 = int(enttort.get())
    else:
        s8 = 0

    s9 = str(entbaklava.get())
    if s9.isdigit():
        s9 = int(entbaklava.get())
    else:
        s9 = 0

    lbjemi['text'] = str(s1*10 + s2*8 + s3*15 + s4*2 + s5*3 + s6*1 + s7*3 + s8*4 + s9*2)

def ocur():
    entpalaw.delete(0, END)
    entcorba.delete(0, END)
    entpizza.delete(0, END)
    entayran.delete(0, END)
    entkola.delete(0, END)
    entsuw.delete(0, END)
    entmedewik.delete(0, END)
    enttort.delete(0, END)
    entbaklava.delete(0, END)

    lbjemi['text'] = ' '

lbady = Label(r, text='HASAP ULGAMY', font='verdana 20 bold', fg='green', bg='light blue')
lbady.place(x=190, y=10)
lbnahar = Label(r, text='NAHAR', font='verdana 20 bold', bg='white')
lbnahar.place(x=50, y=70)
lbicgi = Label(r, text='ICGI', font='verdana 20 bold', bg='white')
lbicgi.place(x=260, y=70)
lbsuyji = Label(r, text='SUYJI', font='verdana 20 bold', bg='white')
lbsuyji.place(x=460, y=70)
lbpalow = Label(r, text='PALOW (10 \$)', font='verdana 12 bold', bg='light blue')
lbpalow.place(x=30, y=130)
lbcorba = Label(r, text='CORBA (8 \$)', font='verdana 12 bold', bg='light blue')
lbcorba.place(x=30, y=220)
lbpizza = Label(r, text='PIZZA (15 \$', font='verdana 12 bold', bg='light blue')
lbpizza.place(x=30, y=310)
lbayran = Label(r, text='AYRAN (2 \$)', font='verdana 12 bold', bg='light blue')
lbayran.place(x=240, y=130)
lbkola = Label(r, text='KOLA (3 \$)', font='verdana 12 bold', bg='light blue')
lbkola.place(x=240, y=220)
lbsuw = Label(r, text='SUW (1 \$)', font='verdana 12 bold', bg='light blue')
lbsuw.place(x=240, y=310)
lbmedewik = Label(r, text='MEDEWIK (3 \$)', font='verdana 12 bold', bg='light blue')
lbmedewik.place(x=440, y=130)
lbtort = Label(r, text='TORT (4 \$)', font='verdana 12 bold', bg='light blue')
lbtort.place(x=440, y=220)
lbbaklava = Label(r, text='BAKLAVA (2 \$)', font='verdana 12 bold', bg='light blue')
lbbaklava.place(x=440, y=310)
entpalaw = Entry(r, font='verdana 12 bold')
entpalaw.place(x=40, y=170, width=90)
entcorba = Entry(r, font='verdana 12 bold')
entcorba.place(x=40, y=260, width=90)
entpizza = Entry(r, font='verdana 12 bold')
entpizza.place(x=40, y=350, width=90)
entayran = Entry(r, font='verdana 12 bold')
entayran.place(x=240, y=170, width=90)
entkola = Entry(r, font='verdana 12 bold')
entkola.place(x=240, y=260, width=90)
entsuw = Entry(r, font='verdana 12 bold')
entsuw.place(x=240, y=350, width=90)
entmedewik = Entry(r, font='verdana 12 bold')
entmedewik.place(x=450, y=170, width=90)
enttort = Entry(r, font='verdana 12 bold')
enttort.place(x=450, y=260, width=90)
entbaklava = Entry(r, font='verdana 12 bold')
entbaklava.place(x=450, y=350, width=90)
lbjemi = Label(r, font='verdana 20 bold')
lbjemi.place(x=300, y=430)
btjemi = Button(r, text='JEMI TOLEG:', font='verdana 20 bold', bg='green', command=baha)
btjemi.place(x=30, y=420)
btocur = Button(r, text='OCUR', font='verdana 20 bold', bg='red', command=ocur)
btocur.place(x=280, y=520)

r.mainloop()
          ''',
    '''
import tkinter
from numpy import arange, sin, cos, square, sqrt
from matplotlib.backends.backend_tkagg import FigureCanvasTkAgg, NavigationToolbar2Tk
from matplotlib.figure import Figure

r = tkinter.Tk()

f = Figure(figsize=(10, 8), dpi=100)
a = f.add_subplot(111)
t = arange(-10.0, 10.0, 0.001)
s = square(t)
a.plot(t, s)

canvas = FigureCanvasTkAgg(f, master=r)
canvas.get_tk_widget().pack(side=tkinter.BOTTOM, fill=tkinter.BOTH)

toolbar = NavigationToolbar2Tk(canvas, r)
toolbar.update()

r.mainloop()
          '''
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      title: 'Türkmençe Python',
      home: TodosScreen(
          todos: List.generate(11, (index) => Todo(at[index], kody[index]))),
    );
  }
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('VIDEO SAPAKLAR'),
        ),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blueGrey[800],
            child: ListTile(
              leading: Icon(
                Icons.code,
                color: Colors.white,
              ),
              title: Text(
                todos[index].title,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              // When a user taps the ListTile, navigate to the DetailScreen.
              // Notice that you're not only creating a DetailScreen, you're
              // also passing the current todo through to it.
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(),
                    // Pass the arguments as part of the RouteSettings. The
                    // DetailScreen reads the arguments from these settings.
                    settings: RouteSettings(
                      arguments: todos[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;

    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.only(right: 10, left: 10),
          children: <Widget>[
            Text(
              todo.description,
              style: TextStyle(fontSize: 18, letterSpacing: 2, wordSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}
