#
# /etc/fstab を敢えて壊してシリアルコンソールから修理する
#
# Special Thanks Koike-san 
#
# 最初に設定を確認しておく
#

[aloha@kauai ~]$ cat /etc/fstab
#
# /etc/fstab
# Created by anaconda on Wed Apr 25 21:45:20 2018
#
# Accessible filesystems, by reference, are maintained under '/dev/disk'
# See man pages fstab(5), findfs(8), mount(8) and/or blkid(8) for more info
#

#ポータルからディスク追加

#disk の確認
fdisk -l

# フォーマット
fdisk /dev/sdc

# Partition 1 を作成

# フォーマット
mkfs -t xfs /dev/sdc1

# /etc/fstab を修正
mikdir /mountpoint #マウントポイント作成
mount /mountpoint

# 確認
df -k





[root@kauai ~]# blkid
/dev/sda1: UUID="107be985-8ac6-476b-abe4-68ff704dd477" TYPE="xfs" 
/dev/sda2: UUID="729b50a2-b5fc-411a-afab-a4367bb89980" TYPE="xfs" 
/dev/sdb1: UUID="667bea05-9e97-4a11-9965-fd6d45ad8ea7" TYPE="ext4" 
[