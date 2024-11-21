


# Non-binary

 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 1000
Number of measurements: 100
Query 1: 2.28 seconds
Query 2: 1.06 seconds
Query 3: 0.92 seconds
Query 4: 0.58 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 10000
Number of measurements: 100
Query 1: 23.18 seconds
Query 2: 10.36 seconds
Query 3: 8.98 seconds
Query 4: 5.83 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 100000
Number of measurements: 100
Query 1: 227.91 seconds
Query 2: 103.69 seconds
Query 3: 88.73 seconds
Query 4: 57.27 seconds

# binary


True
Number of records: 1000
Number of measurements: 100
Query 1: 2.02 seconds
Query 2: 1.02 seconds
Query 3: 0.90 seconds
Query 4: 0.60 seconds
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $
~/r/m/feeds.fun (feature/ff-156-news-loading-performance-analysis|✔) $ ./bin/backend-utils.sh poetry run python ./optimizations.py
[+] Creating 1/0
 ✔ Container feedsfun-postgresql-1  Running                                                                                                                                                                                                              0.0s
True
Number of records: 10000
Number of measurements: 100
Query 1: 19.59 seconds
Query 2: 10.18 seconds
Query 3: 9.15 seconds
Query 4: 5.75 seconds
