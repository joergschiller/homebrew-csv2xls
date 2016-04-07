class Csv2xls < Formula
  desc "command-line utility which converts csv files into Excel(TM) files"
  homepage "https://ferkulat.github.io/csv2xls/"
  url "https://github.com/ferkulat/csv2xls/releases/download/0.3.4/csv2xls-0.3.4.tar.bz2"
  sha256 "b14fb863bb9305eb11b9ba8b18001016d8a029af2715bb5e61f53c844923e10c"

  depends_on "xlslib"
  depends_on "libcsv"

  def install
    system "./configure", "--disable-debug"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/csv2xls", "--version"
  end
end
