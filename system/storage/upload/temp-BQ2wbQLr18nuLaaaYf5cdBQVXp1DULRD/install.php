<?php
$this->load->model('user/user_group');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/modification_editor');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/modification_editor');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/modification_error_log');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/modification_error_log');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'access', 'extension/modification_files');
$this->model_user_user_group->addPermission($this->user->getGroupId(), 'modify', 'extension/modification_files');