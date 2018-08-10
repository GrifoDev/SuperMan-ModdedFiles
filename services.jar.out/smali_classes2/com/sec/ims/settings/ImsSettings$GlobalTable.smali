.class public final Lcom/sec/ims/settings/ImsSettings$GlobalTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlobalTable"
.end annotation


# static fields
.field public static final AGGR_IMDN_SUPPORTED:Ljava/lang/String; = "aggr_imdn_supported"

.field public static final AGG_PROXY_IP:Ljava/lang/String; = "agg_proxy_ip"

.field public static final ALL_CSFB_ERROR_CODE_LIST:Ljava/lang/String; = "all_csfb_error_code_list"

.field public static final APN_SELECTION:Ljava/lang/String; = "apn_selection"

.field public static final AUTH_PROXY_IP:Ljava/lang/String; = "auth_proxy_ip"

.field public static final AUTH_PROXY_PORT:Ljava/lang/String; = "auth_proxy_port"

.field public static final BOT_REGISTRY_ADDR:Ljava/lang/String; = "bot_registry_addr"

.field public static final BSF_IP:Ljava/lang/String; = "bsf_ip"

.field public static final BSF_PORT:Ljava/lang/String; = "bsf_port"

.field public static final CLOSED_GROUP_CHAT:Ljava/lang/String; = "closed_group_chat"

.field public static final CONF_SUBSCRIBE_ENABLED:Ljava/lang/String; = "conf_subscribe_enabled"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DM_APP_ID:Ljava/lang/String; = "dm_app_id"

.field public static final DM_USER_DISP_NAME:Ljava/lang/String; = "dm_user_disp_name"

.field public static final E911_CSFB_ERROR_CODE_LIST:Ljava/lang/String; = "e911_csfb_error_code_list"

.field public static final E911_PDN_SELECTION_VOWIFI:Ljava/lang/String; = "e911_pdn_selection_vowifi"

.field public static final EMERGENCY_DOMAIN_SETTING:Ljava/lang/String; = "emergency_domain_setting"

.field public static final ENABLE_CIQ:Ljava/lang/String; = "enable_ciq"

.field public static final ENABLE_FT_AUTO_RESUMABLE:Ljava/lang/String; = "enable_ft_auto_resumable"

.field public static final ENABLE_GBA:Ljava/lang/String; = "enable_gba"

.field public static final ENABLE_GROUP_CHAT_LIST_RETRIEVE:Ljava/lang/String; = "enable_group_chat_list_retrieve"

.field public static final ENABLE_HASATI:Ljava/lang/String; = "enable_hasati"

.field public static final FTHTTP_OVER_DEFAULT_PDN:Ljava/lang/String; = "fthttp_over_default_pdn"

.field public static final FTHTTP_TRUST_ALL_CERTS:Ljava/lang/String; = "fthttp_trust_all_certs"

.field public static final FT_CANCEL_IMS_DEREGISTRATION:Ljava/lang/String; = "ft_cancel_ims_deregistration"

.field public static final FT_CANCEL_MEMORY_FULL:Ljava/lang/String; = "ft_cancel_memory_full"

.field public static final FT_DELETE_TEMP_FILE:Ljava/lang/String; = "ft_delete_temp_file"

.field public static final FT_FALLBACK_ALL_FAIL:Ljava/lang/String; = "ft_fallback_all_fail"

.field public static final FT_HIDE_DOWNLOAD_FILE:Ljava/lang/String; = "ft_hide_download_file"

.field public static final FULL_SF_GROUP_CHAT:Ljava/lang/String; = "full_sf_group_chat"

.field public static final HTTP_PASSWORD:Ljava/lang/String; = "http_password"

.field public static final HTTP_USERNAME:Ljava/lang/String; = "http_username"

.field public static final IMS_ENABLED:Ljava/lang/String; = "ims_enabled"

.field public static final IS_SERVER_HEADER_ENABLED:Ljava/lang/String; = "is_server_header_enabled"

.field public static final IWLAN_PANI_FORMAT:Ljava/lang/String; = "iwlan_pani_format"

.field public static final KEEP_MSISDN_VALIDATION:Ljava/lang/String; = "keep_msisdn_validation"

.field public static final LEGACY_LATCHING:Ljava/lang/String; = "legacy_latching"

.field public static final MAX_ADHOC_GROUP_SIZE:Ljava/lang/String; = "max_adhoc_group_size"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final NAME:Ljava/lang/String; = "mnoname"

.field public static final NETWORK:Ljava/lang/String; = "network"

.field public static final PAGER_MODE_SIZE_LIMIT:Ljava/lang/String; = "pager_mode_size_limit"

.field public static final PIP:Ljava/lang/String; = "pip"

.field public static final RCS_AUTO_CONFIG_PDN:Ljava/lang/String; = "rcs_auto_config_pdn"

.field public static final RCS_CUSTOM_CONFIG_SERVER_URL:Ljava/lang/String; = "rcs_custom_config_server_url"

.field public static final RCS_DISABLE_UNDER_UPSM:Ljava/lang/String; = "rcs_disable_under_upsm"

.field public static final RCS_FT_CHUNK_SIZE:Ljava/lang/String; = "rcs_ft_chunk_size"

.field public static final RCS_GROUPCHAT_AUTO_REJOIN:Ljava/lang/String; = "rcs_groupchat_auto_rejoin"

.field public static final RCS_IM_INCLUDE_DELICED_USER:Ljava/lang/String; = "rcs_im_include_declined_user"

.field public static final RCS_IM_INCLUDE_SUBJECT_HEADER:Ljava/lang/String; = "rcs_im_include_subject_header"

.field public static final RCS_ISH_CHUNK_SIZE:Ljava/lang/String; = "rcs_ish_chunk_size"

.field public static final RCS_LOCAL_CONFIG_SERVER:Ljava/lang/String; = "rcs_local_config_server"

.field public static final RCS_MODEL_NAME:Ljava/lang/String; = "rcs_model_name"

.field public static final RCS_MSRP_CEMA:Ljava/lang/String; = "msrp_cema"

.field public static final RCS_NETWORK_TYPE:Ljava/lang/String; = "rcs_network_type"

.field public static final RCS_UP_PROFILE:Ljava/lang/String; = "rcs_up_profile"

.field public static final REMOVE_ICON_NOSVC:Ljava/lang/String; = "remove_icon_nosvc"

.field public static final SERVICES:Ljava/lang/String; = "services"

.field public static final SHOW_REGI_INFO_IN_SEC_SETTINGS:Ljava/lang/String; = "show_regi_info_in_sec_settings"

.field public static final SHOW_VOLTE_REGI_ICON:Ljava/lang/String; = "show_volte_regi_icon"

.field public static final SHOW_VOWIFI_REGI_ICON:Ljava/lang/String; = "show_vowifi_regi_icon"

.field public static final SMS_DEST_PORT:Ljava/lang/String; = "sms_dest_port"

.field public static final SMS_ORIG_PORT:Ljava/lang/String; = "sms_orig_port"

.field public static final SMS_WRITE_UICC:Ljava/lang/String; = "sms_write_uicc"

.field public static final SRVCC_VERSION:Ljava/lang/String; = "srvcc_version"

.field public static final SS_CALLBARRING_BY_NETWORK:Ljava/lang/String; = "ss_callbarring_by_network"

.field public static final SS_CALLWAITING_BY_NETWORK:Ljava/lang/String; = "ss_callwaiting_by_network"

.field public static final SS_CB_SELECT_MODE:Ljava/lang/String; = "ss_cb_select_mode"

.field public static final SS_CF_BUSY_RULEID:Ljava/lang/String; = "ss_cf_busy_ruleid"

.field public static final SS_CF_NOT_LOGGED_IN_RULEID:Ljava/lang/String; = "ss_cf_not_logged_in_ruleid"

.field public static final SS_CF_NOT_REACHABLE_RULEID:Ljava/lang/String; = "ss_cf_not_reachable_ruleid"

.field public static final SS_CF_NO_ANSWER_RULEID:Ljava/lang/String; = "ss_cf_no_answer_ruleId"

.field public static final SS_CF_NO_REPLYTIMER_RULEID:Ljava/lang/String; = "ss_cf_no_replytimer_ruleid"

.field public static final SS_CF_UNCONDITIONAL_RULEID:Ljava/lang/String; = "ss_cf_unconditional_ruleid"

.field public static final SS_CLIP_CLIR_BY_NETWORK:Ljava/lang/String; = "ss_clip_clir_by_network"

.field public static final SS_CONTROL_PREF:Ljava/lang/String; = "ss_control_pref"

.field public static final SS_CSFB_WITH_IMSERROR:Ljava/lang/String; = "ss_csfb_with_imserror"

.field public static final SS_DISCONNECT_XCAP_PDN:Ljava/lang/String; = "ss_disconnect_xcap_pdn"

.field public static final SS_DOMAIN_SETTING:Ljava/lang/String; = "ss_domain_setting"

.field public static final SS_ICB_ANONYMOUS_RULEID:Ljava/lang/String; = "ss_icb_anonymous_ruleid"

.field public static final SS_ICB_ROAMING_RULEID:Ljava/lang/String; = "ss_icb_roaming_ruleid"

.field public static final SS_ICB_UNCONDITIONAL_RULEID:Ljava/lang/String; = "ss_icb_unconditional_ruleid"

.field public static final SS_MEDIA_TYPE:Ljava/lang/String; = "ss_support_media_type"

.field public static final SS_OCB_INTERNATIONAL_EX_HOME_RULEID:Ljava/lang/String; = "ss_ocb_international_ex_home_ruleid"

.field public static final SS_OCB_INTERNATIONAL_RULEID:Ljava/lang/String; = "ss_ocb_international_ruleid"

.field public static final SS_OCB_UNCONDITIONAL_RULEID:Ljava/lang/String; = "ss_ocb_unconditional_ruleid"

.field public static final SS_SELECT_IP_VERSION:Ljava/lang/String; = "ss_select_ip_version"

.field public static final SS_SELECT_MODE:Ljava/lang/String; = "ss_select_mode"

.field public static final SS_SUPPORT_CP_ELEMENT:Ljava/lang/String; = "ss_support_cp_element"

.field public static final SS_SUPPORT_MULTI_DNS:Ljava/lang/String; = "ss_support_multi_dns"

.field public static final SS_SUPPORT_RETRY:Ljava/lang/String; = "ss_support_retry"

.field public static final SS_SUPPORT_SIMSERVS_RETRY:Ljava/lang/String; = "ss_support_simservs_retry"

.field public static final SS_SUPPORT_SS_ELEMENT:Ljava/lang/String; = "ss_support_ss_element"

.field public static final SS_SUPPORT_TLS:Ljava/lang/String; = "ss_support_tls"

.field public static final SUPPORT_CHAT_ON_DEFAULT_MMS_APP:Ljava/lang/String; = "support_chat_on_default_mms_app"

.field public static final SUPPORT_CONFIGSERVER:Ljava/lang/String; = "support_configserver"

.field public static final SUPPORT_RCS_INTERWORKING_FUNCTION:Ljava/lang/String; = "support_rcs_interworking_function"

.field public static final SUPPORT_VOWIFI:Ljava/lang/String; = "support_vowifi"

.field public static final TABLE_NAME:Ljava/lang/String; = "global"

.field public static final T_LTE_911_FAIL:Ljava/lang/String; = "t_lte_911_fail"

.field public static final USER_AGENT:Ljava/lang/String; = "user_agent"

.field public static final USSD_DOMAIN_SETTING:Ljava/lang/String; = "ussd_domain_setting"

.field public static final VIDEO_CSFB_ERROR_CODE_LIST:Ljava/lang/String; = "video_csfb_error_code_list"

.field public static final VOICE_CSFB_ERROR_CODE_LIST:Ljava/lang/String; = "voice_csfb_error_code_list"

.field public static final VOICE_DOMAIN_PREF_EUTRAN:Ljava/lang/String; = "voice_domain_pref_eutran"

.field public static final VOICE_DOMAIN_PREF_UTRAN:Ljava/lang/String; = "voice_domain_pref_utran"

.field public static final VOLTE_DOMESTIC_DEFAULT_ENABLED:Ljava/lang/String; = "volte_domestic_default_enabled"

.field public static final VOLTE_INTERNATIONAL_DEFAULT_ENABLED:Ljava/lang/String; = "volte_international_default_enabled"

.field public static final VOLTE_REGI_ICON_ID:Ljava/lang/String; = "volte_regi_icon_id"

.field public static final VOWIFI_NEED_LOCATION_MENU:Ljava/lang/String; = "vowifi_need_location_menu"

.field public static final VOWIFI_OPERATOR_LABEL:Ljava/lang/String; = "vowifi_operator_label"

.field public static final VOWIFI_OPERATOR_LABEL_ONGOING:Ljava/lang/String; = "vowifi_operator_label_ongoing"

.field public static final VOWIFI_REGI_ICON_ID:Ljava/lang/String; = "vowifi_regi_icon_id"

.field public static final VOWIFI_SUBTEXT_ON_LOCKSCREEN:Ljava/lang/String; = "vowifi_subtext_on_lockscreen"

.field public static final XCAP_ROOT_URI:Ljava/lang/String; = "xcap_root_uri"

.field public static final XCAP_ROOT_URI_PREF:Ljava/lang/String; = "xcap_root_uri_pref"

.field public static final XDM_USER_AGENT:Ljava/lang/String; = "xdm_user_agent"

.field public static final XDM_USER_ID_DOMAIN:Ljava/lang/String; = "xdm_user_id_domain"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.sec.ims.settings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$GlobalTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
