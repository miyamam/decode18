SELECT count(session_id) as [Active Sessions]
FROM sys.dm_exec_sessions
WHERE status = 'running'
