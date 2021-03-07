# export LD_LIBRARY_PATH=/mnt/f/6---OneOS/ssl_tls/nss/dist/Debug/lib:$LD_LIBRARY_PATH
# nss bin directory
NSS_BIN_DIR=/mnt/f/6---OneOS/ssl_tls/nss/dist/Debug/bin

# nss tstclnt usage
# 绑定127.0.0.1:4433，证书路径，证书名，数据库密码，tls1.3版本，密码套件，密钥交换曲线组，带外psk，dtls as server，verbose 
$NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -d client -n TestUser -w nss -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -P server -v
# $NSS_BIN_DIR/tstclnt -h 127.0.0.1 -p 4433 -D -V tls1.3:tls1.3 -z 0xaabbccdd:test -P server