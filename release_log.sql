create table $schema$.release_log (
  id             int8 not null,
  created_date   timestamp default current_timestamp,
  finish_date    timestamp,
  os_user        text,
  machine        text,
  last_commit    text,
  branch         text,
  is_successfull bool default false,
  task_name      text,
  file_hash      text,
  error_msg      text,
  constraint pk_release_log_id primary key (id)
);

comment on table  $schema$.release_log                is 'Release install history';
comment on column $schema$.release_log.id             is 'Release ID';
comment on column $schema$.release_log.created_date   is 'Installation start time';
comment on column $schema$.release_log.finish_date    is 'Installation finish time';
comment on column $schema$.release_log.os_user        is 'User name in OS on client workstation';
comment on column $schema$.release_log.machine        is 'DNS name of client workstation';
comment on column $schema$.release_log.last_commit    is 'GIT commit used for installation';
comment on column $schema$.release_log.branch         is 'GIT branch used for installation';
comment on column $schema$.release_log.is_successfull is 'Was installation successfull?';
comment on column $schema$.release_log.task_name      is 'Task code or name which is solved within task branch';
comment on column $schema$.release_log.file_hash      is 'Checksum of migration install file';
comment on column $schema$.release_log.error_msg      is 'Error code if fail';