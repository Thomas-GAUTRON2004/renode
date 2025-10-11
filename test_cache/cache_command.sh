tools/guest_cache/src/renode_cache_interface.py test_cache/trace.log \
                                                config            \
                                                --memory_width 64             \
                                                --l1i_cache_width 11          \
                                                --l1i_block_width 7           \
                                                --l1i_lines_per_set 4         \
                                                --l1i_replacement_policy LRU  \
                                                --l1d_cache_width 11          \
                                                --l1d_block_width 7           \
                                                --l1d_lines_per_set 4         \
                                                --l1d_replacement_policy LRU
                                                