.class public final Lcom/sec/ims/settings/RcsConfigurationReader$ConfigTable;
.super Ljava/lang/Object;
.source "RcsConfigurationReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/RcsConfigurationReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConfigTable"
.end annotation


# static fields
.field public static final APPAUTH_REALM:Ljava/lang/String; = "realm"

.field public static final APPAUTH_USER_NAME:Ljava/lang/String; = "UserName"

.field public static final APPAUTH_USER_PWD:Ljava/lang/String; = "UserPwd"

.field public static final CAPDISCOVERY_ALLOWED_PREFIXES:Ljava/lang/String; = "capdiscoveryallowedprefixes"

.field public static final CAPDISCOVERY_CAPINFO_EXPIRY:Ljava/lang/String; = "capinfoexpiry"

.field public static final CAPDISCOVERY_CAP_DISC_COMMON_STACK:Ljava/lang/String; = "capDiscCommonStack"

.field public static final CAPDISCOVERY_DEFAULT_DISC:Ljava/lang/String; = "defaultdisc"

.field public static final CAPDISCOVERY_DISABLE_INITIAL_SCAN:Ljava/lang/String; = "disableInitialAddressBookScan"

.field public static final CAPDISCOVERY_MAX_ENTRIES_IN_LIST:Ljava/lang/String; = "maxentriesinlist"

.field public static final CAPDISCOVERY_NON_RCS_CAPINFO_EXPIRY:Ljava/lang/String; = "nonRCScapInfoExpiry"

.field public static final CAPDISCOVERY_POLLING_PERIOD:Ljava/lang/String; = "pollingperiod"

.field public static final CAPDISCOVERY_POLLING_RATE:Ljava/lang/String; = "pollingrate"

.field public static final CAPDISCOVERY_POLLING_RATE_PERIOD:Ljava/lang/String; = "pollingrateperiod"

.field public static final CLIENTCONTROL_CFS_TRIGGER:Ljava/lang/String; = "cfsTrigger"

.field public static final CLIENTCONTROL_DISPLAY_NOTIFICATION_SWITCH:Ljava/lang/String; = "displayNotificationSwitch"

.field public static final CLIENTCONTROL_FT_HTTP_CAP_ALWAYS_ON:Ljava/lang/String; = "ftHTTPCapAlwaysOn"

.field public static final CLIENTCONTROL_FT_MAX1_TO_MANY_RECIPIENTS:Ljava/lang/String; = "ftMax1ToManyRecipients"

.field public static final CLIENTCONTROL_MAX1_TO_MANY_RECIPIENTS:Ljava/lang/String; = "max1toManyRecipients"

.field public static final CLIENTCONTROL_ONE_TO_MANY_SELECTED_TECH:Ljava/lang/String; = "1toManySelectedTech"

.field public static final CLIENTCONTROL_RECONNECT_GUARD_TIMER:Ljava/lang/String; = "reconnectGuardTimer"

.field public static final CLIENTCONTROL_SERVICE_AVAILABILITY_INFO_EXPIRY:Ljava/lang/String; = "serviceAvailabilityInfoExpiry"

.field public static final CPM_SLM_MAX_MSG_SIZE:Ljava/lang/String; = "MaxSizeStandalone"

.field public static final EXT_INT_URL_FORMAT:Ljava/lang/String; = "inturlfmt"

.field public static final EXT_MAX_SIZE_IMAGE_SHARE:Ljava/lang/String; = "maxsizeimageshare"

.field public static final EXT_MAX_TIME_VIDEO_SHARE:Ljava/lang/String; = "maxtimevideoshare"

.field public static final EXT_NAT_URL_FORMAT:Ljava/lang/String; = "naturlfmt"

.field public static final EXT_Q_VALUE:Ljava/lang/String; = "q-value"

.field public static final EXT_RCS_VOLTE_SINGLE_REGISTRATION:Ljava/lang/String; = "rcsVolteSingleRegistration"

.field public static final IM_AUT_ACCEPT:Ljava/lang/String; = "autaccept"

.field public static final IM_AUT_ACCEPT_GROUP_CHAT:Ljava/lang/String; = "autacceptgroupchat"

.field public static final IM_CHAT_REVOKE_TIMER:Ljava/lang/String; = "ChatRevokeTimer"

.field public static final IM_CONF_FCTY_URI:Ljava/lang/String; = "conf-fcty-uri"

.field public static final IM_DEFERRED_MSG_FUNC_URI:Ljava/lang/String; = "deferred-msg-func-uri"

.field public static final IM_EXPLODER_URI:Ljava/lang/String; = "exploder-uri"

.field public static final IM_FIRST_MSG_INVITE:Ljava/lang/String; = "firstMessageInvite"

.field public static final IM_FT_AUT_ACCEPT:Ljava/lang/String; = "ftautaccept"

.field public static final IM_FT_CAP_ALWAYS_ON:Ljava/lang/String; = "ftCapalwaysON"

.field public static final IM_FT_DEFAULT_MECH:Ljava/lang/String; = "ftDefaultMech"

.field public static final IM_FT_HTTP_CS_PWD:Ljava/lang/String; = "ftHTTPCSPwd"

.field public static final IM_FT_HTTP_CS_URI:Ljava/lang/String; = "ftHTTPCSURI"

.field public static final IM_FT_HTTP_CS_USER:Ljava/lang/String; = "ftHTTPCSUser"

.field public static final IM_FT_HTTP_EXTRA_CS_URI:Ljava/lang/String; = "ftHTTPExtraCSURI"

.field public static final IM_FT_HTTP_FALLBACK:Ljava/lang/String; = "ftHTTPFallback"

.field public static final IM_FT_HTTP_FT_WARN_SIZE:Ljava/lang/String; = "ftHTTPftWarnSize"

.field public static final IM_FT_HTTP_MAX_SIZE_FILE_TR:Ljava/lang/String; = "ftHTTPMaxSizeFileTr"

.field public static final IM_FT_HTTP_MAX_SIZE_FILE_TR_INCOMING:Ljava/lang/String; = "ftHTTPMaxSizeFileTrIncoming"

.field public static final IM_FT_ST_AND_FW_ENABLED:Ljava/lang/String; = "ftStAndFwEnabled"

.field public static final IM_FT_THUMB:Ljava/lang/String; = "ftThumb"

.field public static final IM_FT_WARN_SIZE:Ljava/lang/String; = "ftWarnSize"

.field public static final IM_GROUP_CHAT_FULL_STAND_FWD:Ljava/lang/String; = "GroupChatFullStandFwd"

.field public static final IM_GROUP_CHAT_ONLY_F_STAND_FWD:Ljava/lang/String; = "GroupChatOnlyFStandFwd"

.field public static final IM_IM_CAP_ALWAYS_ON:Ljava/lang/String; = "imcapalwayson"

.field public static final IM_IM_CAP_NON_RCS:Ljava/lang/String; = "imCapNonRCS"

.field public static final IM_IM_MSG_TECH:Ljava/lang/String; = "imMsgTech"

.field public static final IM_IM_SESSION_START:Ljava/lang/String; = "imsessionstart"

.field public static final IM_IM_WARN_IW:Ljava/lang/String; = "imwarniw"

.field public static final IM_IM_WARN_SF:Ljava/lang/String; = "imWarnSF"

.field public static final IM_MASS_FCTY_URI:Ljava/lang/String; = "mass-fcty-uri"

.field public static final IM_MAX_ADHOC_GROUP_SIZE:Ljava/lang/String; = "max_adhoc_group_size"

.field public static final IM_MAX_ADHOC_OPEN_GROUP_SIZE:Ljava/lang/String; = "max_adhoc_open_group_size"

.field public static final IM_MAX_CONCURRENT_SESSION:Ljava/lang/String; = "maxConcurrentSession"

.field public static final IM_MAX_SIZE:Ljava/lang/String; = "MaxSize"

.field public static final IM_MAX_SIZE_1_TO_1:Ljava/lang/String; = "maxsize1to1"

.field public static final IM_MAX_SIZE_1_TO_M:Ljava/lang/String; = "maxsize1tom"

.field public static final IM_MAX_SIZE_EXTRA_FILE_TR:Ljava/lang/String; = "MaxSizeExtraFileTr"

.field public static final IM_MAX_SIZE_FILE_TR:Ljava/lang/String; = "MaxSizeFileTr"

.field public static final IM_MAX_SIZE_FILE_TR_INCOMING:Ljava/lang/String; = "MaxSizeFileTrIncoming"

.field public static final IM_MULTIMEDIA_CHAT:Ljava/lang/String; = "multiMediaChat"

.field public static final IM_PRES_SRV_CAP:Ljava/lang/String; = "pres-srv-cap"

.field public static final IM_SMS_FALLBACK_AUTH:Ljava/lang/String; = "smsfallbackauth"

.field public static final IM_TIMER_IDLE:Ljava/lang/String; = "TimerIdle"

.field public static final JOYN_MSGCAPVALIDITY:Ljava/lang/String; = "msgcapvalidity"

.field public static final KEEP_ALIVE_ENABLED:Ljava/lang/String; = "keep_alive_enabled"

.field public static final LBO_PCSCF_ADDRESS:Ljava/lang/String; = "address"

.field public static final LBO_PCSCF_ADDRESS_TYPE:Ljava/lang/String; = "addresstype"

.field public static final OTHER_CALL_COMPOSER_TIMER_IDLE:Ljava/lang/String; = "callComposerTimerIdle"

.field public static final OTHER_EXTENSIONS_MAX_MSRP_SIZE:Ljava/lang/String; = "extensionsMaxMSRPSize"

.field public static final OTHER_WARN_SIZE_IMAGE_SHARE:Ljava/lang/String; = "warnsizeimageshare"

.field public static final PRESENCE_LOC_INFO_MAX_VALID_TIME:Ljava/lang/String; = "locinfomaxvalidtime"

.field public static final PRESENCE_MAX_SUBSCRIPTION_LIST:Ljava/lang/String; = "max-number-ofsubscriptions-inpresence-list"

.field public static final PRESENCE_PUBLISH_TIMER:Ljava/lang/String; = "PublishTimer"

.field public static final PRESENCE_RLS_URI:Ljava/lang/String; = "RLS-URI"

.field public static final PRESENCE_THROTTLE_PUBLISH:Ljava/lang/String; = "source-throttlepublish"

.field public static final PRIVATE_USER_IDENTITY:Ljava/lang/String; = "private_user_identity"

.field public static final PUBLICACCOUNT_ADDR:Ljava/lang/String; = "Addr"

.field public static final PUBLICACCOUNT_ADDRTYPE:Ljava/lang/String; = "AddrType"

.field public static final PUBLIC_USER_IDENTITY:Ljava/lang/String; = "public_user_identity"

.field public static final SERVICES_ALLOW_RCS_EXTENSIONS:Ljava/lang/String; = "allowRCSExtensions"

.field public static final SERVICES_CHAT_AUTH:Ljava/lang/String; = "ChatAuth"

.field public static final SERVICES_COMPOSER_AUTH:Ljava/lang/String; = "composerAuth"

.field public static final SERVICES_FT_AUTH:Ljava/lang/String; = "ftAuth"

.field public static final SERVICES_GEOPULL_AUTH:Ljava/lang/String; = "geolocPullAuth"

.field public static final SERVICES_GEOPUSH_AUTH:Ljava/lang/String; = "geolocPushAuth"

.field public static final SERVICES_GROUP_CHAT_AUTH:Ljava/lang/String; = "GroupChatAuth"

.field public static final SERVICES_IR94_VIDEO_AUTH:Ljava/lang/String; = "IR94VideoAuth"

.field public static final SERVICES_IS_AUTH:Ljava/lang/String; = "isAuth"

.field public static final SERVICES_POST_CALL_AUTH:Ljava/lang/String; = "postCallAuth"

.field public static final SERVICES_PRESENCE_PRFL:Ljava/lang/String; = "presencePrfl"

.field public static final SERVICES_RCS_DISABLED_STATE:Ljava/lang/String; = "rcsDisabledState"

.field public static final SERVICES_RCS_IPVIDEOCALL_AUTH:Ljava/lang/String; = "rcsIPVideoCallAuth"

.field public static final SERVICES_RCS_IPVOICECALL_AUTH:Ljava/lang/String; = "rcsIPVoiceCallAuth"

.field public static final SERVICES_SHARED_MAP_AUTH:Ljava/lang/String; = "sharedMapAuth"

.field public static final SERVICES_SHARED_SKETCH_AUTH:Ljava/lang/String; = "sharedSketchAuth"

.field public static final SERVICES_SLM_AUTH:Ljava/lang/String; = "standaloneMsgAuth"

.field public static final SERVICES_VS_AUTH:Ljava/lang/String; = "vsAuth"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final TRANSPORTPROTO_PS_MEDIA:Ljava/lang/String; = "psmedia"

.field public static final TRANSPORTPROTO_PS_MEDIA_ROAMING:Ljava/lang/String; = "psmediaroaming"

.field public static final TRANSPORTPROTO_PS_RT_MEDIA:Ljava/lang/String; = "psrtmedia"

.field public static final TRANSPORTPROTO_PS_RT_MEDIA_ROAMING:Ljava/lang/String; = "psrtmediaroaming"

.field public static final TRANSPORTPROTO_PS_SIGNALLING:Ljava/lang/String; = "pssignalling"

.field public static final TRANSPORTPROTO_PS_SIGNALLING_ROAMING:Ljava/lang/String; = "pssignallingroaming"

.field public static final TRANSPORTPROTO_WIFI_MEDIA:Ljava/lang/String; = "wifimedia"

.field public static final TRANSPORTPROTO_WIFI_RT_MEDIA:Ljava/lang/String; = "wifirtmedia"

.field public static final TRANSPORTPROTO_WIFI_SIGNALLING:Ljava/lang/String; = "wifisignalling"

.field public static final UX_CALL_LOG_BEARER_DIFFER:Ljava/lang/String; = "callLogsBearerDiffer"

.field public static final UX_FT_FB_DEFAULT:Ljava/lang/String; = "ftFBDefault"

.field public static final UX_IR51_SWITCH_UX:Ljava/lang/String; = "IR51SwitchUx"

.field public static final UX_MESSAGING_UX:Ljava/lang/String; = "messagingUX"

.field public static final UX_MSG_FB_DEFAULT:Ljava/lang/String; = "msgFBDefault"

.field public static final UX_USER_ALIAS_AUTH:Ljava/lang/String; = "userAliasAuth"

.field public static final UX_VIDEO_AND_ENCALL_UX:Ljava/lang/String; = "videoAndEnCallUX"

.field public static final VALIDITY:Ljava/lang/String; = "validity"

.field public static final VERSION:Ljava/lang/String; = "version"

.field public static final XDMS_XCAP_ROOT_URI:Ljava/lang/String; = "xcaprooturi"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
