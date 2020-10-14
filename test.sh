mkdir gitrepo; 
cd gitrepo;

git init
git clone https://github.com/Bikash7349/bikash1.git
cd bikash1
last_commit_id=`Git log | head -n 1 | cut -d " " -f 2`
echo $last_commit_id
sql=`git diff --name-only bc91e7644d3db6189457c285c3beb07cc28ea3ac $last_commit_id`
echo $sql
mod 777 $sql
#mysql -u root -p new_db < $sql 
cd /usr/local/mysql/bin

#mysql -u root -p new_db < /Users/bikashgupta/gitrepo/bikash1/$sql
source `/Users/bikashgupta/gitrepo/bikash1/$sql`

