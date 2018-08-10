.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;
.super Ljava/lang/Object;
.source "KnoxVpnConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants$ProfileState;
    }
.end annotation


# static fields
.field public static final ACTION_VPN_INTERFACE_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.INTERFACE_STATUS_INTERNAL"

.field public static final ACTION_VPN_RETRY_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.VPN_RETRY_INTERNAL"

.field public static final ADD_ALL_APPLICATION:Ljava/lang/String; = "1"

.field public static final ADD_ALL_PACKAGES:Ljava/lang/String; = "ADD_ALL_PACKAGES"

.field public static final ADD_DROP_RULES_NO_MARK:I = 0x0

.field public static final ADD_INDIVIDUAL_PROXY_RULES:I = 0x3

.field public static final ADD_MEDIA_SOCKETS_TO_INTERFACE:Ljava/lang/String; = "1"

.field public static final ADD_PER_APPLICATION:Ljava/lang/String; = "0"

.field public static final ADD_PROXY_RULES:I = 0x1

.field public static final ADD_RULES:I = 0x0

.field public static final ADD_UID:Ljava/lang/String; = "1"

.field public static final ANYCONNECT_BIND_ACTION:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf.BIND_SERVICE"

.field public static final APPS_TO_RESTART_PROXY:[Ljava/lang/String;

.field public static final BLACK_LISTED_APPLICATION:[Ljava/lang/String;

.field public static final BLACK_LISTED_UID:[Ljava/lang/Integer;

.field public static BLOCK_APP_TRAFFIC:Ljava/lang/String; = null

.field public static final CALLER_FRAMEWORK:Ljava/lang/String; = "1000"

.field public static final CALLER_MEDIA:Ljava/lang/String; = "1013"

.field protected static final CAPTIVE_PORTAL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.android.captiveportallogin"

.field public static final CHAINED_APPLICATION_DEFAULT_USER_ID:I = 0x0

.field public static final CHAINING_DEFAULT_VALUE:I = -0x1

.field public static final CHAINING_DISABLED:I = 0x0

.field public static final CHAINING_ENABLED:I = 0x1

.field public static final CHAINING_NOT_APPLICABLE:I = -0x1

.field public static final CHAINING_STATUS_ERROR:I = -0x1

.field public static final CHAINING_STATUS_NOT_READY:I = 0x0

.field public static final CHAINING_STATUS_READY:I = 0x1

.field public static final CISCO_ANYCONNECT_PKG:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CISCO_APPLICATION_NAME:Ljava/lang/String; = "com.cisco.anyconnect.vpn.android.avf"

.field public static final CLAT_ADD_EXEMPT_RULE:I = 0x0

.field public static final CLAT_REMOVE_EXEMPT_RULE:I = 0x1

.field public static final CONTAINER_PREFIX:Ljava/lang/String; = "sec_container_"

.field public static final CONTAINER_REMOVAL_INTENT:Ljava/lang/String; = "enterprise.container.uninstalled"

.field public static final DEFAULT_CONTAINER_VPN_STATE:I = -0x1

.field public static final DEFAULT_IPV6:I = 0x0

.field public static final DEFAULT_IPV6_FOR_MOCANA:I = 0x1

.field public static final DEFAULT_PAC_URL:Ljava/lang/String; = null

.field public static final DEFAULT_PORT:I = -0x1

.field public static final DEFAULT_PROXY_CREDENTIALS:Ljava/lang/String; = null

.field public static final DEFAULT_PROXY_PORT:I = -0x1

.field public static final DEFAULT_PROXY_SERVER:Ljava/lang/String; = null

.field public static final DISABLE_IPV6:I = 0x0

.field public static final DISABLE_KNOX_PROXY_CONFIG:I = 0x0

.field public static final DNS_CONF_FILE_PATH:Ljava/lang/String; = "/data/system/dnsproperties.ini"

.field protected static final DOWNLOAD_MANAGER_MARK:Ljava/lang/String; = "498"

.field public static final DOWNLOAD_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.downloads"

.field public static final EMAIL_PACKAGE_LIST:[Ljava/lang/String;

.field public static final ENABLE_IPV6:I = 0x1

.field public static final EXTRA_ACTION_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACTION_INTERNAL"

.field public static final EXTRA_PROFILE_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PROFILE_NAME_INTERNAL"

.field public static final EXTRA_PROXY_BROADCAST_CALLER:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.caller"

.field public static final EXTRA_STATE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.STATE_INTERNAL"

.field public static final EXTRA_TUN_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ADDRESS_INTERNAL"

.field public static final EXTRA_TUN_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUN_ID_INTERNAL"

.field public static final EXTRA_TUN_V6_ADDRESS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TUNV6_ADDRESS_INTERNAL"

.field public static final EXTRA_VPN_CLIENT_TYPE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.VPN_CLIENT_TYPE_INTERNAL"

.field private static final F5_KNOX_CLIENT_PACKAGE:Ljava/lang/String; = "com.f5.edge.client_ics"

.field public static final FIPS_MODE:I = 0x1

.field public static final INTENT_CONTAINER_ADMIN_CHANGED_ACTION:Ljava/lang/String; = "enterprise.container.admin.changed"

.field public static final INTENT_UCM_REFRESH_DONE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.UCM_REFRESH_DONE"

.field public static final INVALID_CONTAINER_ID:I = 0x0

.field public static final INVALID_KNOX_NETWORK_ID:I = -0x1

.field public static final JSON_IPV6_ENABLE:Ljava/lang/String; = "ipv6-enable"

.field public static final JSON_PROXY_PAC_URL:Ljava/lang/String; = "pac-url"

.field public static final JSON_PROXY_PASSWORD:Ljava/lang/String; = "proxy-password"

.field public static final JSON_PROXY_PORT:Ljava/lang/String; = "proxy-port"

.field public static final JSON_PROXY_PROXY_AUTH:Ljava/lang/String; = "proxy-auth"

.field public static final JSON_PROXY_SERVER:Ljava/lang/String; = "proxy-server"

.field public static final JSON_PROXY_USERNAME:Ljava/lang/String; = "proxy-username"

.field public static final JSON_TAG_CHAINED_APPLICATION:Ljava/lang/String; = "chainingApplication"

.field public static final JSON_TAG_CHAINED_APPLICATION_USER_ID:Ljava/lang/String; = "chainingUserId"

.field public static final JSON_TAG_CHAIN_ENABLED:Ljava/lang/String; = "chaining_enabled"

.field public static final JSON_TAG_KNOX:Ljava/lang/String; = "knox"

.field public static final JSON_TAG_KNOX_PARENT:Ljava/lang/String; = "KNOX_VPN_PARAMETERS"

.field public static final JSON_TAG_PROFILE:Ljava/lang/String; = "profile_attribute"

.field public static final JSON_TAG_PROFILENAME:Ljava/lang/String; = "profileName"

.field public static final JSON_TAG_PROTOCOLTYPE:Ljava/lang/String; = "vpn_type"

.field public static final JSON_TAG_ROUTETYPE:Ljava/lang/String; = "vpn_route_type"

.field public static final JSON_TAG_UIDPIDSEARCH:Ljava/lang/String; = "uidpidsearch"

.field public static final JSON_TAG_UIDPIDSEARCHENABLED:Ljava/lang/String; = "uidpid_search_enabled"

.field public static final JSON_TAG_VPN_CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field public static final KEEP_ON:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_CONNECTION_TYPE:Ljava/lang/String; = "keepon"

.field public static final KEEP_ON_ENABLED:I = 0x0

.field public static final KNOX10_CONTAINER_ID:I = 0x1

.field public static final KNOX20_MIN_CONTAINER_ID:I = 0x64

.field public static final KNOX_BLOCKING_ID:Ljava/lang/String; = "500"

.field public static final KNOX_FW:Ljava/lang/String; = "Knox_Framework"

.field public static final KNOX_PROXY_CONFIG:I = 0x1

.field public static final KNOX_STRONGSWAN_NET_ID:I = 0x64

.field public static final KNOX_TUNNEL_ID:Ljava/lang/String; = "tun"

.field public static KNOX_VPN:Ljava/lang/String; = null

.field public static final KNOX_VPN_BASE_MARK:I = 0x65

.field public static final KNOX_VPN_INTERFACE_NONE:I = 0x0

.field public static final KNOX_VPN_INTERFACE_TYPE_INTERNAL:Ljava/lang/String; = "virtual_address_type"

.field public static final KNOX_VPN_INTERFACE_V4:I = 0x1

.field public static final KNOX_VPN_INTERFACE_V46:I = 0x3

.field public static final KNOX_VPN_INTERFACE_V6:I = 0x2

.field protected static final KNOX_VPN_PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.knox.vpn.proxyhandler"

.field public static final MAKE_PROXY_REQUEST:I = 0x3

.field public static final MAX_DNS_SERVERS:I = 0x4

.field public static final MAX_KNOX_NETWORK_NET_ID:I = 0x1f4

.field public static final META_MARK_ENABLED_PROPERTY:Ljava/lang/String; = "net.vpn.markbase"

.field public static final MIN_KNOX_NETWORK_NET_ID:I = 0x64

.field public static final MOCANA_VPN_SERVICE_PKG:Ljava/lang/String; = "com.mocana.vpn.android"

.field public static final NATIVE_VPN_CLIENT:I = 0x1

.field public static final NON_FIPS_MODE:I = 0x0

.field public static final NON_NATIVE_VPN_CLIENT:I = 0x0

.field public static final ON_DEMAND:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_CONNECTION_TYPE:Ljava/lang/String; = "ondemand"

.field public static final ON_DEMAND_ENABLED:I = 0x1

.field public static final PACKAGE_CID:I = -0x1

.field public static final PACKAGE_DELIMETER:Ljava/lang/String; = "_"

.field public static final PACKAGE_UID:I = -0x1

.field public static final PER_APP_VPN:I = 0x1

.field public static final PROFILENAME_MAX_LENGTH:I = 0x80

.field public static final PROFILE_ACTIVATED:I = 0x1

.field public static final PROFILE_DEACTIVATED:I = 0x0

.field public static final PROXY_AUTH_DISABLED:I = 0x0

.field public static final PROXY_AUTH_ENABLED:I = 0x1

.field public static final PROXY_CALLBACK_ERROR_STATUS_EXCEPTION:I = 0x1

.field public static final REMOVE_DROP_RULES_NO_MARK:I = 0x1

.field public static final REMOVE_INDIVIDUAL_PROXY_RULES:I = 0x2

.field public static final REMOVE_MEDIA_SOCKETS_FROM_INTERFACE:Ljava/lang/String; = "0"

.field public static final REMOVE_PROXY_RULES:I = 0x0

.field public static final REMOVE_RULES:I = 0x1

.field public static final REMOVE_UID:Ljava/lang/String; = "0"

.field public static final ROOT_ID:I = 0x0

.field public static final SEND_PROXY_BROADCAST_KNOX_VPN:Ljava/lang/String; = "com.samsung.android.knox.intent.action.VPN_PROXY_BROADCAST_INTERNAL"

.field public static final SET_PROXY_SCRIPT:I = 0x2

.field public static final START_PAC_SUPPORT:I = 0x0

.field public static final STOP_PAC_SUPPORT:I = 0x1

.field public static final STRONGSWAN_MARK:Ljava/lang/String; = "100"

.field public static final STRONSWAN_PROXY_PGK:Ljava/lang/String; = "com.samsung.sVpn"

.field public static final SYSTEM_VPN:I = 0x0

.field public static final TUN_INTERFACE_DOWN:I = 0x2

.field public static final TUN_INTERFACE_UP:I = 0x1

.field public static final UID_ADD_ALL_CONTAINER_PACKAGES:I = -0x2

.field public static final UID_PID_SEARCH_DISABLED:I = 0x0

.field public static final UID_PID_SEARCH_ENABLED:I = 0x1

.field public static final ULTRA_POWER_MODE_REASON:Ljava/lang/String; = "reason"

.field public static final ULTRA_POWER_SAVING_MODE_PERMISSION:Ljava/lang/String; = "com.sec.android.emergencymode.permission.LAUNCH_EMERGENCYMODE_SERVICE"

.field public static final USERID_RANGE:I = 0x186a0

.field public static final VENDOR_BIND_ACTION:Ljava/lang/String; = ".BIND_SERVICE"

.field public static final VPN_DIALOG_PKG:Ljava/lang/String; = "com.android.vpndialogs"

.field public static final VPN_PROP_PROXY_EMAIL:Ljava/lang/String; = "net.vpn.proxy.email."

.field public static VPN_RETURN_BOOL_ERROR:Z = false

.field public static final VPN_RETURN_INT_ERROR:I = -0x1

.field public static final VPN_RETURN_INT_SUCCESS:I

.field public static final WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->KNOX_VPN:Ljava/lang/String;

    sput-boolean v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->VPN_RETURN_BOOL_ERROR:Z

    const-string/jumbo v0, "block_traffic"

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLOCK_APP_TRAFFIC:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.providers.downloads"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_APPLICATION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->BLACK_LISTED_UID:[Ljava/lang/Integer;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.providers.downloads"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->WHITE_LISTED_APPLICATION_TO_SEND_FD:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.chrome"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->APPS_TO_RESTART_PROXY:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.android.email.provider"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.email.sync"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.email.ui"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.samsung.android.email.widget"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.email.composer"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->EMAIL_PACKAGE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
