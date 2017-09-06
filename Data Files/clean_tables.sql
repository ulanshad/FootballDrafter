delete from dstStats
delete from kStats
delete from wrStats
delete from qbStats
delete from rbStats
delete from teStats
delete from assignments
delete from players

dbcc checkident(dstStats,RESEED,0)
dbcc checkident(kStats,RESEED,0)
dbcc checkident(qbStats,RESEED,0)
dbcc checkident(rbStats,RESEED,0)
dbcc checkident(teStats,RESEED,0)
dbcc checkident(wrStats,RESEED,0)
dbcc checkident(assignments,RESEED,0)
dbcc checkident(players,RESEED,0)



