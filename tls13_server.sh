# nss bin directory
NSS_BIN_DIR=/mnt/f/6---OneOS/ssl_tls/nss/dist/Debug/bin

# nss selfserv usage
$NSS_BIN_DIR/selfserv -n xieli.localdomain -p 4433 -d server -w nss -V tls1.3:tls1.3 -c :1301:1303 -I x25519,P256 -z 0xaabbccdd:test -v

# openss s_server usage
# openssl s_server -nocert -tls1_3 -psk_identity test -psk aabbccdd -debug