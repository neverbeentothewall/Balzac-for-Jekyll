def entry(path, date, attrs, site)
  # Remove the trailing slash from the baseurl if it is present, for consistency.
  baseurl = site.config['url']
  baseurl = baseurl[0..-2] if baseurl=~/\/$/
 
  entry = "\n\t<url>\n\t\t<loc>#{baseurl}#{path}</loc>\n"
  entry += "\t\t<lastmod>#{date.strftime("%Y-%m-%d")}</lastmod>\n" unless date.nil?
  entry += attrs.map { |k,v| "\t\t<#{k}>#{v}</#{k}>" }.join("\n") + "\n\t</url>\n"
end