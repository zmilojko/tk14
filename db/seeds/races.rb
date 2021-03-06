p 'Creating races'

@spu_day1 = Race.create! category: @spu,
                         race_time: Time.new(2014, 3, 7, 10),
                         name: 'SpU Day 1',
                         status: :closed
@spu_day2 = Race.create! category: @spu,
                         race_time: Time.new(2014, 3, 8, 10),
                         name: 'SpU Day 2',
                         status: :ongoing,
                         intermediate_points: "5km 10km 15km"

@sp8_day1 = Race.create! category: @sp8,
                         race_time: Time.new(2014, 3, 7, 11),
                         name: 'Sp8 Day 1',
                         status: :closed

@sp8_day2 = Race.create! category: @sp8,
                         race_time: Time.new(2014, 3, 8, 11),
                         name: 'Sp8 Day 2',
                         status: :ongoing,
                         intermediate_points: "5km 10km 15km"

@sp6_day1 = Race.create! category: @sp6,
                         race_time: Time.new(2014, 3, 7, 12),
                         name: 'Sp6 Day 1',
                         status: :closed

@sp6_day2 = Race.create! category: @sp6,
                         race_time: Time.new(2014, 3, 7, 12),
                         name: 'Sp6 Day 2',
                         status: :ongoing,
                         intermediate_points: "5km 10km 15km"


@sp4_day1 = Race.create! category: @sp4,
                         race_time: Time.new(2014, 3, 7, 13),
                         name: 'Sp4 Day 1',
                         status: :closed

@sp4_day2 = Race.create! category: @sp4,
                         race_time: Time.new(2014, 3, 7, 13),
                         name: 'Sp4 Day 2',
                         intermediate_points: "5km 10km 15km"


@sp4j_day1 = Race.create! category: @sp4j,
                         race_time: Time.new(2014, 3, 7, 13, 30),
                         name: 'Sp4J Day 1',
                         status: :closed

@sp4j_day2 = Race.create! category: @sp4j,
                         race_time: Time.new(2014, 3, 7, 13, 30),
                         name: 'Sp4J Day 2',
                         intermediate_points: "5km 10km 15km"


@md12_day1 = Race.create! category: @md12,
                         race_time: Time.new(2014, 3, 7, 14),
                         name: 'MD12 Day 1',
                         status: :closed

@md12_day2 = Race.create! category: @md12,
                         race_time: Time.new(2014, 3, 7, 14),
                         name: 'MD12 Day 2',
                         status: :ongoing,
                         intermediate_points: "5km 10km 15km"


@md6_day1 = Race.create! category: @md6,
                         race_time: Time.new(2014, 3, 7, 15, 30),
                         name: 'MD6 Day 1',
                         status: :closed

@md6_day2 = Race.create! category: @md6,
                         race_time: Time.new(2014, 3, 7, 15, 30),
                         name: 'MD6 Day 2',
                         status: :completed,
                         intermediate_points: "5km 10km 15km"
