require 'formula'

class Lftp <Formula
  url 'http://www.sfr-fresh.com/unix/misc/lftp-4.0.7.tar.gz'
  homepage 'http://lftp.yar.ru/'
  md5 '2676808c93244c3207db0ec6f8bb4b85'

  depends_on 'readline'
  depends_on 'pkg-config'
  depends_on 'gnutls'

  def install
    # Bus error
    ENV.no_optimization if MACOS_VERSION == 10.5

    system "./configure", "--prefix=#{prefix}", "--disable-dependency-tracking"
    system "make install"
  end
end
