# Maintainer: jmcb <joelsgp@protonmail.com>
pkgname=jmcb-pkgbuild-tools
pkgver=0.1.0
pkgrel=2
pkgdesc=""
arch=('any')
url="https://github.com/joelsgp-pkgbuild/_templates"
license=('GPL3')
depends=('base-devel')
makedepends=()
checkdepends=()
optdepends=('desktop-file-utils: lint .desktop files'
            'devtools: utilities'
            'dex: generate and run .desktop files'
            'gendesk: generate .desktop files via script'
            'namcap: lint PKGBUILD files'
            'pacman-contrib: utilities'
            'paru: aur helper')
provides=()
conflicts=()
source=('.gitignore'
        'new.sh'
        'printsrcinfo.sh'
        'PKGBUILD.default'
        'PKGBUILD.python')
sha256sums=('ba859633c082e8318f606d4bf358f7d1c42d8da63ecea468edd4bbef5867b706'
            '6a0e46efdc881e57a2f151cd3320ba4505caf0bcd898ed0fa71deda61571ab4d'
            '37e5d1692ace095bc52bbc83904f80a07b6374d0e6dc48086dffa05777ef9fd2'
            'feca10d1b6e127cbfc9ff4735d960d368a5eb471cfeb34ae1a13e06912ff573e'
            'df01fa008b223792f10d2b712e800d688d05cfe1d6ef4fc8178926262ec0b76c')


package() {
    _opt="opt/${pkgname}"
    _dest="${pkgdir}/${_opt}"

    # create dest
    install -d "${_dest}"

    # install data
    data_files=('.gitignore' 'PKGBUILD.default' 'PKGBUILD.python')
    install -m644 -t "${_dest}" "${data_files[@]}"
    # install executables
    executable_files=('new.sh' 'printsrcinfo.sh')
    install -t "${_dest}" "${executable_files[@]}"

    # symlink to executables
    _bin="${pkgdir}/usr/bin"
    install -d "${_bin}"
    for f in "${executable_files[@]}"
    do
      ln -s -t "${_bin}" "/${_opt}/${f}"
    done
}
