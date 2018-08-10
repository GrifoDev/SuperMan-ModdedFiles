.class public Lcom/sec/ims/settings/RcsConfigurationReader;
.super Ljava/lang/Object;
.source "RcsConfigurationReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/RcsConfigurationReader$ConfigTable;
    }
.end annotation


# static fields
.field public static final APPAUTH_PATH:Ljava/lang/String; = "root/application/0/appauth/"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field public static final AUTOCONFIG_COMPLETED:Ljava/lang/String; = "info/completed"

.field public static final AUTO_CONFIGURATION_URI:Landroid/net/Uri;

.field public static final AUT_ACCEPT:Ljava/lang/String; = "root/application/1/im/autaccept"

.field public static final AUT_ACCEPT_GROUP_CHAT:Ljava/lang/String; = "root/application/1/im/autacceptgroupchat"

.field public static final CALL_COMPOSER_TIMER_IDLE:Ljava/lang/String; = "root/application/1/other/callComposerTimerIdle"

.field public static final CALL_LOG_BEARER_DIFFER:Ljava/lang/String; = "root/application/1/ux/callLogsBearerDiffer"

.field public static final CAPDISCOVERY_ALLOWED_PREFIXES:Ljava/lang/String; = "root/application/1/capdiscovery/capdiscoverywhitelist/capdiscoveryallowedprefixes/prefix"

.field public static final CAPDISCOVERY_CAPINFO_EXPIRY:Ljava/lang/String; = "root/application/1/capdiscovery/capinfoexpiry"

.field public static final CAPDISCOVERY_CAP_DISC_COMMON_STACK:Ljava/lang/String; = "root/application/1/capdiscovery/capDiscCommonStack"

.field public static final CAPDISCOVERY_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/capdiscovery/"

.field public static final CAPDISCOVERY_DEFAULT_DISC:Ljava/lang/String; = "root/application/1/capdiscovery/defaultdisc"

.field public static final CAPDISCOVERY_DISABLE_INITIAL_SCAN:Ljava/lang/String; = "root/application/1/capdiscovery/disableInitialAddressBookScan"

.field public static final CAPDISCOVERY_MAX_ENTRIES_IN_LIST:Ljava/lang/String; = "root/application/1/capdiscovery/maxentriesinlist"

.field public static final CAPDISCOVERY_NON_RCS_CAPINFO_EXPIRY:Ljava/lang/String; = "root/application/1/capdiscovery/nonRCScapInfoExpiry"

.field public static final CAPDISCOVERY_POLLING_PERIOD:Ljava/lang/String; = "root/application/1/capdiscovery/pollingperiod"

.field public static final CAPDISCOVERY_POLLING_RATE:Ljava/lang/String; = "root/application/1/capdiscovery/pollingrate"

.field public static final CAPDISCOVERY_POLLING_RATE_PERIOD:Ljava/lang/String; = "root/application/1/capdiscovery/pollingrateperiod"

.field public static final CFS_TRIGGER:Ljava/lang/String; = "root/application/1/clientControl/cfsTrigger"

.field public static final CHAT_AUTH:Ljava/lang/String; = "ChatAuth"

.field public static final CHAT_ENABLED:Ljava/lang/String; = "root/application/1/services/ChatAuth"

.field public static final CHAT_REVOKE_TIMER:Ljava/lang/String; = "root/application/1/im/ChatRevokeTimer"

.field public static final CLIENT_CONTROL_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/clientControl/"

.field public static final COMPOSER_AUTH:Ljava/lang/String; = "root/application/1/services/composerAuth"

.field public static final CONFIG_VERSION:Ljava/lang/String; = "root/vers/version"

.field public static final CONF_FCTY_URI:Ljava/lang/String; = "root/application/1/im/conf-fcty-uri"

.field public static final DEFERRED_MSG_FUNC_URI:Ljava/lang/String; = "root/application/1/im/deferred-msg-func-uri"

.field public static final DISPLAY_NOTIFICATION_SWITCH:Ljava/lang/String; = "root/application/1/clientControl/displayNotificationSwitch"

.field public static final EXPLODER_URI:Ljava/lang/String; = "root/application/1/im/exploder-uri"

.field public static final EXTENSIONS_MAX_MSRP_SIZE:Ljava/lang/String; = "root/application/1/other/extensionsMaxMSRPSize"

.field public static final EXTENSION_ENABLED:Ljava/lang/String; = "root/application/1/services/allowRCSExtensions"

.field public static final EXT_ATT_IM_MSRP_FT_MAX_SIZE:Ljava/lang/String; = "root/application/1/im/ext/att/MSRPFtMaxSize"

.field public static final EXT_ATT_IM_SLM_MAX_RECIPIENTS:Ljava/lang/String; = "root/application/1/im/ext/att/slmMaxRecipients"

.field public static final FIRST_MSG_INVITE:Ljava/lang/String; = "root/application/1/im/firstMessageInvite"

.field public static final FTHTTP_CAP_ALWAYS_ON:Ljava/lang/String; = "root/application/1/clientControl/ftHTTPCapAlwaysOn"

.field public static final FT_AUT_ACCEPT:Ljava/lang/String; = "root/application/1/im/ftautaccept"

.field public static final FT_CAP_ALWAYS_ON:Ljava/lang/String; = "root/application/1/im/ftCapalwaysON"

.field public static final FT_DEFAULT_MECH:Ljava/lang/String; = "root/application/1/im/ftDefaultMech"

.field public static final FT_ENABLED:Ljava/lang/String; = "root/application/1/services/ftAuth"

.field public static final FT_FB_DEFAULT:Ljava/lang/String; = "root/application/1/ux/ftFBDefault"

.field public static final FT_HTTP_CS_PWD:Ljava/lang/String; = "root/application/1/im/ftHTTPCSPwd"

.field public static final FT_HTTP_CS_URI:Ljava/lang/String; = "root/application/1/im/ftHTTPCSURI"

.field public static final FT_HTTP_CS_USER:Ljava/lang/String; = "root/application/1/im/ftHTTPCSUser"

.field public static final FT_HTTP_EXTRA_CS_URI:Ljava/lang/String; = "root/application/1/im/ftHTTPExtraCSURI"

.field public static final FT_HTTP_FALLBACK:Ljava/lang/String; = "root/application/1/im/ftHTTPFallback"

.field public static final FT_HTTP_FT_WARN_SIZE:Ljava/lang/String; = "root/application/1/im/ftHTTPftWarnSize"

.field public static final FT_HTTP_MAX_SIZE_FILE_TR:Ljava/lang/String; = "root/application/1/im/ftHTTPMaxSizeFileTr"

.field public static final FT_HTTP_MAX_SIZE_FILE_TR_INCOMING:Ljava/lang/String; = "root/application/1/im/ftHTTPMaxSizeFileTrIncoming"

.field public static final FT_MAX1_TO_MANY_RECIPIENTS:Ljava/lang/String; = "root/application/1/clientControl/ftMax1ToManyRecipients"

.field public static final FT_MSRP_FT_WARN_SIZE:Ljava/lang/String; = "root/application/1/im/ext/ftMSRPftWarnSize"

.field public static final FT_MSRP_MAX_SIZE_FILE_TR:Ljava/lang/String; = "root/application/1/im/ext/ftMSRPMaxSizeFileTr"

.field public static final FT_MSRP_MAX_SIZE_FILE_TR_INCOMING:Ljava/lang/String; = "root/application/1/im/ext/ftMSRPMaxSizeFileTrIncoming"

.field public static final FT_ST_AND_FW_ENABLED:Ljava/lang/String; = "root/application/1/im/ftStAndFwEnabled"

.field public static final FT_THUMB:Ljava/lang/String; = "root/application/1/im/ftThumb"

.field public static final FT_WARN_SIZE:Ljava/lang/String; = "root/application/1/im/ftWarnSize"

.field public static final GEOPULL_ENABLED:Ljava/lang/String; = "root/application/1/services/geolocPullAuth"

.field public static final GEOPUSH_ENABLED:Ljava/lang/String; = "root/application/1/services/geolocPushAuth"

.field public static final GROUP_CHAT_ENABLED:Ljava/lang/String; = "root/application/1/services/GroupChatAuth"

.field public static final GROUP_CHAT_FULL_STAND_FWD:Ljava/lang/String; = "root/application/1/im/GroupChatFullStandFwd"

.field public static final GROUP_CHAT_ONLY_F_STAND_FWD:Ljava/lang/String; = "root/application/1/im/GroupChatOnlyFStandFwd"

.field public static final HOME_NETWORK_DOMAIN_NAME:Ljava/lang/String; = "root/application/0/home_network_domain_name"

.field public static final IMS_APPLICATION_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/0/"

.field public static final IMS_APPLICATION_EXT_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/0/ext/"

.field public static final IM_CAP_ALWAYS_ON:Ljava/lang/String; = "root/application/1/im/imcapalwayson"

.field public static final IM_CAP_NON_RCS:Ljava/lang/String; = "root/application/1/im/imCapNonRCS"

.field public static final IM_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/im/"

.field public static final IM_EXT_ATT_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/im/ext/att/"

.field public static final IM_EXT_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/im/ext/"

.field public static final IM_MAX_SIZE:Ljava/lang/String; = "root/application/1/im/MaxSize"

.field public static final IM_MAX_SIZE_1_TO_1:Ljava/lang/String; = "root/application/1/im/maxsize1to1"

.field public static final IM_MAX_SIZE_1_TO_M:Ljava/lang/String; = "root/application/1/im/maxsize1tom"

.field public static final IM_MSG_TECH:Ljava/lang/String; = "root/application/1/im/imMsgTech"

.field public static final IM_SESSION_START:Ljava/lang/String; = "root/application/1/im/imsessionstart"

.field public static final IM_WARN_IW:Ljava/lang/String; = "root/application/1/im/imwarniw"

.field public static final IM_WARN_SF:Ljava/lang/String; = "root/application/1/im/imWarnSF"

.field public static final INT_URL_FORMAT:Ljava/lang/String; = "root/application/0/ext/inturlfmt"

.field public static final IR51_SWITCH_UX:Ljava/lang/String; = "root/application/1/ux/IR51SwitchUx"

.field public static final IR94_VIDEO_AUTH:Ljava/lang/String; = "root/application/1/services/IR94VideoAuth"

.field public static final IS_ENABLED:Ljava/lang/String; = "root/application/1/services/isAuth"

.field public static final JOYN_UX_MESSAGING_UX:Ljava/lang/String; = "root/application/1/SERVICEPROVIDEREXT/joyn/UX/messagingUX"

.field public static final JOYN_UX_MSG_FB_DEFAULT:Ljava/lang/String; = "root/application/1/SERVICEPROVIDEREXT/joyn/UX/msgFBDefault"

.field public static final JOYN_UX_PATH:Ljava/lang/String; = "root/application/1/SERVICEPROVIDEREXT/joyn/UX/"

.field public static final KEEP_ALIVE_ENABLED:Ljava/lang/String; = "root/application/0/keep_alive_enabled"

.field public static final LBO_PCSCF_ADDRESS:Ljava/lang/String; = "root/application/0/lbo_p-cscf_address/0/address"

.field public static final LBO_PCSCF_ADDRESS_NEW:Ljava/lang/String; = "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/address1"

.field public static final LBO_PCSCF_ADDRESS_TYPE:Ljava/lang/String; = "root/application/0/lbo_p-cscf_address/0/addresstype"

.field public static final LBO_PCSCF_ADDRESS_TYPE_NEW:Ljava/lang/String; = "root/application/0/lbo_p-cscf_address/0/lbo_p-cscf_addresses/addresstype1"

.field public static final MASS_FCTY_URI:Ljava/lang/String; = "root/application/1/im/mass-fcty-uri"

.field public static final MAX1_TO_MANY_RECIPIENTS:Ljava/lang/String; = "root/application/1/clientControl/max1toManyRecipients"

.field public static final MAX_ADHOC_CLOSED_GROUP_SIZE:Ljava/lang/String; = "root/application/1/im/ext/max_adhoc_closed_group_size"

.field public static final MAX_ADHOC_GROUP_SIZE:Ljava/lang/String; = "root/application/1/im/max_adhoc_group_size"

.field public static final MAX_ADHOC_OPEN_GROUP_SIZE:Ljava/lang/String; = "root/application/1/im/max_adhoc_open_group_size"

.field public static final MAX_CONCURRENT_SESSION:Ljava/lang/String; = "root/application/1/im/maxConcurrentSession"

.field public static final MAX_SIZE_EXTRA_FILE_TR:Ljava/lang/String; = "root/application/1/im/MaxSizeExtraFileTr"

.field public static final MAX_SIZE_FILE_TR:Ljava/lang/String; = "root/application/1/im/MaxSizeFileTr"

.field public static final MAX_SIZE_FILE_TR_INCOMING:Ljava/lang/String; = "root/application/1/im/MaxSizeFileTrIncoming"

.field public static final MAX_SIZE_IMAGE_SHARE:Ljava/lang/String; = "root/application/0/ext/maxsizeimageshare"

.field public static final MAX_TIME_VIDEO_SHARE:Ljava/lang/String; = "root/application/0/ext/maxtimevideoshare"

.field public static final MESSAGING_UX:Ljava/lang/String; = "root/application/1/ux/messagingUX"

.field public static final MSGCAPVALIDITY:Ljava/lang/String; = "root/application/1/capdiscovery/ext/joyn/msgcapvalidity"

.field public static final MSG_FB_DEFAULT:Ljava/lang/String; = "root/application/1/ux/msgFBDefault"

.field public static final MULTIMEDIA_CHAT:Ljava/lang/String; = "root/application/1/im/multiMediaChat"

.field public static final OMADM_AMR_AUDIO_BITRATE:Ljava/lang/String; = "omadm/./3GPP_IMS/AMR_AUDIO_BITRATE"

.field public static final OMADM_AMR_AUDIO_BITRATE_WB:Ljava/lang/String; = "omadm/./3GPP_IMS/AMR_AUDIO_BITRATE_WB"

.field public static final OMADM_AMR_WB:Ljava/lang/String; = "omadm/./3GPP_IMS/AMR_WB"

.field public static final OMADM_AVAIL_CACHE_EXP:Ljava/lang/String; = "omadm/./3GPP_IMS/AVAIL_CACHE_EXP"

.field public static final OMADM_CAP_CACHE_EXP:Ljava/lang/String; = "omadm/./3GPP_IMS/CAP_CACHE_EXP"

.field public static final OMADM_CAP_DISCOVERY:Ljava/lang/String; = "omadm/./3GPP_IMS/CAP_DISCOVERY"

.field public static final OMADM_CAP_POLL_INTERVAL:Ljava/lang/String; = "omadm/./3GPP_IMS/CAP_POLL_INTERVAL"

.field public static final OMADM_DCN_NUMBER:Ljava/lang/String; = "omadm/./3GPP_IMS/DCN_NUMBER"

.field public static final OMADM_DOMAIN_PUI:Ljava/lang/String; = "omadm/./3GPP_IMS/DOMAIN_PUI"

.field public static final OMADM_EAB_SETTING:Ljava/lang/String; = "omadm/./3GPP_IMS/EAB_SETTING"

.field public static final OMADM_FQDN_FOR_PCSCF:Ljava/lang/String; = "omadm/./3GPP_IMS/FQDN_FOR_PCSCF"

.field public static final OMADM_GZIP_FLAG:Ljava/lang/String; = "omadm/./3GPP_IMS/GZIP_FLAG"

.field public static final OMADM_HD_VOICE:Ljava/lang/String; = "omadm/./3GPP_IMS/HD_VOICE"

.field public static final OMADM_HOME_NETWORK_DOMAIN_NAME:Ljava/lang/String; = "omadm/./3GPP_IMS/Home_network_domain_name"

.field public static final OMADM_IMS_TEST_MODE:Ljava/lang/String; = "omadm/./3GPP_IMS/IMS_TEST_MODE"

.field public static final OMADM_LVC_BETA_SETTING:Ljava/lang/String; = "omadm/./3GPP_IMS/LVC_BETA_SETTING"

.field public static final OMADM_LVC_ENABLED:Ljava/lang/String; = "omadm/./3GPP_IMS/LVC_ENABLED"

.field public static final OMADM_MIN_SE:Ljava/lang/String; = "omadm/./3GPP_IMS/MIN_SE"

.field public static final OMADM_PATH:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field public static final OMADM_PHONE_CONTEXT_URI:Ljava/lang/String; = "omadm/./3GPP_IMS/PHONE_CONTEXT_URI"

.field public static final OMADM_POLL_LIST_SUB_EXP:Ljava/lang/String; = "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

.field public static final OMADM_PREF_CSCF_PORT:Ljava/lang/String; = "omadm/./3GPP_IMS/PREF_CSCF_PORT"

.field public static final OMADM_PRIVATE_USER_IDENTITY:Ljava/lang/String; = "omadm/./3GPP_IMS/Private_user_identity"

.field public static final OMADM_PUBLIC_USER_ID:Ljava/lang/String; = "omadm/./3GPP_IMS/Public_user_identity_List/Public_user_identity_List_1/Public_user_identity"

.field public static final OMADM_PUBLISH_ERR_RETRY_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/PUBLISH_ERR_RETRY_TIMER"

.field public static final OMADM_PUBLISH_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/PUBLISH_TIMER"

.field public static final OMADM_PUBLISH_TIMER_EXTEND:Ljava/lang/String; = "omadm/./3GPP_IMS/PUBLISH_TIMER_EXTEND"

.field public static final OMADM_P_CSCF_ADDRESS:Ljava/lang/String; = "omadm/./3GPP_IMS/P-CSCF_Address"

.field public static final OMADM_RINGBACK_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/RINGBACK_TIMER"

.field public static final OMADM_RINGING_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/RINGING_TIMER"

.field public static final OMADM_RTP_RTCP_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/RTP_RTCP_TIMER"

.field public static final OMADM_SIP_SESSION_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/SIP_SESSION_TIMER"

.field public static final OMADM_SPEAKER_DEFAULT_VIDEO:Ljava/lang/String; = "omadm/./3GPP_IMS/SPEAKER_DEFAULT_VIDEO"

.field public static final OMADM_SPR_IMS_ALPHA_ID:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_ALPHA_ID"

.field public static final OMADM_SPR_IMS_NVISIM:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_NVISIM"

.field public static final OMADM_SPR_IMS_PARAM_IND:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PARAM_IND"

.field public static final OMADM_SPR_IMS_PCSCF_ADDR_TYPE:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PCSCF_ADDR_TYPE"

.field public static final OMADM_SPR_IMS_PUID1:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PUID1"

.field public static final OMADM_SPR_IMS_PUID2:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PUID2"

.field public static final OMADM_SPR_IMS_PUID3:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PUID3"

.field public static final OMADM_SPR_IMS_PUID4:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PUID4"

.field public static final OMADM_SPR_IMS_PUID5:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_PUID5"

.field public static final OMADM_SPR_IMS_TPDA:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_TPDA"

.field public static final OMADM_SPR_IMS_TPDCS:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_TPDCS"

.field public static final OMADM_SPR_IMS_TPPID:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_TPPID"

.field public static final OMADM_SPR_IMS_TPSCA:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_TPSCA"

.field public static final OMADM_SPR_IMS_TPVP:Ljava/lang/String; = "omadm/./3GPP_IMS/SPR_IMS_TPVP"

.field public static final OMADM_SRC_AMR:Ljava/lang/String; = "omadm/./3GPP_IMS/SRC_AMR"

.field public static final OMADM_SRC_AMR_WB:Ljava/lang/String; = "omadm/./3GPP_IMS/SRC_AMR_WB"

.field public static final OMADM_SRC_THROTTLE_PUBLISH:Ljava/lang/String; = "omadm/./3GPP_IMS/SRC_THROTTLE_PUBLISH"

.field public static final OMADM_SUBSCRIBE_MAX_ENTRY:Ljava/lang/String; = "omadm/./3GPP_IMS/SUBSCRIBE_MAX_ENTRY"

.field public static final OMADM_TWLAN_911_CALLFAIL_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/TWLAN_911_CALLFAIL_TIMER"

.field public static final OMADM_T_LTE_911_FAIL:Ljava/lang/String; = "omadm/./3GPP_IMS/T_LTE_911_FAIL"

.field public static final OMADM_Timer_T1:Ljava/lang/String; = "omadm/./3GPP_IMS/Timer_T1"

.field public static final OMADM_Timer_T2:Ljava/lang/String; = "omadm/./3GPP_IMS/Timer_T2"

.field public static final OMADM_Timer_TF:Ljava/lang/String; = "omadm/./3GPP_IMS/Timer_TF"

.field public static final OMADM_UDP_KEEP_ALIVE:Ljava/lang/String; = "omadm/./3GPP_IMS/UDP_KEEP_ALIVE"

.field public static final OMADM_URI_MEDIA_RSC_SERV_3WAY_CALL:Ljava/lang/String; = "omadm/./3GPP_IMS/URI_MEDIA_RSC_SERV_3WAY_CALL"

.field public static final OMADM_VCE_CONFIG:Ljava/lang/String; = "omadm/./3GPP_IMS/VCE_CONFIG"

.field public static final OMADM_VOICE_DOMAIN_PREF_EUTRAN:Ljava/lang/String; = "omadm/./3GPP_IMS/VOICE_DOMAIN_PREF_EUTRAN"

.field public static final OMADM_VOLTE_ENABLED:Ljava/lang/String; = "omadm/./3GPP_IMS/VOLTE_ENABLED"

.field public static final OMADM_VOWIFI_ENABLED:Ljava/lang/String; = "omadm/./3GPP_IMS/SHOW_VOWIFI_REGI_ICON"

.field public static final OMADM_VWF_ENABLED:Ljava/lang/String; = "omadm/./3GPP_IMS/VWF_ENABLED"

.field public static final OMADM_VZW_TIMS_TIMER:Ljava/lang/String; = "omadm/./3GPP_IMS/VZW_TIMS_TIMER"

.field public static final ONE_TO_MANY_SELECTED_TECH:Ljava/lang/String; = "root/application/1/clientControl/1toManySelectedTech"

.field public static final OTHER_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/other/"

.field public static final PERSONAL_PROFILE_ADDR:Ljava/lang/String; = "root/profile/addr"

.field public static final PERSONAL_PROFILE_ADDR_TYPE:Ljava/lang/String; = "root/profile/addrtype"

.field public static final POST_CALL_AUTH:Ljava/lang/String; = "root/application/1/services/postCallAuth"

.field public static final PRESENCE_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/presence/"

.field public static final PRESENCE_MAX_SUBSCRIPTION_URI:Ljava/lang/String; = "root/application/1/presence/max-number-ofsubscriptions-inpresence-list"

.field public static final PRESENCE_PUBLISH_TIMER:Ljava/lang/String; = "root/application/1/presence/PublishTimer"

.field public static final PRESENCE_RLS_URI:Ljava/lang/String; = "root/application/1/presence/RLS-URI"

.field public static final PRESENCE_THROTTLE_PUBLISH:Ljava/lang/String; = "root/application/1/presence/source-throttlepublish"

.field public static final PRES_SRV_CAP:Ljava/lang/String; = "root/application/1/im/pres-srv-cap"

.field public static final PRIVATE_USER_IDENTITY:Ljava/lang/String; = "root/application/0/private_user_identity"

.field public static final PS_MEDIA:Ljava/lang/String; = "root/application/1/other/transportproto/psmedia"

.field public static final PS_MEDIA_NEW:Ljava/lang/String; = "root/application/0/ext/transportproto/psmedia"

.field public static final PS_SIGNALLING:Ljava/lang/String; = "root/application/1/other/transportproto/pssignalling"

.field public static final PS_SIGNALLING_NEW:Ljava/lang/String; = "root/application/0/ext/transportproto/pssignalling"

.field public static final PUBLICACCOUNT_ADDR:Ljava/lang/String; = "root/application/1/publicaccount/Addr"

.field public static final PUBLICACCOUNT_ADDRTYPE:Ljava/lang/String; = "root/application/1/publicaccount/AddrType"

.field public static final PUBLICACCOUNT_PATH:Ljava/lang/String; = "root/application/1/publicaccount/"

.field public static final PUBLIC_USER_IDENTITY:Ljava/lang/String; = "root/application/0/public_user_identity_list/0/public_user_identity"

.field public static final PUBLIC_USER_IDENTITY_LIST:Ljava/lang/String; = "root/application/0/public_user_identity_list"

.field public static final PUBLIC_USER_IDENTITY_LIST_CON:Ljava/lang/String; = "public_user_identity"

.field public static final PUBLIC_USER_IDENTITY_NEW:Ljava/lang/String; = "root/application/0/public_user_identity_list/0/public_user_identities/public_user_identity"

.field public static final Q_VALUE:Ljava/lang/String; = "root/application/0/ext/q-value"

.field public static final RAW_CONFIG_XML_FILE:Ljava/lang/String; = "info/raw_config_xml_file"

.field public static final RCS_VIDEO_ENABLED:Ljava/lang/String; = "root/application/1/services/rcsIPVideoCallAuth"

.field public static final RCS_VOICE_ENABLED:Ljava/lang/String; = "root/application/1/services/rcsIPVoiceCallAuth"

.field public static final RCS_VOLTE_SINGLE_REGISTRATION:Ljava/lang/String; = "root/application/0/ext/rcsVolteSingleRegistration"

.field public static final REALM:Ljava/lang/String; = "root/application/0/appauth/realm"

.field public static final RECONNECT_GUARD_TIMER:Ljava/lang/String; = "root/application/1/clientControl/reconnectGuardTimer"

.field public static final RECONNECT_GUARD_TIMER_JOYN:Ljava/lang/String; = "root/application/1/serviceproviderext/joyn/messaging/reconnectGuardTimer"

.field public static final SERVICE_AVAILABILITY_INFO_EXPIRY:Ljava/lang/String; = "root/application/1/clientControl/serviceAvailabilityInfoExpiry"

.field public static final SERVICE_CHRACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/services/"

.field public static final SHARED_MAP_AUTH:Ljava/lang/String; = "root/application/1/services/sharedMapAuth"

.field public static final SHARED_SKETCH_AUTH:Ljava/lang/String; = "root/application/1/services/sharedSketchAuth"

.field public static final SLM_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/cpm/standalonemsg"

.field public static final SLM_ENABLED:Ljava/lang/String; = "root/application/1/services/standaloneMsgAuth"

.field public static final SLM_MAX_MSG_SIZE:Ljava/lang/String; = "root/application/1/cpm/standalonemsg/MaxSizeStandalone"

.field public static final SMS_FALLBACK_AUTH:Ljava/lang/String; = "root/application/1/im/smsfallbackauth"

.field public static final SOCIAL_PRESENCE_ENABLED:Ljava/lang/String; = "root/application/1/services/presencePrfl"

.field private static final TAG:Ljava/lang/String;

.field public static final TIMER_IDLE:Ljava/lang/String; = "root/application/1/im/TimerIdle"

.field public static final TRANSPORT_PROTO_CHARACTERISTIC_NEW_PATH:Ljava/lang/String; = "root/application/0/ext/transportproto/"

.field public static final TRANSPORT_PROTO_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/other/transportproto/"

.field public static final UNDEFINED_MAX_SIZE_FILE_TR_INCOMING:J = -0x1L

.field public static final USERPWD:Ljava/lang/String; = "root/application/0/appauth/userpwd"

.field public static final USER_ALIAS_AUTH:Ljava/lang/String; = "root/application/1/ux/userAliasAuth"

.field public static final USER_NAME:Ljava/lang/String; = "root/application/0/appauth/UserName"

.field public static final USER_PWD:Ljava/lang/String; = "root/application/0/appauth/UserPwd"

.field public static final UX_CHARACTERISTIC_PATH:Ljava/lang/String; = "root/application/1/ux/"

.field public static final VIDEO_AND_ENCALL_UX:Ljava/lang/String; = "root/application/1/ux/videoAndEnCallUX"

.field public static final VS_ENABLED:Ljava/lang/String; = "root/application/1/services/vsAuth"

.field public static final WARN_SIZE_IMAGE_SHARE:Ljava/lang/String; = "root/application/1/other/warnsizeimageshare"

.field public static final WIFI_MEDIA:Ljava/lang/String; = "root/application/1/other/transportproto/wifimedia"

.field public static final WIFI_MEDIA_NEW:Ljava/lang/String; = "root/application/0/ext/transportproto/wifimedia"

.field public static final WIFI_SIGNALLING:Ljava/lang/String; = "root/application/1/other/transportproto/wifisignalling"

.field public static final WIFI_SIGNALLING_NEW:Ljava/lang/String; = "root/application/0/ext/transportproto/wifisignalling"

.field public static final XCAP_ROOT_URI:Ljava/lang/String; = "root/application/1/xdms/xcaprooturi"

.field public static final XDMS_PATH:Ljava/lang/String; = "root/application/1/xdms/"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/ims/settings/RcsConfigurationReader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/ims/settings/RcsConfigurationReader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while parsing integer in parseBoolean() - NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_0
    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getIntValue: String value used as Boolean is null. Returning -1 instead."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getIntValue: String value used as integer is null. Returning -1 instead."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v4, -0x1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while parsing integer in parseLong() - NumberFormatException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_0
    sget-object v2, Lcom/sec/ims/settings/RcsConfigurationReader;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getIntValue: String value used as long is null. Returning -1 instead."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
