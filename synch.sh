echo "send file"
#!/bin/bash
export HOME=/tmp # so Git can write .gitconfig here
CLONE_DIR=/tmp/src-repo
apt-get install sudo -y
sudo chmod -R 777 /tmp/src-repo
pwd
ls -la
#GIT_SSH_COMMAND="ssh" git clone ssh://git-codecommit.us-east-2.amazonaws.com/v1/repos/MyDemoRepo my-demo-repo
DEST_REPO='https://ak0120+2-at-547321245783:516+zKNi6OIbOZLH07zrqy6XAj4PTFgnm2KZeqamL84=@git-codecommit.ap-south-1.amazonaws.com/v1/repos/zt-123_test'
SRC_REPO='https://ztak0120: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@github.com/ztak0120/IntelRepoTest.git'
rm -rf $CLONE_DIR
mkdir $CLONE_DIR
git clone --mirror "$SRC_REPO" $CLONE_DIR
cd $CLONE_DIR
git remote add dest "$DEST_REPO"
git push dest --mirror
echo 'DONE! Successfully mirrored source repo to destination!'
