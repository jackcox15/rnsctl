# for arch builds 
pkgname=rnsctl
pkgver=1.0.0
pkgrel=1
pkgdesc="User-friendly control panel for Reticulum mesh networks"
arch=('any')
url="https://github.com/yourusername/rnsctl"
license=('MIT')
depends=('libnewt' 'sqlite' 'curl' 'bash')
optdepends=(
  'reticulum: Core mesh networking'
  'reticulum-meshchat: Mesh messaging application'
  'wireguard-tools: VPN connectivity'
)
source=("$pkgname-$pkgver.tar.gz::$url/archive/v$pkgver.tar.gz")
sha256sums=('SKIP')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  
  install -Dm755 rnsctl "$pkgdir/usr/bin/rnsctl"
  install -Dm644 README.md "$pkgdir/usr/share/doc/$pkgname/README.md"
  install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"
}
