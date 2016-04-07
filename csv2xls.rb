class Csv2xls < Formula
  desc "command-line utility which converts csv files into Excel(TM) files"
  homepage "https://ferkulat.github.io/csv2xls/"
  url "https://github.com/ferkulat/csv2xls/releases/download/0.3.5/csv2xls-0.3.5.tar.bz2"
  sha256 "580a1d39b5d37bfa1b63ff5b1c9d4008243a738e416f417c8dbaaffa83079c45"

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
