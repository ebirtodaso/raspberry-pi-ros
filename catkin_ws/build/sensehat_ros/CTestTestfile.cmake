# CMake generated Testfile for 
# Source directory: /home/pebble/test/catkin_ws/src/sensehat_ros
# Build directory: /home/pebble/test/catkin_ws/build/sensehat_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_sensehat_ros_nosetests_test.unit.test_library.py "/home/pebble/test/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/nosetests-test.unit.test_library.py.xml" "--return-code" "\"/usr/bin/cmake\" -E make_directory /home/pebble/test/catkin_ws/build/test_results/sensehat_ros" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pebble/test/catkin_ws/src/sensehat_ros/test/unit/test_library.py --with-xunit --xunit-file=/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/nosetests-test.unit.test_library.py.xml")
set_tests_properties(_ctest_sensehat_ros_nosetests_test.unit.test_library.py PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/catkin/cmake/test/nosetests.cmake;83;catkin_run_tests_target;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;111;catkin_add_nosetests;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;0;")
add_test(_ctest_sensehat_ros_rostest_test_rostest_test_services.test "/home/pebble/test/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/rostest-test_rostest_test_services.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pebble/test/catkin_ws/src/sensehat_ros --package=sensehat_ros --results-filename test_rostest_test_services.xml --results-base-dir \"/home/pebble/test/catkin_ws/build/test_results\" /home/pebble/test/catkin_ws/src/sensehat_ros/test/rostest/test_services.test ")
set_tests_properties(_ctest_sensehat_ros_rostest_test_rostest_test_services.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;113;add_rostest;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;0;")
add_test(_ctest_sensehat_ros_rostest_test_rostest_test_publications.test "/home/pebble/test/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/rostest-test_rostest_test_publications.xml" "--return-code" "/usr/bin/python2 /opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pebble/test/catkin_ws/src/sensehat_ros --package=sensehat_ros --results-filename test_rostest_test_publications.xml --results-base-dir \"/home/pebble/test/catkin_ws/build/test_results\" /home/pebble/test/catkin_ws/src/sensehat_ros/test/rostest/test_publications.test ")
set_tests_properties(_ctest_sensehat_ros_rostest_test_rostest_test_publications.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;114;add_rostest;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;0;")
add_test(_ctest_sensehat_ros_roslaunch-check_launch "/home/pebble/test/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pebble/test/catkin_ws/build/test_results/sensehat_ros" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/pebble/test/catkin_ws/build/test_results/sensehat_ros/roslaunch-check_launch.xml\" \"/home/pebble/test/catkin_ws/src/sensehat_ros/launch\" ")
set_tests_properties(_ctest_sensehat_ros_roslaunch-check_launch PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/melodic/share/roslaunch/cmake/roslaunch-extras.cmake;66;catkin_run_tests_target;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;116;roslaunch_add_file_check;/home/pebble/test/catkin_ws/src/sensehat_ros/CMakeLists.txt;0;")