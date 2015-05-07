Party.destroy_all
Promise.destroy_all

labour = Party.create!(name: "Labour")
conservatives = Party.create!(name: "Conservatives")
green = Party.create!(name: "Green")
libdem = Party.create!(name: "Liberal Democrats")

labour_promises = [
# The economy
  "Every policy in the manifesto will be paid for without requiring any additional borrowing.",
  "Cut the deficit every year.",
  "Strong, fair fiscal rules to balance the books.", 
  "National debt decrease.",
  "Surplus on the current budget as soon as possible in the next parliament.",
  "Raise the minimum wage to more than £8 by October 2019.",
  "Reverse the cut to the 50p top rate of income tax (it is currently 45p) so that the top 1% pay a little more to help get the deficit down.",
  "A commitment not to raise the basic or higher rate of income tax, national insurance or VAT.",
  "Cut and then freeze business rates and maintain the most competitive corporate tax rates in the G7.",
  "Abolish non-domicile tax status.",
  "End exploitative zero-hours contracts.",
  "Guarantee an apprenticeship for every school leaver who attains the grades and require any firm that gets a large government contract to offer apprenticeships.",
  "Reduce university tuition fees to £6,000 a year.",
  "Freeze energy bills until 2017 and give the regulator the power to cut bills this winter.",
  "Introduce a British Investment Bank and support a network of regional banks.",
  "Help rail passengers and commuters with a fully funded fare freeze.",
  "Protect tax credits in the next parliament to support working families, and review Universal Credit.",
  "Launch an “all-out assault” on tax avoidance so that working people do not pay more.",
  "A mansion tax on properties worth over £2m and a levy on tobacco firms to help fund the NHS.",

# Health and education
  "Recruit 8,000 more GPs, 20,000 more nurses and 3,000 more midwives.",
  "Guarantee GP appointments within 48 hours and cancer tests within one week.",
  "Join up services from home to hospital, with a single point of contact for all who need it.",
  "Give mental health the same priority as physical health, with a new right to access talking therapies.",
  "Stop the privatisation of the NHS", 
  "Cap profits for private firms on NHS contracts",
  "End time-limited 15-minute social care visits and recruit 5,000 new care workers to support people in their home.",
  "Introduce a gold-standard Technical Baccalaureate for 16- to 18-year-olds.",
  "Protect the entire education budget from early years through to post-16 education.",
  "Guarantee that all teachers in state schools will be qualified.",
  "Appoint directors of school standards to drive up standards in every area.",
  "Cap class sizes for 5, 6 and 7 year-olds.",
  "Ensure all young people study English and maths to age 18.",

# Families and communities
  "Extend free childcare from 15 to 25 hours for working parents of 3 and 4 year-olds",
  "Double paternity leave from two to four weeks and increase paternity pay by more than £100 a week.",
  "Ensure at least 200,000 new homes a year are built by 2020, with first priority for local first-time buyers.",
  "Provide security for renters by guaranteeing three-year tenancies with a ceiling on excessive rent rises.",
  "Introduce a compulsory jobs guarantee, paid for by a bank bonus tax.",
  "Abolish the bedroom tax.",
  "Ensure migrants will not be able to claim benefits until they have lived in the UK for at least two years.",
  "Make it illegal for employers to undercut wages by exploiting workers.",
  "Protect neighbourhood policing by safeguarding the roles of more than 10,000 frontline police officers over the next three years.",
  "Give football fans a voice in club boardrooms.",

# Reforming government
  "Set up a people-led constitutional convention to determine the future of UK’s governance.",
  "Replace the House of Lords with a Senate of the Nations and Regions.",
  "Pass an English Devolution Act.",
  "Give new powers for communities to shape their high streets.",
  "Transfer further powers to Scotland and Wales.",
  "Give 16 and 17 year-olds the right to vote.",
  "Create a statutory register of lobbyists.",
  "Ban MPs from holding paid directorships and consultancies.",
  "Require large companies to publish their gender pay gap.",
  "Implement the recommendations of the Leveson inquiry on the media.",

# Britain’s interests in the world
  "Conduct a strategic defence and security review.",
  "Return Britain to a leadership role in Europe, but reform the EU so that it works for Britain.",
  "Guarantee no powers will be transferred to Brussels without an in/out referendum.",
  "Appoint an international LGBT rights envoy and a global envoy for religious freedom.",
  "Outlaw discrimination against and abuse of members of the armed forces.",
  "Enshrine the military covenant in the NHS constitution.",
  "Push for global targets to tackle inequality and promote human rights .",
  "Establish a Centre for Universal Health Coverage.",
  "Push for an ambitious target in Paris to reach the goal of net zero global emissions in the second half of this century.",
  "Support the principles behind the negotiations on the Transatlantic Trade and Investment Partnership Treaty (TTIP)"
].each do |promise|
  labour.promises.create!(content: promise)
end

conservative_promises = [
# Health
  "Increase NHS spending to £8bn a year by 2020.",
  "Provide seven-day-a-week access to NHS services.",
  "Guarantee that everyone over 75 will get a same-day GP’s appointment if they need one.",

# Education
  "Lift the cap on university places.",
  "Freeze the amount of government spending per school pupil.",
  "Turn every failing and “coasting” secondary school into an academy and create free schools for parents who want them.",
  "Make children resit SATs upon arrival at secondary school if they have not reached the required standards.",
  "Require secondary school pupils to take GCSEs in English, maths, science, a language and history or geography, with Ofsted unable to award its highest ratings to schools that refuse to teach these core subjects.",
  "Introduce a national postgraduate loan system for taught masters and PhD courses.",

# Work
  "Raise the income tax threshold to £12,500.",
  "Legislate so that nobody working 30 hours on the minimum wage pays income tax on what they earn.",
  "Reduce the benefits cap to £23,000.",

# Housing
  "Extend the right-to-buy scheme to housing association tenants.",
  "Build 200,000 starter homes for first-time buyers under the age of 40, to be sold at 20% below the market rate.",
  "Extend Help to Buy to cover another 120,000 homes.",
  "Introduce a new Help to Buy ISA to help young people save a deposit for their first home.",

# Childcare
  "Provide 30 hours of free childcare to working parents of 3 and 4 year-olds.",

# Tax
  "Not raise VAT, national insurance or income tax, but raise the 40p income tax threshold to £50,000.",
  "Increase the inheritance tax threshold for homes to £1m.",

# Pensions
  "Continue to increase the state pension by at least 2.5%.",

# Immigration
  "Keep an ambition of delivering annual net migration in the tens of thousands, not the hundreds of thousands.",
  "Negotiate new rules with the EU so that people will have to be earning income in the UK for a number of years before they can claim benefits, including the tax credits that top up low wages.",

# Culture
  "Conduct a comprehensive review of the BBC royal charter and freeze the licence fee pending charter renewal.",
  "Consult on the introduction of a business-rate relief for local newspapers in England.",

# European Union  
  "Scrap the Human Rights Act and introduce a British bill of rights.",
  "Have an in/out referendum on Britain’s membership of the EU before the end of 2017.",

# National security
  "Maintain the size of the regular armed services and not reduce army personnel numbers below 82,000.",
  "Retain the Trident nuclear weapons programme and build a new fleet of four Successor ballistic missile submarines.",
  "Outlaw groups that stir up hate with the introduction of banning orders for extremist organisations."
].each do |promise|
  conservatives.promises.create!(content: promise)
end

green_promises = [
# The economy
  "Abandon GDP and the pursuit of growth as the measure of economic success. Instead use a measure of Adjusted National Product (ANP), which would take account of capital and environmental depreciation and include the value of things not currently paid for, such as unpaid work at home.",
  "The plans in the manifesto require borrowing of £338bn in real terms over the parliament",

# Tax
  "Introduce a Robin Hood tax (a financial transaction tax) and controls on bank lending.",
  "Introduce a wealth tax of 2% a year on the top 1%.",
  "Raise the additional top rate of income tax to 60% and increase corporation tax from 20% to 30%.",

# The environment
  "Protect, expand, properly fund and improve non-vehicular access to national parks.",
  "Increase national spending on recycling and waste disposal by about 50%.",
  "Aim to recycle 70% of domestic waste by 2020 as a move towards a zero-waste system.",
  "Ban waste food and other organic material being sent to landfill.",
  "Break up large vertically integrated companies so that they can’t both produce energy and supply it to customers.",
  "Cut energy demand by a third by 2020, a half by 2030 and two thirds by 2050.",
  "Provide a free nationwide retrofit insulation programme, concentrated on areas where fuel poverty is most serious.",
  "Provide £4.5bn over the parliament to support research and development into less energy-intensive industrial processes.",
  "Preventing new building on flood plains.",

# Animal protection
  "Introduce a ban on cages for hens and rabbits on farms, with mandatory CCTV in slaughterhouses, and ban the production and sale of foie gras.",
  "Introduce tougher regulations on animal transportation and end the overuse of antibiotics.",
  "Ban the importing of exotic pets.",
  "End the badger cull.",
  "Ban the use of whips in horse racing.",
  "End all non-medical experiments using primates, cats and dogs; and end government funding for animal experimentation.",

# Science and Technology
  "Increase government funding on scientific research from 0.5% to 1% of GDP over the next decade.",

# Equalities
  "Reinstate funding for the Equality and Human Rights Commission.",
  "Require all police forces to have quality and diversity liaison officers.",
  "Apologise to and pardon all men convicted of consenting adult same-sex relations under anti-gay laws that have now been repealed.",
  "Require 40% of all members of public company and public sector boards to be women.",
  "Increase the budget for the disability living allowance/personal independence payments",
  "Return to a system where a GP assesses whether a person is fit to work, rather than an external contractor.",
  "Lower the voting age to 16.",
  "Raise the age of criminal responsibility from 10 to 14.",

# Health
  "Repeal the Health and Social Care Act.",
  "Stop further private finance initiative (PFI) contracts and end the sale of NHS assets.",
  "Immediately increase the NHS budget by £12bn a year.",
  "Provide the right to an assisted death 'within a framework of regulation and in the context of the availability of the highest level of palliative care'.",

# Education
  "Integrate grammar schools into the comprehensive school system, and integrate academies and free schools into the local authority system.",
  "Remove charity status from private schools.",
  "Have class sizes of 20.",
  "Abolish Sats and league tables.",
  "Restore the education maintenance allowance for 16- and 17-year-olds.",
  "Abolish tuition fees.",
  "Cancel student debt issued by the Student Loans Company.",

# Housing
  "Give the Bank of England the powers it has requested to limit the size of mortgages in relation to the property value and the borrower’s income.",
  "Introduce higher council tax bands.",
  "Build 500,000 new social rental homes.",
  "Abolish the bedroom tax.",

# Work
  "Increase the minimum wage to the living wage of £10 an hour by 2020, and to £8.10 an hour this year.",
  "Phase in 35-hour weeks.",
  "Ban zero-hours contracts.",
  "Introduce a maximum pay ratio of 10:1 between the best paid and worst paid in any organisation.",

# Benefits
  "Raise child benefit from £20.70 a week for the eldest child (plus £13.70 for additional children) to £40 a week for each child.",
  "Introduce a citizen’s pension of £180 a week (£310 for a couple), paid regardless of contribution record.",

# Democracy
  "Reform the House of Lords to become an elected body chosen by proportional representation.",
  "Introduce state funding for political parties.",

# Transport
  "Bring the railways into public ownership.",
  "End the national major roads programme.",

# Defence
  "Cancelling Trident renewal."
].each do |promise|
  green.promises.create!(content: promise)
end

libdem_promises = [
# Economy
  "Eradicate the structural current budget deficit by 2017/18 and have debt falling as a percentage of national income.",
  "Continue the banking levy and introduce a time-limited supplementary corporation tax charge on the banking sector.",

# Environment
  "Pass a Zero Carbon Britain Act to set a new legally binding target to bring greenhouse emissions to zero by 2050.",

# Transport
  "Develop a comprehensive plan to electrify the overwhelming majority of the UK rail network and push ahead with HS2.",
  "Raise the personal allowance to at least £12,500.",
  "Restrict access to non-dom status, by ending the right to inherit it.",

# Childcare
  "Extend shared parental leave with a “use it or lose it” month for fathers.",
  "Extend free childcare to all two-year-olds for working families.",
  "Commit to 20 hours free childcare a week for parents with children aged two to four.",

# Benefits
  "Remove eligibility for the winter fuel payment and free TV licence from pensioners who pay tax at the higher rate.",

# Work
  "Conduct a review of the fairness of the work capability assessment and personal independence payment assessments.",
  "Legislate to maintain the triple lock on pensions - to increase the state pension by the highest of earnings growth, prices growth or at least 2.5%.",

# Freedom of information
  "Extend freedom of information laws to cover private companies delivering public services.",

# Education
  "Protect the early years, school, sixth form and college budgets.",
  "Extend free school meals to all primary pupils.",
  "Double the number of businesses hiring apprentices.",
  "Increase the early years pupil premium to £1,000 per pupil per year.",
  "Establish a review of higher education finance.",

# Health
  "£8bn more funding a year by 2020 to the NHS.",
  "Invest £500m in mental healthcare and introduce waiting time standards in line with physical health.",

# Housing
  "Set a goal of 300,000 homes a year, including 10 new garden cities in areas where homes are most needed.",
  "New rent to own homes where your monthly payments steadily buy you a stake in the property.",

# Equal rights
  "Introduce a digital bill of rights.",

# Democracy
  "Enforce a £10,000 cap on donations to political parties.",
  "Give 16-year-olds the vote.",
  "Reform voting systems at local and national level to ensure more proportional representation.",
  "Reform the House of Lords, cutting its size by nearly half."
].each do |promise|
  libdem.promises.create!(content: promise)
end