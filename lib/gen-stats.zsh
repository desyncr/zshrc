#!/usr/local/bin/zsh
version=$1
echo Will generate stats for version: $version
cd $ANTIGEN
git checkout $version

echo Clearing up cache...
# Ensure antigen cache is reset (to avoid issues between versions)
rm ~/.antigen/.cache/.zcache-payload
/usr/bin/time zsh -ic exit &> /dev/null

echo Running benchmarks...
for x in {1..100}; do
    export _ZCACHE_CACHE_LOADED=false # for version v2
    /usr/bin/time zsh -ic exit &>> time-zsh.log
done

awk '{printf "%.3f\n", $1}' time-zsh.log > "$PWD/stats-${version}.log"

echo Stats saved in "$PWD/stats-${version}.log"
cat "$PWD/stats-${version}.log" | pbcopy

rm time-zsh.log
