require 'ghee'

gh = Ghee.basic_auth("Kevin19901001", "Fhq19901001")
all_gists = gh.users("nusco").gists
a_gist =  all_gists[20]
#p a_gist.url
p a_gist.description