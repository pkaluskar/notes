Find out if the osxkeychain credential helper is already installed by trying to run it:

git credential-osxkeychain
# Test for the cred helper
# Usage: git credential-osxkeychain <get|store|erase>
If the osxkeychain helper isn't installed, download it with curl:

git credential-osxkeychain
# Test for the cred helper
# git: 'credential-osxkeychain' is not a git command. See 'git --help'.
curl -s -O \
https://github-media-downloads.s3.amazonaws.com/osx/git-credential-osxkeychain
# Download the helper
chmod u+x git-credential-osxkeychain
# Fix the permissions on the file so it can be run
Install the helper into the same directory where Git itself is installed:

sudo mv git-credential-osxkeychain \
"$(dirname $(which git))/git-credential-osxkeychain"
# Move the helper to the path where git is installed
# Password: [enter your password]
Tell Git to use osxkeychain using the global credential.helper config:

git config --global credential.helper osxkeychain
# Set git to use the osxkeychain credential helper


// Installing R-packages
a <- available.packages()
// To see the available packages (there are over 6k today)
head(rownames(a), 3)

// to install packages
install.packages("package-name")
install.packages(c("pkga", "pkgb", pkgc"))

// to install from a different source (bioconductor.org) for instance
source("http://bioconductor.org/biocLite.R")
biocLite()	// Need to run this first time you source from bioconductor.org
buocLite(c("GenomicsFeatures", "AnnotationDbi"))



