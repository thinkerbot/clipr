git checkout origin/ffi-issue-26
rake compile

# vs current version (2292e1d)
git clone git://github.com/ffi/ffi.git
cd ffi
git checkout 2292e1d
rake test
cd ..
ruby -Iffi/lib callback_registration_test.rb  # fails

# vs last known pass (610fedd)
cd ffi
git checkout 610fedd
rake test
cd ..
ruby -Iffi/lib callback_registration_test.rb  # passes