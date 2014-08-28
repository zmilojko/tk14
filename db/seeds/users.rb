p 'Create admin zeljko, password zeljko123, and many racers'
@zm = User.create! email: 'zeljko@z-ware.fi',
             password: 'zeljko123',
             password_confirmation: 'zeljko123',
             is_admin: true

@kp = User.create! email: 'kata@iloisettassut.fi',
             password: 'zeljko123',
             password_confirmation: 'zeljko123',
             full_name: 'Eeva Katariina Puolakanaho Milojkovic',
             display_name: 'Katariina Puolakanaho',
             nationality: :finland

@amf ||= User.create! email: 'antti.mäkiaho@example.com',
                  password: 'Antti1234567',
                  password_confirmation: 'Antti1234567',
                  display_name: 'Antti Mäkiaho',
                  nationality: :finland
@itp ||= User.create! email: 'igor.tracz@example.com',
                  password: 'Igor1234567',
                  password_confirmation: 'Igor1234567',
                  display_name: 'Igor Tracz',
                  nationality: :poland
@ehf ||= User.create! email: 'essi.hytönen@example.com',
                  password: 'Essi1234567',
                  password_confirmation: 'Essi1234567',
                  display_name: 'Essi Hytönen',
                  nationality: :finland
@ebs ||= User.create! email: 'elin.björk@example.com',
                  password: 'Elin1234567',
                  password_confirmation: 'Elin1234567',
                  display_name: 'Elin Björk',
                  nationality: :sweden
@rvc ||= User.create! email: 'renata.válková@example.com',
                  password: 'Renata1234567',
                  password_confirmation: 'Renata1234567',
                  display_name: 'Renata Válková',
                  nationality: :czechrepublic
@arp ||= User.create! email: 'agnieszka.rychwalska@example.com',
                  password: 'Agnieszka1234567',
                  password_confirmation: 'Agnieszka1234567',
                  display_name: 'Agnieszka Rychwalska',
                  nationality: :poland
@mhs ||= User.create! email: 'mikael.högberg@example.com',
                  password: 'Mikael1234567',
                  password_confirmation: 'Mikael1234567',
                  display_name: 'Mikael Högberg',
                  nationality: :sweden
@css ||= User.create! email: 'catarina.södersten@example.com',
                  password: 'Catarina1234567',
                  password_confirmation: 'Catarina1234567',
                  display_name: 'Catarina Södersten',
                  nationality: :sweden
@hhg ||= User.create! email: 'herbert.hiermeier@example.com',
                  password: 'Herbert1234567',
                  password_confirmation: 'Herbert1234567',
                  display_name: 'Herbert Hiermeier',
                  nationality: :germany
@kkn ||= User.create! email: 'krisztianroland.kiss@example.com',
                  password: 'KrisztianRoland1234567',
                  password_confirmation: 'KrisztianRoland1234567',
                  display_name: 'KrisztianRoland Kiss',
                  nationality: :norway
@sgs ||= User.create! email: 'sussie.grönberg@example.com',
                  password: 'Sussie1234567',
                  password_confirmation: 'Sussie1234567',
                  display_name: 'Sussie Grönberg',
                  nationality: :sweden
@hlf ||= User.create! email: 'heta.lehtomäki@example.com',
                  password: 'Heta1234567',
                  password_confirmation: 'Heta1234567',
                  display_name: 'Heta Lehtomäki',
                  nationality: :finland
@lpp ||= User.create! email: 'lukasz.paczynski@example.com',
                  password: 'Lukasz1234567',
                  password_confirmation: 'Lukasz1234567',
                  display_name: 'Lukasz Paczynski',
                  nationality: :poland
@dnc ||= User.create! email: 'dagmar.nesnerová@example.com',
                  password: 'Dagmar1234567',
                  password_confirmation: 'Dagmar1234567',
                  display_name: 'Dagmar Nesnerová',
                  nationality: :czechrepublic
@apf ||= User.create! email: 'anu.parikka@example.com',
                  password: 'Anu1234567',
                  password_confirmation: 'Anu1234567',
                  display_name: 'Anu Parikka',
                  nationality: :finland
@sbf ||= User.create! email: 'susanna.bürkland@example.com',
                  password: 'Susanna1234567',
                  password_confirmation: 'Susanna1234567',
                  display_name: 'Susanna Bürkland',
                  nationality: :finland
@mkl ||= User.create! email: 'martins.kristons@example.com',
                  password: 'Martins1234567',
                  password_confirmation: 'Martins1234567',
                  display_name: 'Martins Kristons',
                  nationality: :latvia
@ahf ||= User.create! email: 'alain.hercher@example.com',
                  password: 'Alain1234567',
                  password_confirmation: 'Alain1234567',
                  display_name: 'Alain Hercher',
                  nationality: :france
@tnf ||= User.create! email: 'tuomas.notko@example.com',
                  password: 'Tuomas1234567',
                  password_confirmation: 'Tuomas1234567',
                  display_name: 'Tuomas Notko',
                  nationality: :finland
@por ||= User.create! email: 'pavel.otbetkin@example.com',
                  password: 'Pavel1234567',
                  password_confirmation: 'Pavel1234567',
                  display_name: 'Pavel Otbetkin',
                  nationality: :russia
@spc ||= User.create! email: 'slavomir.pavlik@example.com',
                  password: 'Slavomir1234567',
                  password_confirmation: 'Slavomir1234567',
                  display_name: 'Slavomir Pavlik',
                  nationality: :czechrepublic
@jhn ||= User.create! email: 'julieboysen.hillestad@example.com',
                  password: 'JulieBoysen1234567',
                  password_confirmation: 'JulieBoysen1234567',
                  display_name: 'JulieBoysen Hillestad',
                  nationality: :norway
@acf ||= User.create! email: 'axel.coste@example.com',
                  password: 'Axel1234567',
                  password_confirmation: 'Axel1234567',
                  display_name: 'Axel Coste',
                  nationality: :france
@vlf ||= User.create! email: 'vilma.laitinen@example.com',
                  password: 'Vilma1234567',
                  password_confirmation: 'Vilma1234567',
                  display_name: 'Vilma Laitinen',
                  nationality: :finland
@khf ||= User.create! email: 'kimmo.hytönen@example.com',
                  password: 'Kimmo1234567',
                  password_confirmation: 'Kimmo1234567',
                  display_name: 'Kimmo Hytönen',
                  nationality: :finland
@cts ||= User.create! email: 'conny.töyrä@example.com',
                  password: 'Conny1234567',
                  password_confirmation: 'Conny1234567',
                  display_name: 'Conny Töyrä',
                  nationality: :sweden
@tkf ||= User.create! email: 'teemu.kaivola@example.com',
                  password: 'Teemu1234567',
                  password_confirmation: 'Teemu1234567',
                  display_name: 'Teemu Kaivola',
                  nationality: :finland
@ton ||= User.create! email: 'trine.olsen@example.com',
                  password: 'Trine1234567',
                  password_confirmation: 'Trine1234567',
                  display_name: 'Trine Olsen',
                  nationality: :norway
@rkf ||= User.create! email: 'riitta.kempe@example.com',
                  password: 'Riitta1234567',
                  password_confirmation: 'Riitta1234567',
                  display_name: 'Riitta Kempe',
                  nationality: :finland
@vlf2 ||= User.create! email: 'vesa-pekka.lehtomäki@example.com',
                  password: 'Vesa-Pekka1234567',
                  password_confirmation: 'Vesa-Pekka1234567',
                  display_name: 'Vesa-Pekka Lehtomäki',
                  nationality: :finland
@jtc ||= User.create! email: 'jirí.trnka@example.com',
                  password: 'Jirí1234567',
                  password_confirmation: 'Jirí1234567',
                  display_name: 'Jirí Trnka',
                  nationality: :czechrepublic
@jkf ||= User.create! email: 'jenni.kreivi@example.com',
                  password: 'Jenni1234567',
                  password_confirmation: 'Jenni1234567',
                  display_name: 'Jenni Kreivi',
                  nationality: :finland
@idl ||= User.create! email: 'indre.daujotiene@example.com',
                  password: 'Indre1234567',
                  password_confirmation: 'Indre1234567',
                  display_name: 'Indre Daujotiene',
                  nationality: :lithuania
@mbg ||= User.create! email: 'michael.beck@example.com',
                  password: 'Michael1234567',
                  password_confirmation: 'Michael1234567',
                  display_name: 'Michael Beck',
                  nationality: :germany
@mcs ||= User.create! email: 'montse.claverol@example.com',
                  password: 'Montse1234567',
                  password_confirmation: 'Montse1234567',
                  display_name: 'Montse Claverol',
                  nationality: :spain
@amf ||= User.create! email: 'antti.mäkiaho@example.com',
                  password: 'Antti1234567',
                  password_confirmation: 'Antti1234567',
                  display_name: 'Antti Mäkiaho',
                  nationality: :finland
@mcc ||= User.create! email: 'michael.chovanec@example.com',
                  password: 'Michael1234567',
                  password_confirmation: 'Michael1234567',
                  display_name: 'Michael Chovanec',
                  nationality: :czechrepublic
@abp ||= User.create! email: 'anna.bajer@example.com',
                  password: 'Anna1234567',
                  password_confirmation: 'Anna1234567',
                  display_name: 'Anna Bajer',
                  nationality: :poland
@atf ||= User.create! email: 'anttoni.tolvi@example.com',
                  password: 'Anttoni1234567',
                  password_confirmation: 'Anttoni1234567',
                  display_name: 'Anttoni Tolvi',
                  nationality: :finland
@lpp ||= User.create! email: 'lukasz.paczynski@example.com',
                  password: 'Lukasz1234567',
                  password_confirmation: 'Lukasz1234567',
                  display_name: 'Lukasz Paczynski',
                  nationality: :poland
@phf ||= User.create! email: 'pasi.heinonen@example.com',
                  password: 'Pasi1234567',
                  password_confirmation: 'Pasi1234567',
                  display_name: 'Pasi Heinonen',
                  nationality: :finland
@rsf ||= User.create! email: 'riku.setälä@example.com',
                  password: 'Riku1234567',
                  password_confirmation: 'Riku1234567',
                  display_name: 'Riku Setälä',
                  nationality: :finland
@akg ||= User.create! email: 'alexandra.kathan@example.com',
                  password: 'Alexandra1234567',
                  password_confirmation: 'Alexandra1234567',
                  display_name: 'Alexandra Kathan',
                  nationality: :germany
@cws ||= User.create! email: 'carl-johan.waller@example.com',
                  password: 'Carl-Johan1234567',
                  password_confirmation: 'Carl-Johan1234567',
                  display_name: 'Carl-Johan Waller',
                  nationality: :sweden
@hhg ||= User.create! email: 'herbert.hiermeier@example.com',
                  password: 'Herbert1234567',
                  password_confirmation: 'Herbert1234567',
                  display_name: 'Herbert Hiermeier',
                  nationality: :germany
@mtg ||= User.create! email: 'michael.tetzner@example.com',
                  password: 'Michael1234567',
                  password_confirmation: 'Michael1234567',
                  display_name: 'Michael Tetzner',
                  nationality: :germany
@vhf ||= User.create! email: 'ville.halme@example.com',
                  password: 'Ville1234567',
                  password_confirmation: 'Ville1234567',
                  display_name: 'Ville Halme',
                  nationality: :finland
@egl ||= User.create! email: 'eduard.grobinsch@example.com',
                  password: 'Eduard1234567',
                  password_confirmation: 'Eduard1234567',
                  display_name: 'Eduard Grobinsch',
                  nationality: :latvia
@svh ||= User.create! email: 'sophie.verla@example.com',
                  password: 'Sophie1234567',
                  password_confirmation: 'Sophie1234567',
                  display_name: 'Sophie Verla',
                  nationality: :hungary
@mtp ||= User.create! email: 'maciej.tomaszewski@example.com',
                  password: 'Maciej1234567',
                  password_confirmation: 'Maciej1234567',
                  display_name: 'Maciej Tomaszewski',
                  nationality: :poland
@klf ||= User.create! email: 'kaisa.lehto@example.com',
                  password: 'Kaisa1234567',
                  password_confirmation: 'Kaisa1234567',
                  display_name: 'Kaisa Lehto',
                  nationality: :finland
@fhn ||= User.create! email: 'frode.haugan@example.com',
                  password: 'Frode1234567',
                  password_confirmation: 'Frode1234567',
                  display_name: 'Frode Haugan',
                  nationality: :norway
@amr ||= User.create! email: 'aleksandr.moskvichev@example.com',
                  password: 'Aleksandr1234567',
                  password_confirmation: 'Aleksandr1234567',
                  display_name: 'Aleksandr Moskvichev',
                  nationality: :russia
@jbn ||= User.create! email: 'jos.broers@example.com',
                  password: 'Jos1234567',
                  password_confirmation: 'Jos1234567',
                  display_name: 'Jos Broers',
                  nationality: :netherlands
@hin ||= User.create! email: 'hege.ingerigtsen@example.com',
                  password: 'Hege1234567',
                  password_confirmation: 'Hege1234567',
                  display_name: 'Hege Ingerigtsen',
                  nationality: :norway
@kzs ||= User.create! email: 'kurt.zwingli@example.com',
                  password: 'Kurt1234567',
                  password_confirmation: 'Kurt1234567',
                  display_name: 'Kurt Zwingli',
                  nationality: :switzerland
@mtg ||= User.create! email: 'michael.tetzner@example.com',
                  password: 'Michael1234567',
                  password_confirmation: 'Michael1234567',
                  display_name: 'Michael Tetzner',
                  nationality: :germany
@tsg ||= User.create! email: 'tamara.schlemmer@example.com',
                  password: 'Tamara1234567',
                  password_confirmation: 'Tamara1234567',
                  display_name: 'Tamara Schlemmer',
                  nationality: :germany
@alf ||= User.create! email: 'ari.laitinen@example.com',
                  password: 'Ari1234567',
                  password_confirmation: 'Ari1234567',
                  display_name: 'Ari Laitinen',
                  nationality: :finland
@ksg ||= User.create! email: 'klaus.starflinger@example.com',
                  password: 'Klaus1234567',
                  password_confirmation: 'Klaus1234567',
                  display_name: 'Klaus Starflinger',
                  nationality: :germany
@crs ||= User.create! email: 'cari.rörström@example.com',
                  password: 'Cari1234567',
                  password_confirmation: 'Cari1234567',
                  display_name: 'Cari Rörström',
                  nationality: :sweden
@rcf ||= User.create! email: 'remy.coster@example.com',
                  password: 'Remy1234567',
                  password_confirmation: 'Remy1234567',
                  display_name: 'Remy Coster',
                  nationality: :france
@ads ||= User.create! email: 'alister.dunlop@example.com',
                  password: 'Alister1234567',
                  password_confirmation: 'Alister1234567',
                  display_name: 'Alister Dunlop',
                  nationality: :scotland
@psf ||= User.create! email: 'panu.sipilä@example.com',
                  password: 'Panu1234567',
                  password_confirmation: 'Panu1234567',
                  display_name: 'Panu Sipilä',
                  nationality: :finland
@rrg ||= User.create! email: 'rudi.ropertz@example.com',
                  password: 'Rudi1234567',
                  password_confirmation: 'Rudi1234567',
                  display_name: 'Rudi Ropertz',
                  nationality: :germany
@ppc ||= User.create! email: 'pavel.pfeifer@example.com',
                  password: 'Pavel1234567',
                  password_confirmation: 'Pavel1234567',
                  display_name: 'Pavel Pfeifer',
                  nationality: :czechrepublic
@pkf ||= User.create! email: 'pauliina.kiiski@example.com',
                  password: 'Pauliina1234567',
                  password_confirmation: 'Pauliina1234567',
                  display_name: 'Pauliina Kiiski',
                  nationality: :finland
@asr ||= User.create! email: 'aleksandr.stoliarov@example.com',
                  password: 'Aleksandr1234567',
                  password_confirmation: 'Aleksandr1234567',
                  display_name: 'Aleksandr Stoliarov',
                  nationality: :russia
@mvc ||= User.create! email: 'martin.vrtel@example.com',
                  password: 'Martin1234567',
                  password_confirmation: 'Martin1234567',
                  display_name: 'Martin Vrtel',
                  nationality: :czechrepublic
@gbp ||= User.create! email: 'grzegorz.burzynski@example.com',
                  password: 'Grzegorz1234567',
                  password_confirmation: 'Grzegorz1234567',
                  display_name: 'Grzegorz Burzynski',
                  nationality: :poland
@hma ||= User.create! email: 'horst.maas@example.com',
                  password: 'Horst1234567',
                  password_confirmation: 'Horst1234567',
                  display_name: 'Horst Maas',
                  nationality: :austria
@jss ||= User.create! email: 'johan.sernheim@example.com',
                  password: 'Johan1234567',
                  password_confirmation: 'Johan1234567',
                  display_name: 'Johan Sernheim',
                  nationality: :sweden
@jef ||= User.create! email: 'joni.elomaa@example.com',
                  password: 'Joni1234567',
                  password_confirmation: 'Joni1234567',
                  display_name: 'Joni Elomaa',
                  nationality: :finland
@kkf ||= User.create! email: 'kati.kumpulainen@example.com',
                  password: 'Kati1234567',
                  password_confirmation: 'Kati1234567',
                  display_name: 'Kati Kumpulainen',
                  nationality: :finland
@slf ||= User.create! email: 'suvi.lahtinen@example.com',
                  password: 'Suvi1234567',
                  password_confirmation: 'Suvi1234567',
                  display_name: 'Suvi Lahtinen',
                  nationality: :finland
@gzc ||= User.create! email: 'gregor.zdenek@example.com',
                  password: 'Gregor1234567',
                  password_confirmation: 'Gregor1234567',
                  display_name: 'Gregor Zdenek',
                  nationality: :czechrepublic
@paf ||= User.create! email: 'pia.alpua@example.com',
                  password: 'Pia1234567',
                  password_confirmation: 'Pia1234567',
                  display_name: 'Pia Alpua',
                  nationality: :finland

