# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_role: "administrator", user_status: "xxx",user_name: "tom",user_password_hash: "xxxxxxxx",
user_fullname: "tom wang",user_email: "xxx@qq.com",user_gender:"male",user_age: "20")
Paper.create(user_id:'1',submitted_date:'08-09-2015',paper_status:'xxxx',moderator_id:'1',moderated_time:'01-01-2011',
analyst_id:'1',analysed_time:'01-02-2013',authors:'xxx',title:'xxx',journal:'xxx',publish_year:'2013',publish_volume:'13',
publish_pages:'13',publish_month:'Dec',credibility_rate:'xx',research_metrix:'xx',research_aim:'xxx',research_method_field1:'true',
research_method_field2:'true',research_method_field3:'true',research_method_field4:'false',participant1:'true',
participant2:'true',participant3:'false',participant4:'true')  
Methodology.create(methodology_name:"Scrum",description:"xxx")
Methodology.create(methodology_name:"Waterfall",description:"xxx")
Methodology.create(methodology_name:"Spiral",description:"xxx")
Methodology.create(methodology_name:"XP",description:"xxx")
Methodology.create(methodology_name:"Rational Unified Process",description:"xxx")
Methodology.create(methodology_name:"Crystal",description:"xxx")
Methodology.create(methodology_name:"Clean room",description:"xxx")
Methodology.create(methodology_name:"Feature Driven Development",description:"xxx")
Methodology.create(methodology_name:"Model Driven Development",description:"xxx")
Methodology.create(methodology_name:"Domain Driven Development",description:"xxx")
Methodology.create(methodology_name:"Formal methods",description:"xxx")
Methodology.create(methodology_name:"Problem Driven Development",description:"xxx")
Methodology.create(methodology_name:"Cloud computing",description:"xxx")
Methodology.create(methodology_name:"Service Oriented Development",description:"xxx")
Methodology.create(methodology_name:"Aspect Oriented Development",description:"xxx")
Methodology.create(methodology_name:"Valuse Driven Development",description:"xxx")
Methodology.create(methodology_name:"Product Driven Development",description:"xxx")
Methodology.create(methodology_name:"Agile",description:"xxx")
Se_method.create([{methodology_id:"5",method_name:"TDD"},{methodology_id:"7",method_name:"BDD"}])
