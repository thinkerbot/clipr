git checkout origin/ffi-issue-26
rake compile

# vs current version (2292e1d)
git clone git://github.com/ffi/ffi.git
cd ffi
git checkout 2292e1d
rake package
gem uninstall ffi
gem install pkg/ffi-0.6.0.gem
cd ..
ruby -Iffi/lib callback_registration_test.rb  # fails

# vs last known pass (1cf7b8b)
# teh next commit is 8cbc3f5, which changes the compile flags
cd ffi
git checkout 1cf7b8b
rake package
gem uninstall ffi
gem install pkg/ffi-0.6.0.gem
cd ..
ruby -Iffi/lib callback_registration_test.rb  # passes on 10.5.8, fails on 10.6.2