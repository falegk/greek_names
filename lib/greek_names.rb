# coding: utf-8
require "greek_names/version"

module GreekNames
  extend self

  # returns the vocative name
  #  GreekNames.vocative("Γιώργος")
  #   => "Γιώργο"
  #  GreekNames.vocative("Αλέξανδρος")
  #   => "Αλέξανδρε"
  #  2.1.3 :001 > GreekNames.vocative("Αντώνης")
  #   => "Αντώνη"
  #  2.1.3 :002 > GreekNames.vocative("Μαρία")
  #   => "Μαρία"
  def vocative(string)
    if string[-2..-1].match(/(ας)|(ης)|(ΑΣ)|(ΗΣ)/)
      string.chop
    elsif string[-2..-1].match(/(ος|ός)|(ΟΣ)/)
      maleInOS(string)
    else
      string
    end
  end


  def maleInOS(string)
    case string.to_s[-4..-1]
      when /(γος)|(άνος|ανος)|(τος)|(ΓΟΣ)|(ΑΝΟΣ)|(ΓΟΣ)/ then string.chop
      else string[-2..-1].match(/(ΟΣ)/) ? string.gsub('ΟΣ','Ε') : string.gsub(/(ός|ος)/,'ε')
    end
  end

end
