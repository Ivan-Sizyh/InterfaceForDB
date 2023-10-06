# Создаем типы библиотек
types_data = [
  { library_type: 'Универсальная' },
  { library_type: 'Взрослая' },
  { library_type: 'Школьная' },
  { library_type: 'Централизованная' },
  { library_type: 'Публичная' }
]

Type.create!(types_data)

libraries_data = [
  { type: Type.find(1), title: 'Государственная универсальная научная библиотека Красноярского края', city: 'Красноярск', address: '​Карла Маркса 114' },
  { type: Type.find(2), title: 'Центральная городская библиотека им. А.М. Горького', city: 'Красноярск', address: '​Перенсона 23' },
  { type: Type.find(3), title: 'Библиотека им. К.Г. Паустовского', city: 'Красноярск', address: '​Водянникова 2' },
  { type: Type.find(4), title: 'Красноярская краевая детская библиотека ', city: 'Красноярск', address: '​Корнетова 2' },
  { type: Type.find(5), title: 'Библиотека школы №103', city: 'Железногорск', address: '60 Лет ВЛКСМ 32' },
]

Library.create!(libraries_data)

employee_data = [
  { library: Library.find(1), first_name: 'Валерий', last_name: 'Жмышенко', position: 'Директор', 
    birth_date: (Date.current - 30.years), start_work_date: (Date.current - 2.years), salary: 80_000,
    education: 'Управление библиотекой' },
  { library: Library.find(2), first_name: 'Виталий', last_name: 'Цаль', position: 'Библиотекарь', 
    birth_date: (Date.current - 30.years), start_work_date: (Date.current - 2.years), salary: 30_000, 
    education: 'Управление библиотекой' },
  { library: Library.find(3), first_name: 'Сергей', last_name: 'Галимов', position: 'Директор',
    birth_date: (Date.current - 20.years), start_work_date: (Date.current - 1.year), salary: 80_000,
    education: 'Управление библиотекой' },
  { library: Library.find(4), first_name: 'Иван', last_name: 'Иванов', position: 'Библиотекарь',
    birth_date: (Date.current - 30.years), start_work_date: (Date.current - 3.years), salary: 30_000,
    education: 'Библиотекарь' },
  { library: Library.find(5), first_name: 'Петр', last_name: 'Петров', position: 'Директор',
    birth_date: (Date.current - 30.years), start_work_date: (Date.current - 10.years), salary: 70_000,
    education: 'Управление компанией' }
]

Employee.create!(employee_data)

founds_data = [
  { library: Library.find(1), title: 'Фонд 1', books: 100, magazines: 50, newspapers: 30, collections: 10,
    dissertations: 5, essays: 20 },
  { library: Library.find(2), title: 'Фонд 2', books: 120, magazines: 70, newspapers: 40, collections: 15,
    dissertations: 7, essays: 25 },
  { library: Library.find(3), title: 'Фонд 3', books: 80, magazines: 60, newspapers: 35, collections: 12,
    dissertations: 3, essays: 18 },
  { library: Library.find(4), title: 'Фонд 4', books: 90, magazines: 55, newspapers: 25, collections: 8,
    dissertations: 4, essays: 15 },
  { library: Library.find(5), title: 'Фонд 5', books: 110, magazines: 65, newspapers: 37, collections: 14,
    dissertations: 6, essays: 22 }
]

Found.create!(founds_data)

replenishments_data = [
  { 
    library: Library.find(1), 
    employee: Employee.find(1),
    found: Found.find(1),
    data_receipt: Date.current - 30.days,
    source_title: 'Источник 1',
    data_replenishment: Date.current - 25.days,
    publishing_house: 'Издательство 1',
    instances: 10
  },
  {
    library: Library.find(2),
    employee: Employee.find(2),
    found: Found.find(2),
    data_receipt: Date.current - 40.days,
    source_title: 'Источник 2',
    data_replenishment: Date.current - 35.days,
    publishing_house: 'Издательство 2',
    instances: 15
  },
  {
    library: Library.find(3), 
    employee: Employee.find(3),
    found: Found.find(3),
    data_receipt: Date.current - 55.days,
    source_title: 'Источник 3',
    data_replenishment: Date.current - 40.days,
    publishing_house: 'Издательство 3',
    instances: 15
  },
  {
    library: Library.find(4), 
    employee: Employee.find(4),
    found: Found.find(4),
    data_receipt: Date.current - 20.days,
    source_title: 'Источник 4',
    data_replenishment: Date.current - 15.days,
    publishing_house: 'Издательство 4',
    instances: 15
  },
  {
    library: Library.find(5), 
    employee: Employee.find(5),
    found: Found.find(5),
    data_receipt: Date.current - 10.days,
    source_title: 'Источник 5',
    data_replenishment: Date.current - 5.days,
    publishing_house: 'Издательство 5',
    instances: 15
  }
]

Replenishment.create!(replenishments_data)
