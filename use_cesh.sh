#!/ban/bash
read -p "请输入你要检查的用户名：" username
if id "$username" &>/dev/null; then
    uid=$(id -u "$username")
    echo "用户 $username 存在，并且为UID = :$uid "
else
    echo "用户 $username 不存在"
fi
