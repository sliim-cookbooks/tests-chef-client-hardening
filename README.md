tests-chef-client-hardening | [![Build Status](https://travis-ci.org/sliim-cookbooks/tests-chef-client-hardening.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/tests-chef-client-hardening) 
===========================

This Compliance Profile ensures the chef-client configuration is hardened.

- https://github.com/sliim-cookbooks/chef-client-hardening

## Standalone Usage

This Compliance Profile requires [InSpec](https://github.com/chef/inspec) for execution:

```
$ git clone https://github.com/sliim-cookbooks/tests-chef-client-hardening
$ inspec exec tests-chef-client-hardening
```

You can also execute the profile directly from Github:

```
$ inspec exec https://github.com/sliim-cookbooks/tests-chef-client-hardening
```

## License and Author

* Author:: Sliim <sliim@mailoo.org>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
