version = File.read(File.expand_path("LLTV_VERSION", __dir__)).strip

Gem::Specification.new do |spec|
  spec.name = "lltv"
  spec.version = version
  spec.authors = ["ahoy196"]
  spec.email = ["sisir.koppaka@gmail.com"]

  spec.summary = %q{lltv is a moving theatre company for your work}
  spec.homepage = "https://github.com/ahoy196/lltv"
  spec.license = "MIT"

  spec.metadata = {
    "source_code_uri" => "https://github.com/ahoy196/lltv",
  }
end