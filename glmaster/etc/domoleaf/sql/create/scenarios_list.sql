CREATE TABLE IF NOT EXISTS `scenarios_list` (
  `id_scenario` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_scenario` varchar(100) NOT NULL DEFAULT '',
  `id_trigger` int(11) unsigned DEFAULT NULL,
  `id_schedule` int(11) unsigned DEFAULT NULL,
  `id_smartcmd` int(11) unsigned DEFAULT NULL,
  `activated` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `complete` tinyint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_scenario`),
  KEY `id_trigger` (`id_trigger`),
  KEY `id_schedule` (`id_schedule`),
  KEY `id_smartcmd` (`id_smartcmd`),
  KEY `activated` (`activated`),
  KEY `complete` (`complete`),
  CONSTRAINT `scenarios_list_ibfk_1` FOREIGN KEY (`id_trigger`) REFERENCES `trigger_events_list` (`id_trigger`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scenarios_list_ibfk_2` FOREIGN KEY (`id_schedule`) REFERENCES `trigger_schedules_list` (`id_schedule`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `scenarios_list_ibfk_3` FOREIGN KEY (`id_smartcmd`) REFERENCES `smartcommand_list` (`smartcommand_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
