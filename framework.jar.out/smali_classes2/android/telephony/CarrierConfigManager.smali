.class public Landroid/telephony/CarrierConfigManager;
.super Ljava/lang/Object;
.source "CarrierConfigManager.java"


# static fields
.field public static final ACTION_CARRIER_CONFIG_CHANGED:Ljava/lang/String; = "android.telephony.action.CARRIER_CONFIG_CHANGED"

.field public static final CDMA_ROAMING_MODE_AFFILIATED:I = 0x1

.field public static final CDMA_ROAMING_MODE_ANY:I = 0x2

.field public static final CDMA_ROAMING_MODE_AUTOMATIC_A:I = 0x3

.field public static final CDMA_ROAMING_MODE_AUTOMATIC_B:I = 0x4

.field public static final CDMA_ROAMING_MODE_BLANK:I = 0x8

.field public static final CDMA_ROAMING_MODE_DOMESTIC:I = 0x5

.field public static final CDMA_ROAMING_MODE_DOMESTIC_INTERNATIONAL:I = 0x7

.field public static final CDMA_ROAMING_MODE_HOME:I = 0x0

.field public static final CDMA_ROAMING_MODE_INTERNATIONAL:I = 0x6

.field public static final CDMA_ROAMING_MODE_RADIO_DEFAULT:I = -0x1

.field public static final DATA_CYCLE_THRESHOLD_DISABLED:I = -0x2

.field public static final DATA_CYCLE_USE_PLATFORM_DEFAULT:I = -0x1

.field public static final KEY_ADDITIONAL_CALL_SETTING_BOOL:Ljava/lang/String; = "additional_call_setting_bool"

.field public static final KEY_ALLOW_ADDING_APNS_BOOL:Ljava/lang/String; = "allow_adding_apns_bool"

.field public static final KEY_ALLOW_ADD_CALL_DURING_VIDEO_CALL_BOOL:Ljava/lang/String; = "allow_add_call_during_video_call"

.field public static final KEY_ALLOW_EMERGENCY_NUMBERS_IN_CALL_LOG_BOOL:Ljava/lang/String; = "allow_emergency_numbers_in_call_log_bool"

.field public static final KEY_ALLOW_EMERGENCY_VIDEO_CALLS_BOOL:Ljava/lang/String; = "allow_emergency_video_calls_bool"

.field public static final KEY_ALLOW_HOLD_IN_IMS_CALL_BOOL:Ljava/lang/String; = "allow_hold_in_ims_call"

.field public static final KEY_ALLOW_LOCAL_DTMF_TONES_BOOL:Ljava/lang/String; = "allow_local_dtmf_tones_bool"

.field public static final KEY_ALLOW_MERGE_WIFI_CALLS_WHEN_VOWIFI_OFF_BOOL:Ljava/lang/String; = "allow_merge_wifi_calls_when_vowifi_off_bool"

.field public static final KEY_ALLOW_NON_EMERGENCY_CALLS_IN_ECM_BOOL:Ljava/lang/String; = "allow_non_emergency_calls_in_ecm_bool"

.field public static final KEY_ALLOW_USSD_REQUESTS_VIA_TELEPHONY_MANAGER_BOOL:Ljava/lang/String; = "allow_ussd_requests_via_telephony_manager_bool"

.field public static final KEY_ALWAYS_SHOW_EMERGENCY_ALERT_ONOFF_BOOL:Ljava/lang/String; = "always_show_emergency_alert_onoff_bool"

.field public static final KEY_APN_EXPAND_BOOL:Ljava/lang/String; = "apn_expand_bool"

.field public static final KEY_AUTO_RETRY_ENABLED_BOOL:Ljava/lang/String; = "auto_retry_enabled_bool"

.field public static final KEY_BOOSTED_LTE_EARFCNS_STRING_ARRAY:Ljava/lang/String; = "boosted_lte_earfcns_string_array"

.field public static final KEY_BROADCAST_EMERGENCY_CALL_STATE_CHANGES_BOOL:Ljava/lang/String; = "broadcast_emergency_call_state_changes_bool"

.field public static final KEY_CALL_FORWARDING_BLOCKS_WHILE_ROAMING_STRING_ARRAY:Ljava/lang/String; = "call_forwarding_blocks_while_roaming_string_array"

.field public static final KEY_CARRIER_ADDITIONAL_CBS_CHANNELS_STRINGS:Ljava/lang/String; = "carrier_additional_cbs_channels_strings"

.field public static final KEY_CARRIER_ALLOW_TURNOFF_IMS_BOOL:Ljava/lang/String; = "carrier_allow_turnoff_ims_bool"

.field public static final KEY_CARRIER_APP_NO_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_no_wake_signal_config"

.field public static final KEY_CARRIER_APP_WAKE_SIGNAL_CONFIG_STRING_ARRAY:Ljava/lang/String; = "carrier_app_wake_signal_config"

.field public static final KEY_CARRIER_DATA_CALL_APN_DELAY_DEFAULT_LONG:Ljava/lang/String; = "carrier_data_call_apn_delay_default_long"

.field public static final KEY_CARRIER_DATA_CALL_APN_DELAY_FASTER_LONG:Ljava/lang/String; = "carrier_data_call_apn_delay_faster_long"

.field public static final KEY_CARRIER_DATA_CALL_PERMANENT_FAILURE_STRINGS:Ljava/lang/String; = "carrier_data_call_permanent_failure_strings"

.field public static final KEY_CARRIER_DATA_CALL_RETRY_CONFIG_STRINGS:Ljava/lang/String; = "carrier_data_call_retry_config_strings"

.field public static final KEY_CARRIER_DEFAULT_ACTIONS_ON_DCFAILURE_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_dcfailure_string_array"

.field public static final KEY_CARRIER_DEFAULT_ACTIONS_ON_REDIRECTION_STRING_ARRAY:Ljava/lang/String; = "carrier_default_actions_on_redirection_string_array"

.field public static final KEY_CARRIER_DEFAULT_ACTIONS_ON_RESET:Ljava/lang/String; = "carrier_default_actions_on_reset_string_array"

.field public static final KEY_CARRIER_DEFAULT_REDIRECTION_URL_STRING_ARRAY:Ljava/lang/String; = "carrier_default_redirection_url_string_array"

.field public static final KEY_CARRIER_DEFAULT_WFC_IMS_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_enabled_bool"

.field public static final KEY_CARRIER_DEFAULT_WFC_IMS_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_mode_int"

.field public static final KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_ENABLED_BOOL:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_enabled_bool"

.field public static final KEY_CARRIER_DEFAULT_WFC_IMS_ROAMING_MODE_INT:Ljava/lang/String; = "carrier_default_wfc_ims_roaming_mode_int"

.field public static final KEY_CARRIER_ERI_FILE_NAME_STRING:Ljava/lang/String; = "carrier_eri_file_name_string"

.field public static final KEY_CARRIER_FORCE_DISABLE_ETWS_CMAS_TEST_BOOL:Ljava/lang/String; = "carrier_force_disable_etws_cmas_test_bool"

.field public static final KEY_CARRIER_IMS_GBA_REQUIRED_BOOL:Ljava/lang/String; = "carrier_ims_gba_required_bool"

.field public static final KEY_CARRIER_INSTANT_LETTERING_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_instant_lettering_available_bool"

.field public static final KEY_CARRIER_INSTANT_LETTERING_ENCODING_STRING:Ljava/lang/String; = "carrier_instant_lettering_encoding_string"

.field public static final KEY_CARRIER_INSTANT_LETTERING_ESCAPED_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_escaped_chars_string"

.field public static final KEY_CARRIER_INSTANT_LETTERING_INVALID_CHARS_STRING:Ljava/lang/String; = "carrier_instant_lettering_invalid_chars_string"

.field public static final KEY_CARRIER_INSTANT_LETTERING_LENGTH_LIMIT_INT:Ljava/lang/String; = "carrier_instant_lettering_length_limit_int"

.field public static final KEY_CARRIER_METERED_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_apn_types_strings"

.field public static final KEY_CARRIER_METERED_ROAMING_APN_TYPES_STRINGS:Ljava/lang/String; = "carrier_metered_roaming_apn_types_strings"

.field public static final KEY_CARRIER_NAME_OVERRIDE_BOOL:Ljava/lang/String; = "carrier_name_override_bool"

.field public static final KEY_CARRIER_NAME_STRING:Ljava/lang/String; = "carrier_name_string"

.field public static final KEY_CARRIER_PROMOTE_WFC_ON_CALL_FAIL_BOOL:Ljava/lang/String; = "carrier_promote_wfc_on_call_fail_bool"

.field public static final KEY_CARRIER_SETTINGS_ENABLE_BOOL:Ljava/lang/String; = "carrier_settings_enable_bool"

.field public static final KEY_CARRIER_SETUP_APP_STRING:Ljava/lang/String; = "carrier_setup_app_string"

.field public static final KEY_CARRIER_USE_IMS_FIRST_FOR_EMERGENCY_BOOL:Ljava/lang/String; = "carrier_use_ims_first_for_emergency_bool"

.field public static final KEY_CARRIER_VOLTE_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_volte_available_bool"

.field public static final KEY_CARRIER_VOLTE_OVERRIDE_WFC_PROVISIONING_BOOL:Ljava/lang/String; = "carrier_volte_override_wfc_provisioning_bool"

.field public static final KEY_CARRIER_VOLTE_PROVISIONED_BOOL:Ljava/lang/String; = "carrier_volte_provisioned_bool"

.field public static final KEY_CARRIER_VOLTE_PROVISIONING_REQUIRED_BOOL:Ljava/lang/String; = "carrier_volte_provisioning_required_bool"

.field public static final KEY_CARRIER_VOLTE_TTY_SUPPORTED_BOOL:Ljava/lang/String; = "carrier_volte_tty_supported_bool"

.field public static final KEY_CARRIER_VT_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_vt_available_bool"

.field public static final KEY_CARRIER_VVM_PACKAGE_NAME_STRING:Ljava/lang/String; = "carrier_vvm_package_name_string"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_CARRIER_VVM_PACKAGE_NAME_STRING_ARRAY:Ljava/lang/String; = "carrier_vvm_package_name_string_array"

.field public static final KEY_CARRIER_WFC_IMS_AVAILABLE_BOOL:Ljava/lang/String; = "carrier_wfc_ims_available_bool"

.field public static final KEY_CARRIER_WFC_SEM_MENU_PATH_STRING:Ljava/lang/String; = "carrier_wfc_sem_menu_path_string"

.field public static final KEY_CARRIER_WFC_SEM_REQUIRED_HELP_MENU_BOOL:Ljava/lang/String; = "carrier_wfc_sem_required_help_menu_bool"

.field public static final KEY_CARRIER_WFC_SEM_REQUIRED_HIDE_PREFERRED_MENU_IN_ROAMING_BOOL:Ljava/lang/String; = "carrier_wfc_sem_required_hide_preferred_menu_in_roaming_bool"

.field public static final KEY_CARRIER_WFC_SEM_REQUIRED_NOTIFICATION_FOR_HELP_MENU_BOOL:Ljava/lang/String; = "carrier_wfc_sem_required_notification_for_help_menu_bool"

.field public static final KEY_CARRIER_WFC_SEM_REQUIRED_SHOW_PREFERRED_MENU_BOOL:Ljava/lang/String; = "carrier_wfc_sem_required_show_preferred_menu_bool"

.field public static final KEY_CARRIER_WFC_SEM_SUPPORTS_WIFI_ONLY_BOOL:Ljava/lang/String; = "carrier_wfc_sem_supports_wifi_only_bool"

.field public static final KEY_CARRIER_WFC_SUPPORTS_WIFI_ONLY_BOOL:Ljava/lang/String; = "carrier_wfc_supports_wifi_only_bool"

.field public static final KEY_CARRIER_WIFI_STRING_ARRAY:Ljava/lang/String; = "carrier_wifi_string_array"

.field public static final KEY_CDMA_3WAYCALL_FLASH_DELAY_INT:Ljava/lang/String; = "cdma_3waycall_flash_delay_int"

.field public static final KEY_CDMA_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "cdma_dtmf_tone_delay_int"

.field public static final KEY_CDMA_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_nonroaming_networks_string_array"

.field public static final KEY_CDMA_ROAMING_MODE_INT:Ljava/lang/String; = "cdma_roaming_mode_int"

.field public static final KEY_CDMA_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "cdma_roaming_networks_string_array"

.field public static final KEY_CI_ACTION_ON_SYS_UPDATE_BOOL:Ljava/lang/String; = "ci_action_on_sys_update_bool"

.field public static final KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_string"

.field public static final KEY_CI_ACTION_ON_SYS_UPDATE_EXTRA_VAL_STRING:Ljava/lang/String; = "ci_action_on_sys_update_extra_val_string"

.field public static final KEY_CI_ACTION_ON_SYS_UPDATE_INTENT_STRING:Ljava/lang/String; = "ci_action_on_sys_update_intent_string"

.field public static final KEY_CONFIG_IMS_PACKAGE_OVERRIDE_STRING:Ljava/lang/String; = "config_ims_package_override_string"

.field public static final KEY_CONFIG_WIFI_DISABLE_IN_ECBM:Ljava/lang/String; = "config_wifi_disable_in_ecbm"

.field public static final KEY_CSP_ENABLED_BOOL:Ljava/lang/String; = "csp_enabled_bool"

.field public static final KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_limit_threshold_bytes_long"

.field public static final KEY_DATA_WARNING_THRESHOLD_BYTES_LONG:Ljava/lang/String; = "data_warning_threshold_bytes_long"

.field public static final KEY_DEFAULT_SIM_CALL_MANAGER_STRING:Ljava/lang/String; = "default_sim_call_manager_string"

.field public static final KEY_DEFAULT_VM_NUMBER_STRING:Ljava/lang/String; = "default_vm_number_string"

.field public static final KEY_DIAL_STRING_REPLACE_STRING_ARRAY:Ljava/lang/String; = "dial_string_replace_string_array"

.field public static final KEY_DISABLE_CDMA_ACTIVATION_CODE_BOOL:Ljava/lang/String; = "disable_cdma_activation_code_bool"

.field public static final KEY_DISABLE_SEVERE_WHEN_EXTREME_DISABLED_BOOL:Ljava/lang/String; = "disable_severe_when_extreme_disabled_bool"

.field public static final KEY_DISABLE_VOICE_BARRING_NOTIFICATION_BOOL:Ljava/lang/String; = "disable_voice_barring_notification_bool"

.field public static final KEY_DISPLAY_HD_AUDIO_PROPERTY_BOOL:Ljava/lang/String; = "display_hd_audio_property_bool"

.field public static final KEY_DROP_VIDEO_CALL_WHEN_ANSWERING_AUDIO_CALL_BOOL:Ljava/lang/String; = "drop_video_call_when_answering_audio_call_bool"

.field public static final KEY_DTMF_TYPE_ENABLED_BOOL:Ljava/lang/String; = "dtmf_type_enabled_bool"

.field public static final KEY_DURATION_BLOCKING_DISABLED_AFTER_EMERGENCY_INT:Ljava/lang/String; = "duration_blocking_disabled_after_emergency_int"

.field public static final KEY_EDITABLE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "editable_enhanced_4g_lte_bool"

.field public static final KEY_EDITABLE_TETHER_APN_BOOL:Ljava/lang/String; = "editable_tether_apn_bool"

.field public static final KEY_EDITABLE_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "editable_voicemail_number_bool"

.field public static final KEY_EDITABLE_WFC_MODE_BOOL:Ljava/lang/String; = "editable_wfc_mode_bool"

.field public static final KEY_EDITABLE_WFC_ROAMING_MODE_BOOL:Ljava/lang/String; = "editable_wfc_roaming_mode_bool"

.field public static final KEY_ENABLE_DIALER_KEY_VIBRATION_BOOL:Ljava/lang/String; = "enable_dialer_key_vibration_bool"

.field public static final KEY_ENHANCED_4G_LTE_TITLE_VARIANT_BOOL:Ljava/lang/String; = "enhanced_4g_lte_title_variant_bool"

.field public static final KEY_FILTERED_CNAP_NAMES_STRING_ARRAY:Ljava/lang/String; = "filtered_cnap_names_string_array"

.field public static final KEY_FORCE_HOME_NETWORK_BOOL:Ljava/lang/String; = "force_home_network_bool"

.field public static final KEY_FORCE_IMEI_BOOL:Ljava/lang/String; = "force_imei_bool"

.field public static final KEY_GSM_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "gsm_dtmf_tone_delay_int"

.field public static final KEY_GSM_NONROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_nonroaming_networks_string_array"

.field public static final KEY_GSM_ROAMING_NETWORKS_STRING_ARRAY:Ljava/lang/String; = "gsm_roaming_networks_string_array"

.field public static final KEY_HAS_IN_CALL_NOISE_SUPPRESSION_BOOL:Ljava/lang/String; = "has_in_call_noise_suppression_bool"

.field public static final KEY_HIDE_CARRIER_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "hide_carrier_network_settings_bool"

.field public static final KEY_HIDE_ENHANCED_4G_LTE_BOOL:Ljava/lang/String; = "hide_enhanced_4g_lte_bool"

.field public static final KEY_HIDE_IMS_APN_BOOL:Ljava/lang/String; = "hide_ims_apn_bool"

.field public static final KEY_HIDE_PREFERRED_NETWORK_TYPE_BOOL:Ljava/lang/String; = "hide_preferred_network_type_bool"

.field public static final KEY_HIDE_SIM_LOCK_SETTINGS_BOOL:Ljava/lang/String; = "hide_sim_lock_settings_bool"

.field public static final KEY_IGNORE_DATA_ENABLED_CHANGED_FOR_VIDEO_CALLS:Ljava/lang/String; = "ignore_data_enabled_changed_for_video_calls"

.field public static final KEY_IGNORE_SIM_NETWORK_LOCKED_EVENTS_BOOL:Ljava/lang/String; = "ignore_sim_network_locked_events_bool"

.field public static final KEY_IMS_CONFERENCE_SIZE_LIMIT_INT:Ljava/lang/String; = "ims_conference_size_limit_int"

.field public static final KEY_IMS_DTMF_TONE_DELAY_INT:Ljava/lang/String; = "ims_dtmf_tone_delay_int"

.field public static final KEY_IMS_REASONINFO_MAPPING_STRING_ARRAY:Ljava/lang/String; = "ims_reasoninfo_mapping_string_array"

.field public static final KEY_IS_IMS_CONFERENCE_SIZE_ENFORCED_BOOL:Ljava/lang/String; = "is_ims_conference_size_enforced_bool"

.field public static final KEY_LTE_EARFCNS_RSRP_BOOST_INT:Ljava/lang/String; = "lte_earfcns_rsrp_boost_int"

.field public static final KEY_MDN_IS_ADDITIONAL_VOICEMAIL_NUMBER_BOOL:Ljava/lang/String; = "mdn_is_additional_voicemail_number_bool"

.field public static final KEY_MESSAGE_EXPIRATION_TIME_LONG:Ljava/lang/String; = "message_expiration_time_long"

.field public static final KEY_MMS_ALIAS_ENABLED_BOOL:Ljava/lang/String; = "aliasEnabled"

.field public static final KEY_MMS_ALIAS_MAX_CHARS_INT:Ljava/lang/String; = "aliasMaxChars"

.field public static final KEY_MMS_ALIAS_MIN_CHARS_INT:Ljava/lang/String; = "aliasMinChars"

.field public static final KEY_MMS_ALLOW_ATTACH_AUDIO_BOOL:Ljava/lang/String; = "allowAttachAudio"

.field public static final KEY_MMS_APPEND_TRANSACTION_ID_BOOL:Ljava/lang/String; = "enabledTransID"

.field public static final KEY_MMS_CLOSE_CONNECTION_BOOL:Ljava/lang/String; = "mmsCloseConnection"

.field public static final KEY_MMS_EMAIL_GATEWAY_NUMBER_STRING:Ljava/lang/String; = "emailGatewayNumber"

.field public static final KEY_MMS_GROUP_MMS_ENABLED_BOOL:Ljava/lang/String; = "enableGroupMms"

.field public static final KEY_MMS_HTTP_PARAMS_STRING:Ljava/lang/String; = "httpParams"

.field public static final KEY_MMS_HTTP_SOCKET_TIMEOUT_INT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final KEY_MMS_MAX_IMAGE_HEIGHT_INT:Ljava/lang/String; = "maxImageHeight"

.field public static final KEY_MMS_MAX_IMAGE_WIDTH_INT:Ljava/lang/String; = "maxImageWidth"

.field public static final KEY_MMS_MAX_MESSAGE_SIZE_INT:Ljava/lang/String; = "maxMessageSize"

.field public static final KEY_MMS_MESSAGE_TEXT_MAX_SIZE_INT:Ljava/lang/String; = "maxMessageTextSize"

.field public static final KEY_MMS_MMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final KEY_MMS_MMS_ENABLED_BOOL:Ljava/lang/String; = "enabledMMS"

.field public static final KEY_MMS_MMS_READ_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableMMSReadReports"

.field public static final KEY_MMS_MULTIPART_SMS_ENABLED_BOOL:Ljava/lang/String; = "enableMultipartSMS"

.field public static final KEY_MMS_NAI_SUFFIX_STRING:Ljava/lang/String; = "naiSuffix"

.field public static final KEY_MMS_NOTIFY_WAP_MMSC_ENABLED_BOOL:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final KEY_MMS_RECIPIENT_LIMIT_INT:Ljava/lang/String; = "recipientLimit"

.field public static final KEY_MMS_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES_BOOL:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final KEY_MMS_SHOW_CELL_BROADCAST_APP_LINKS_BOOL:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final KEY_MMS_SMS_DELIVERY_REPORT_ENABLED_BOOL:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final KEY_MMS_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final KEY_MMS_SMS_TO_MMS_TEXT_THRESHOLD_INT:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final KEY_MMS_SUBJECT_MAX_LENGTH_INT:Ljava/lang/String; = "maxSubjectLength"

.field public static final KEY_MMS_SUPPORT_HTTP_CHARSET_HEADER_BOOL:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final KEY_MMS_SUPPORT_MMS_CONTENT_DISPOSITION_BOOL:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final KEY_MMS_UA_PROF_TAG_NAME_STRING:Ljava/lang/String; = "uaProfTagName"

.field public static final KEY_MMS_UA_PROF_URL_STRING:Ljava/lang/String; = "uaProfUrl"

.field public static final KEY_MMS_USER_AGENT_STRING:Ljava/lang/String; = "userAgent"

.field public static final KEY_MONTHLY_DATA_CYCLE_DAY_INT:Ljava/lang/String; = "monthly_data_cycle_day_int"

.field public static final KEY_NOTIFY_HANDOVER_VIDEO_FROM_WIFI_TO_LTE_BOOL:Ljava/lang/String; = "notify_handover_video_from_wifi_to_lte_bool"

.field public static final KEY_NOTIFY_INTERNATIONAL_CALL_ON_WFC_BOOL:Ljava/lang/String; = "notify_international_call_on_wfc_bool"

.field public static final KEY_NOTIFY_VT_HANDOVER_TO_WIFI_FAILURE_BOOL:Ljava/lang/String; = "notify_vt_handover_to_wifi_failure_bool"

.field public static final KEY_ONLY_SINGLE_DC_ALLOWED_INT_ARRAY:Ljava/lang/String; = "only_single_dc_allowed_int_array"

.field public static final KEY_OPERATOR_SELECTION_EXPAND_BOOL:Ljava/lang/String; = "operator_selection_expand_bool"

.field public static final KEY_PERSIST_LPP_MODE_BOOL:Ljava/lang/String; = "persist_lpp_mode_bool"

.field public static final KEY_PREFER_2G_BOOL:Ljava/lang/String; = "prefer_2g_bool"

.field public static final KEY_PREF_NETWORK_NOTIFICATION_DELAY_INT:Ljava/lang/String; = "network_notification_delay_int"

.field public static final KEY_RATCHET_RAT_FAMILIES:Ljava/lang/String; = "ratchet_rat_families"

.field public static final KEY_RCS_CONFIG_SERVER_URL_STRING:Ljava/lang/String; = "rcs_config_server_url_string"

.field public static final KEY_READ_ONLY_APN_FIELDS_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_fields_string_array"

.field public static final KEY_READ_ONLY_APN_TYPES_STRING_ARRAY:Ljava/lang/String; = "read_only_apn_types_string_array"

.field public static final KEY_REQUIRE_ENTITLEMENT_CHECKS_BOOL:Ljava/lang/String; = "require_entitlement_checks_bool"

.field public static final KEY_RESTART_RADIO_ON_PDP_FAIL_REGULAR_DEACTIVATION_BOOL:Ljava/lang/String; = "restart_radio_on_pdp_fail_regular_deactivation_bool"

.field public static final KEY_SHOW_APN_SETTING_CDMA_BOOL:Ljava/lang/String; = "show_apn_setting_cdma_bool"

.field public static final KEY_SHOW_CDMA_CHOICES_BOOL:Ljava/lang/String; = "show_cdma_choices_bool"

.field public static final KEY_SHOW_ICCID_IN_SIM_STATUS_BOOL:Ljava/lang/String; = "show_iccid_in_sim_status_bool"

.field public static final KEY_SHOW_ONSCREEN_DIAL_BUTTON_BOOL:Ljava/lang/String; = "show_onscreen_dial_button_bool"

.field public static final KEY_SIMPLIFIED_NETWORK_SETTINGS_BOOL:Ljava/lang/String; = "simplified_network_settings_bool"

.field public static final KEY_SIM_NETWORK_UNLOCK_ALLOW_DISMISS_BOOL:Ljava/lang/String; = "sim_network_unlock_allow_dismiss_bool"

.field public static final KEY_SMS_REQUIRES_DESTINATION_NUMBER_CONVERSION_BOOL:Ljava/lang/String; = "sms_requires_destination_number_conversion_bool"

.field public static final KEY_STK_DISABLE_LAUNCH_BROWSER_BOOL:Ljava/lang/String; = "stk_disable_launch_browser_bool"

.field public static final KEY_SUPPORT_3GPP_CALL_FORWARDING_WHILE_ROAMING_BOOL:Ljava/lang/String; = "support_3gpp_call_forwarding_while_roaming_bool"

.field public static final KEY_SUPPORT_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_conference_call_bool"

.field public static final KEY_SUPPORT_DIRECT_FDN_DIALING_BOOL:Ljava/lang/String; = "support_direct_fdn_dialing_bool"

.field public static final KEY_SUPPORT_DOWNGRADE_VT_TO_AUDIO_BOOL:Ljava/lang/String; = "support_downgrade_vt_to_audio_bool"

.field public static final KEY_SUPPORT_PAUSE_IMS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "support_pause_ims_video_calls_bool"

.field public static final KEY_SUPPORT_SETTING_AIRPLANEMODE_STRING:Ljava/lang/String; = "support_setting_airplanemode_string"

.field public static final KEY_SUPPORT_SWAP_AFTER_MERGE_BOOL:Ljava/lang/String; = "support_swap_after_merge_bool"

.field public static final KEY_SUPPORT_VIDEO_CONFERENCE_CALL_BOOL:Ljava/lang/String; = "support_video_conference_call_bool"

.field public static final KEY_SUPPORT_VILTE_SETTING_MENU_BOOL:Ljava/lang/String; = "support_vilte_setting_menu_bool"

.field public static final KEY_TREAT_DOWNGRADED_VIDEO_CALLS_AS_VIDEO_CALLS_BOOL:Ljava/lang/String; = "treat_downgraded_video_calls_as_video_calls_bool"

.field public static final KEY_USE_HFA_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_hfa_for_provisioning_bool"

.field public static final KEY_USE_OTASP_FOR_PROVISIONING_BOOL:Ljava/lang/String; = "use_otasp_for_provisioning_bool"

.field public static final KEY_USE_RCS_PRESENCE_BOOL:Ljava/lang/String; = "use_rcs_presence_bool"

.field public static final KEY_VIDEO_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "video_calls_can_be_hd_audio"

.field public static final KEY_VOICEMAIL_NOTIFICATION_PERSISTENT_BOOL:Ljava/lang/String; = "voicemail_notification_persistent_bool"

.field public static final KEY_VOICE_PRIVACY_DISABLE_UI_BOOL:Ljava/lang/String; = "voice_privacy_disable_ui_bool"

.field public static final KEY_VOLTE_REPLACEMENT_RAT_INT:Ljava/lang/String; = "volte_replacement_rat_int"

.field public static final KEY_VVM_CELLULAR_DATA_REQUIRED_BOOL:Ljava/lang/String; = "vvm_cellular_data_required_bool"

.field public static final KEY_VVM_CLIENT_PREFIX_STRING:Ljava/lang/String; = "vvm_client_prefix_string"

.field public static final KEY_VVM_DESTINATION_NUMBER_STRING:Ljava/lang/String; = "vvm_destination_number_string"

.field public static final KEY_VVM_DISABLED_CAPABILITIES_STRING_ARRAY:Ljava/lang/String; = "vvm_disabled_capabilities_string_array"

.field public static final KEY_VVM_LEGACY_MODE_ENABLED_BOOL:Ljava/lang/String; = "vvm_legacy_mode_enabled_bool"

.field public static final KEY_VVM_PORT_NUMBER_INT:Ljava/lang/String; = "vvm_port_number_int"

.field public static final KEY_VVM_PREFETCH_BOOL:Ljava/lang/String; = "vvm_prefetch_bool"

.field public static final KEY_VVM_SSL_ENABLED_BOOL:Ljava/lang/String; = "vvm_ssl_enabled_bool"

.field public static final KEY_VVM_TYPE_STRING:Ljava/lang/String; = "vvm_type_string"

.field public static final KEY_WFC_DATA_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_data_spn_format_idx_int"

.field public static final KEY_WFC_EMERGENCY_ADDRESS_CARRIER_APP_STRING:Ljava/lang/String; = "wfc_emergency_address_carrier_app_string"

.field public static final KEY_WFC_OPERATOR_ERROR_CODES_STRING_ARRAY:Ljava/lang/String; = "wfc_operator_error_codes_string_array"

.field public static final KEY_WFC_SPN_FORMAT_IDX_INT:Ljava/lang/String; = "wfc_spn_format_idx_int"

.field public static final KEY_WIFI_CALLS_CAN_BE_HD_AUDIO:Ljava/lang/String; = "wifi_calls_can_be_hd_audio"

.field public static final KEY_WORLD_PHONE_BOOL:Ljava/lang/String; = "world_phone_bool"

.field private static final TAG:Ljava/lang/String; = "CarrierConfigManager"

.field private static final sDefaults:Landroid/os/PersistableBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    sput-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_hold_in_ims_call"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "additional_call_setting_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_emergency_numbers_in_call_log_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_local_dtmf_tones_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "apn_expand_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "auto_retry_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_settings_enable_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_volte_available_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_vt_available_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_handover_video_from_wifi_to_lte_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_downgrade_vt_to_audio_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "default_vm_number_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ignore_data_enabled_changed_for_video_calls"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_ims_available_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_supports_wifi_only_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_wfc_ims_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_wfc_ims_roaming_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_promote_wfc_on_call_fail_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_wfc_ims_mode_int"

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_wfc_ims_roaming_mode_int"

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_force_disable_etws_cmas_test_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_volte_provisioning_required_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_volte_override_wfc_provisioning_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_volte_tty_supported_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_allow_turnoff_ims_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_ims_gba_required_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_instant_lettering_available_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_use_ims_first_for_emergency_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_instant_lettering_invalid_chars_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_instant_lettering_escaped_chars_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_instant_lettering_encoding_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_instant_lettering_length_limit_int"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "disable_cdma_activation_code_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "dtmf_type_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enable_dialer_key_vibration_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "has_in_call_noise_suppression_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "hide_carrier_network_settings_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "simplified_network_settings_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "hide_sim_lock_settings_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_volte_provisioned_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ignore_sim_network_locked_events_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "operator_selection_expand_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "prefer_2g_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_apn_setting_cdma_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_cdma_choices_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sms_requires_destination_number_conversion_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_onscreen_dial_button_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sim_network_unlock_allow_dismiss_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_pause_ims_video_calls_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_swap_after_merge_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_hfa_for_provisioning_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "editable_voicemail_number_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_otasp_for_provisioning_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "voicemail_notification_persistent_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "voice_privacy_disable_ui_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "world_phone_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "restart_radio_on_pdp_fail_regular_deactivation_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "volte_replacement_rat_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "default_sim_call_manager_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_destination_number_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_port_number_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_type_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_cellular_data_required_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_client_prefix_string"

    const-string/jumbo v2, "//VVM"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_ssl_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_disabled_capabilities_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_legacy_mode_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "vvm_prefetch_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_vvm_package_name_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_vvm_package_name_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "show_iccid_in_sim_status_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ci_action_on_sys_update_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ci_action_on_sys_update_intent_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ci_action_on_sys_update_extra_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ci_action_on_sys_update_extra_val_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "csp_enabled_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_adding_apns_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "read_only_apn_types_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "read_only_apn_fields_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "broadcast_emergency_call_state_changes_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "always_show_emergency_alert_onoff_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "disable_severe_when_extreme_disabled_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "message_expiration_time_long"

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_data_call_retry_config_strings"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "default:default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    aput-object v3, v2, v5

    const-string/jumbo v3, "mms:default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    aput-object v3, v2, v6

    const-string/jumbo v3, "others:max_retries=3, 5000, 5000, 5000"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_data_call_apn_delay_default_long"

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_data_call_apn_delay_faster_long"

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_eri_file_name_string"

    const-string/jumbo v2, "eri.xml"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "duration_blocking_disabled_after_emergency_int"

    const/16 v2, 0x1c20

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_metered_apn_types_strings"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "default"

    aput-object v3, v2, v5

    const-string/jumbo v3, "mms"

    aput-object v3, v2, v6

    const-string/jumbo v3, "dun"

    aput-object v3, v2, v8

    const-string/jumbo v3, "supl"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_metered_roaming_apn_types_strings"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "default"

    aput-object v3, v2, v5

    const-string/jumbo v3, "mms"

    aput-object v3, v2, v6

    const-string/jumbo v3, "dun"

    aput-object v3, v2, v8

    const-string/jumbo v3, "supl"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "only_single_dc_allowed_int_array"

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "gsm_roaming_networks_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "gsm_nonroaming_networks_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "config_ims_package_override_string"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "cdma_roaming_networks_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "cdma_nonroaming_networks_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "dial_string_replace_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "force_home_network_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "gsm_dtmf_tone_delay_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ims_dtmf_tone_delay_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "cdma_dtmf_tone_delay_int"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "cdma_3waycall_flash_delay_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_conference_call_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_video_conference_call_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "is_ims_conference_size_enforced_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ims_conference_size_limit_int"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "display_hd_audio_property_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "editable_enhanced_4g_lte_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "hide_enhanced_4g_lte_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "hide_ims_apn_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "hide_preferred_network_type_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_emergency_video_calls_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "editable_wfc_mode_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_operator_error_codes_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_spn_format_idx_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_data_spn_format_idx_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wfc_emergency_address_carrier_app_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "config_wifi_disable_in_ecbm"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_name_override_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_name_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_direct_fdn_dialing_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "aliasEnabled"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allowAttachAudio"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enabledTransID"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enableGroupMms"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enableMMSDeliveryReports"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enabledMMS"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enableMMSReadReports"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enableMultipartSMS"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enabledNotifyWapMMSC"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "sendMultipartSmsAsSeparateMessages"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "config_cellBroadcastAppLinks"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enableSMSDeliveryReports"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supportHttpCharsetHeader"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "supportMmsContentDisposition"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "mmsCloseConnection"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "aliasMaxChars"

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "aliasMinChars"

    invoke-virtual {v0, v1, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "httpSocketTimeout"

    const v2, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxImageHeight"

    const/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxImageWidth"

    const/16 v2, 0x280

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxMessageSize"

    const v2, 0x4b000

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxMessageTextSize"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "recipientLimit"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smsToMmsTextLengthThreshold"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "smsToMmsTextThreshold"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "maxSubjectLength"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "emailGatewayNumber"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "httpParams"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "naiSuffix"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "uaProfTagName"

    const-string/jumbo v2, "x-wap-profile"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "uaProfUrl"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "userAgent"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_non_emergency_calls_in_ecm_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "use_rcs_presence_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "force_imei_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "cdma_roaming_mode_int"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "rcs_config_server_url_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_setup_app_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_app_wake_signal_config"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "com.android.carrierdefaultapp/.CarrierDefaultBroadcastReceiver:com.android.internal.telephony.CARRIER_SIGNAL_RESET"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_app_no_wake_signal_config"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_actions_on_redirection_string_array"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "4, 1"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_actions_on_reset_string_array"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "6"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_default_redirection_url_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "monthly_data_cycle_day_int"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "data_warning_threshold_bytes_long"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "data_limit_threshold_bytes_long"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ratchet_rat_families"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "1,2"

    aput-object v3, v2, v5

    const-string/jumbo v3, "7,8,12"

    aput-object v3, v2, v6

    const-string/jumbo v3, "3,11,9,10,15"

    aput-object v3, v2, v8

    const-string/jumbo v3, "14,19"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "treat_downgraded_video_calls_as_video_calls_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "drop_video_call_when_answering_audio_call_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_merge_wifi_calls_when_vowifi_off_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_add_call_during_video_call"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "wifi_calls_can_be_hd_audio"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "video_calls_can_be_hd_audio"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "ims_reasoninfo_mapping_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "enhanced_4g_lte_title_variant_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_vt_handover_to_wifi_failure_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "filtered_cnap_names_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "stk_disable_launch_browser_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "persist_lpp_mode_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wifi_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "network_notification_delay_int"

    invoke-virtual {v0, v1, v9}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "allow_ussd_requests_via_telephony_manager_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_3gpp_call_forwarding_while_roaming_bool"

    invoke-virtual {v0, v1, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "notify_international_call_on_wfc_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "editable_tether_apn_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "call_forwarding_blocks_while_roaming_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "lte_earfcns_rsrp_boost_int"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "boosted_lte_earfcns_string_array"

    invoke-virtual {v0, v1, v7}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "disable_voice_barring_notification_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_required_help_menu_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_menu_path_string"

    const-string/jumbo v2, "CALL"

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_required_notification_for_help_menu_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_required_show_preferred_menu_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "carrier_wfc_sem_required_hide_preferred_menu_in_roaming_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_vilte_setting_menu_bool"

    invoke-virtual {v0, v1, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v0, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    const-string/jumbo v1, "support_setting_airplanemode_string"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultConfig()Landroid/os/PersistableBundle;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Doclava125"
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    sget-object v1, Landroid/telephony/CarrierConfigManager;->sDefaults:Landroid/os/PersistableBundle;

    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method

.method private getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;
    .locals 1

    const-string/jumbo v0, "carrier_config"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ICarrierConfigLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getConfig()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public getConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error getting config for subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ICarrierConfigLoader;->getConfigForSubId(I)Landroid/os/PersistableBundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error getting config for subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public notifyConfigChangedForSubId(I)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reloading config for subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ICarrierConfigLoader;->notifyConfigChangedForSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error reloading config for subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateConfigForPhoneId(ILjava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/CarrierConfigManager;->getICarrierConfigLoader()Lcom/android/internal/telephony/ICarrierConfigLoader;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error updating config for phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ICarrierConfigLoader is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ICarrierConfigLoader;->updateConfigForPhoneId(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "CarrierConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error updating config for phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
