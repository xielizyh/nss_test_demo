# nss bin directory
NSS_BIN_DIR=/mnt/f/6---OneOS/ssl_tls/nss/dist/Debug/bin

# nss tstclnt usage
# 连接127.0.0.1:4433，不用证书数据库，忽视错误的服务器证书，tls1.3版本，密码套件，密钥交换曲线组，带外psk
$NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -D -o -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -v
# $NSS_BIN_DIR/tstclnt -h xieli.localdomain -p 4433 -d client -n TestUser -w nss -o -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -v

# openss s_server usage
# openssl s_server -nocert -tls1_3 -psk_identity test -psk aabbccdd -debug