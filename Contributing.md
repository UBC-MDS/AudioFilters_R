
# CONTRIBUTING


Writing atm
How to add changes?
Team members will add any changes via branching:
 - Create a new branch with the same name as this repo, then add _MemberInitials (for example: contributing_AG).
 
 
Make all changes in this branch, and commit and push your changes.
When the branch is ready to merge, open a pull request for the merge, tagging the other two contributors.
Once this issue is raised STOP working in this branch until the issue is resolved.
Either of the other contributors has full authority to merge changes.
When a branch is merged in with the Master, that branch should be immediately deleted.
Raising Issues
Please raise an issue for any and all things! As a courtesy, please tag all of the contributors.

Commit Messages
Remember that commit messages are the way to remember what was done, and keep messages meaningful.

Directory Structure
Keep all documents in the correct folder, when in doubt, ask the other contributors (perhaps in an issue?). Remember to cite any sources in the doc\references\README.md, which documents any citations.

Git Commands
Create a new branch

git branch -b [BRANCH NAME]
After completing some tasks:

Add all files that have been worked on

git add .
Add commit message

git commit -m '[COMMIT MESSAGE]'
Push from new branch for the first time

git push --set-upstream origin [BRANCH NAME]
Push anytime after that

git push
Navigate to Compare changes and create pull request for the branch of interest.

Wait for a member of the team to merge pull request.

If you need to update the branch that you are currently working in with the updated master branch:

git pull origin master


## Attribution

This Code of Conduct is adapted from the Contributor Covenant, version 1.0.0, available at https://www.contributor-covenant.org/version/1/0/0/code-of-conduct.html