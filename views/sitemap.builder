xml.instruct!
xml.urlset :xmlns => 'http://www.sitemaps.org/schemas/sitemap/0.9' do

  xml.url do
    xml.loc "#{@url}/"
    xml.lastmod Time.now().xmlschema
  end

  xml.url do
    xml.loc "#{@url}/index"
    xml.lastmod Time.now().xmlschema
  end

  xml.url do
    xml.loc "#{@url}/lifestyle"
    xml.lastmod Time.now().xmlschema
  end

  xml.url do
    xml.loc "#{@url}/photography"
    xml.lastmod Time.now().xmlschema
  end

end
