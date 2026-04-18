cd build
rm -f CMakeCache.txt
cmake .. -DSLIC3R_STATIC=ON -DSLIC3R_GTK=3 -DBBL_RELEASE_TO_PUBLIC=1 -DCMAKE_PREFIX_PATH="/data/sources/BambuStudio/deps/build/destdir/usr/local" -DCMAKE_INSTALL_PREFIX="../install_dir" -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release -j32
cmake --install .
cd ..
./BuildLinux.sh -i
