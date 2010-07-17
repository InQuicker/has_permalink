# coding: utf-8

module FriendlyUrl
  def normalize(str)
    str = "" if str.blank?
    n = str.mb_chars.downcase.strip.to_s
    n.gsub!(/[àáâãäåāă]/,     'a')
    n.gsub!(/æ/,              'ae')
    n.gsub!(/[ďđ]/,           'd')
    n.gsub!(/[çćčĉċ]/,        'c')
    n.gsub!(/[èéêëēęěĕė]/,    'e')
    n.gsub!(/ƒ/,              'f')
    n.gsub!(/[ĝğġģ]/,         'g')
    n.gsub!(/[ĥħ]/,           'h')
    n.gsub!(/[ììíîïīĩĭ]/,     'i')
    n.gsub!(/[įıĳĵ]/,         'j')
    n.gsub!(/[ķĸ]/,           'k')
    n.gsub!(/[łľĺļŀ]/,        'l')
    n.gsub!(/[ñńňņŉŋ]/,       'n')
    n.gsub!(/[òóôõöøōőŏŏ]/,   'o')
    n.gsub!(/œ/,              'oe')
    n.gsub!(/ą/,              'q')
    n.gsub!(/[ŕřŗ]/,          'r')
    n.gsub!(/[śšşŝș]/,        's')
    n.gsub!(/[ťţŧț]/,         't')
    n.gsub!(/[ùúûüūůűŭũų]/,   'u')
    n.gsub!(/ŵ/,              'w')
    n.gsub!(/[ýÿŷ]/,          'y')
    n.gsub!(/[žżź]/,          'z')
    n.gsub!(/\s+/,            '-')
    n.gsub!(/[^\sa-z0-9_-]/,  '')
    n.gsub!(/-{2,}/,          '-')
    n
  end
end
