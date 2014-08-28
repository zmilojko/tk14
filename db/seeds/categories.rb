p 'Create sample categories'
@spu = Category.create! code: 'SpU 22',
                 description: 'Avoin sprintti 22km',
                 length: 22
@sp8 = Category.create! code: 'Sp8 17',
                 description: '8 koiran sprintti 17km',
                 length: 17
@sp6 = Category.create! code: 'Sp6 13,5',
                 description: '6 koiran sprintti 13,5km',
                 length: 13.5
@sp4 = Category.create! code: 'Sp4 8',
                 description: '4 koiran sprintti 8km',
                 length: 8
@sp4j = Category.create! code: 'Sp4J 8',
                 description: 'Nuoret 14-16 v. 4 koiran sprintti 8km',
                 length: 8
@md12 = Category.create! code: 'MD12 41',
                 description: '12 koiran keskipitkän matka 8km',
                 length: 41
@md6 = Category.create! code: 'MD6 41',
                 description: '6 koiran keskipitkän matka 41km',
                 length: 41

