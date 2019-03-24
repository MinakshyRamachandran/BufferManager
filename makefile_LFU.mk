buffermgrLFU: test_assign2_3.o storage_mgr.o dberror.o buffer_mgr.o buffer_mgr_stat.o
	gcc -o buffermgrLFU test_assign2_3.o storage_mgr.o dberror.o buffer_mgr.o buffer_mgr_stat.o -lm 

test_assign2_3.o: test_assign2_3.c dberror.h storage_mgr.h test_helper.h buffer_mgr.h buffer_mgr_stat.h
	gcc -c test_assign2_3.c

buffer_mgr_stat.o: buffer_mgr_stat.c buffer_mgr_stat.h buffer_mgr.h buffer_mgr.c
	gcc -c buffer_mgr_stat.c 

buffer_mgr.o: buffer_mgr.c buffer_mgr.h dt.h storage_mgr.h
	gcc -c buffer_mgr.c 

storage_mgr.o: storage_mgr.c storage_mgr.h 
	gcc -c storage_mgr.c 

dberror.o: dberror.c dberror.h 
	gcc -c dberror.c 


