GH_TOKEN = 3c5cb32f185ec77b192e17655063e9814aa2cf84
if [ "$TRAVIS_BRANCH" != "test" ]; then     
	exit 0;
Fi

git config -- global user.email= “james.colley@nottingham.ac.uk”
git config -- global user.name = “james colley”

git checkout master || exit
git merge "$TRAVIS_COMMIT" || exit
git push origin master ${GH_TOKEN}@github.com/jcolley/SQM-Junit.git

