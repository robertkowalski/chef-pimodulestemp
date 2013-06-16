name              "pimodulestemp"
maintainer        "Robert Kowalski"
maintainer_email  "rok@kowalski.gd"
license           "Apache 2.0"
description       "Changes configuration to load modules on startup needed to read from temperature sensors on the Raspberry Pi"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "pimodulestemp::default", "Changes configuration to load modules on startup needed to read from temperature sensors on the Raspberry Pi"

supports "debian"
supports "ubuntu"
