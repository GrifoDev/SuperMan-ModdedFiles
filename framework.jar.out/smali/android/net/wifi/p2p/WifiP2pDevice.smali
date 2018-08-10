.class public Landroid/net/wifi/p2p/WifiP2pDevice;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pDevice$1;
    }
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x3

.field public static final CONNECTED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private static DBG:Z = false

.field private static final DEVICE_CAPAB_CLIENT_DISCOVERABILITY:I = 0x2

.field private static final DEVICE_CAPAB_CONCURRENT_OPER:I = 0x4

.field private static final DEVICE_CAPAB_DEVICE_LIMIT:I = 0x10

.field private static final DEVICE_CAPAB_INFRA_MANAGED:I = 0x8

.field private static final DEVICE_CAPAB_INVITATION_PROCEDURE:I = 0x20

.field private static final DEVICE_CAPAB_SERVICE_DISCOVERY:I = 0x1

.field public static final FAILED:I = 0x2

.field private static final GROUP_CAPAB_CROSS_CONN:I = 0x10

.field private static final GROUP_CAPAB_GROUP_FORMATION:I = 0x40

.field private static final GROUP_CAPAB_GROUP_LIMIT:I = 0x4

.field private static final GROUP_CAPAB_GROUP_OWNER:I = 0x1

.field private static final GROUP_CAPAB_INTRA_BSS_DIST:I = 0x8

.field private static final GROUP_CAPAB_PERSISTENT_GROUP:I = 0x2

.field private static final GROUP_CAPAB_PERSISTENT_RECONN:I = 0x20

.field public static final INVITED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevice"

.field public static final UNAVAILABLE:I = 0x4

.field private static final WPS_CONFIG_DISPLAY:I = 0x8

.field private static final WPS_CONFIG_KEYPAD:I = 0x100

.field private static final WPS_CONFIG_PUSHBUTTON:I = 0x80

.field private static final cccInternetPatter:Ljava/util/regex/Pattern;

.field private static final cccUpnpPattern:Ljava/util/regex/Pattern;

.field private static final contactInfoHashPattern:Ljava/util/regex/Pattern;

.field private static final detailedDevicePattern:Ljava/util/regex/Pattern;

.field private static fwInviteStr:Ljava/lang/String;

.field private static final goAddrPattern:Ljava/util/regex/Pattern;

.field private static final iconPattern:Ljava/util/regex/Pattern;

.field private static final intendedAddrPattern:Ljava/util/regex/Pattern;

.field private static final prefixPattern:Ljava/util/regex/Pattern;

.field private static final sconnectPattern:Ljava/util/regex/Pattern;

.field private static final serviceDataPattern:Ljava/util/regex/Pattern;

.field private static final ssDevInfoPattern:Ljava/util/regex/Pattern;

.field private static final threeTokenPattern:Ljava/util/regex/Pattern;

.field private static final twoTokenPattern:Ljava/util/regex/Pattern;


# instance fields
.field public GOdeviceName:Ljava/lang/String;

.field public SConnectInfo:Ljava/lang/String;

.field public candidateStaticIp:I

.field public contactImage:Landroid/graphics/Bitmap;

.field public contactInfoHash:Ljava/lang/String;

.field public deviceAddress:Ljava/lang/String;

.field public deviceCapability:I

.field public deviceName:Ljava/lang/String;

.field public groupCapability:I

.field public groupownerAddress:Ljava/lang/String;

.field public iconIdx:I

.field public interfaceAddress:Ljava/lang/String;

.field public primaryDeviceType:Ljava/lang/String;

.field public secondaryDeviceType:Ljava/lang/String;

.field public semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

.field public semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

.field public semSamsungDeviceType:I

.field public serviceData:Ljava/lang/String;

.field public ssDevInfo:I

.field public status:I

.field public supportFwInvite:I

.field public wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

.field public wpsConfigMethodsSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    :goto_0
    sput-boolean v0, Landroid/net/wifi/p2p/WifiP2pDevice;->DBG:Z

    const-string/jumbo v0, "((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) (\\d+ )?p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) pri_dev_type=(\\d+-[0-9a-fA-F]+-\\d+) name=\'(.*)\' config_methods=(0x[0-9a-fA-F]+) dev_capab=(0x[0-9a-fA-F]+) group_capab=(0x[0-9a-fA-F]+)( wfd_dev_info=0x([0-9a-fA-F]{12}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(p2p_dev_addr=)?((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "(?:[0-9a-f]{2}:){5}[0-9a-f]{2} p2p_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "p2p_go_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "p2p_intended_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " sc_info=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " ss_dev_info=0x([0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " icon=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " prefix=\'(.+)\'"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " service=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceDataPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " contact_info=0x([0-9a-fA-F]*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " fw_invite"

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->fwInviteStr:Ljava/lang/String;

    const-string/jumbo v0, " upnp_info=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->cccUpnpPattern:Ljava/util/regex/Pattern;

    const-string/jumbo v0, " internet_info=(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->cccInternetPatter:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v5, ""

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const-string/jumbo v5, ""

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    const-string/jumbo v5, "[ \n]"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ge v5, v8, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Malformed supplicant event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    array-length v5, v4

    packed-switch v5, :pswitch_data_0

    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->detailedDevicePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Malformed supplicant event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-void

    :pswitch_1
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->twoTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Malformed supplicant event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    return-void

    :pswitch_2
    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->threeTokenPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Malformed supplicant event"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    sget-object v5, Landroid/net/wifi/p2p/WifiP2pDevice;->intendedAddrPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    const/16 v5, 0x9

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v3, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;-><init>(III)V

    iput-object v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    :cond_5
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateAddtionalInfo(Ljava/lang/String;)V

    aget-object v5, v4, v9

    const-string/jumbo v6, "P2P-DEVICE-FOUND"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x3

    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    :cond_6
    return-void

    :cond_7
    const-string/jumbo v5, "<unknown ssid>"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiP2pDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseInternetInfo(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v8, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v5, v0, 0x3

    shr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x1

    if-ne v7, v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    shr-int/lit8 v6, v0, 0x3

    and-int/lit8 v6, v6, 0x1

    if-ne v7, v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v5, v2, v3, v4}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->newInstance(IZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    return-void
.end method

.method private parseUpnpInfo(J)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {v1, v9, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit8 v2, v0, 0x7

    shr-int/lit8 v7, v0, 0x3

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    shr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    shr-int/lit8 v7, v0, 0x5

    and-int/lit8 v7, v7, 0x1

    if-ne v8, v7, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->newInstance(IZZZI)Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    instance-of v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_2

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isDeviceLimit()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupClient()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public isGroupLimit()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroupOwner()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInvitationCapable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isServiceDiscoveryCapable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public semGetContactInfoHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    return-object v0
.end method

.method public semGetCustomInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    return-object v0
.end method

.method public semGetGroupOwnerAddress()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public semGetWifiDisplayInfo()Landroid/net/wifi/p2p/SemWifiDisplayInfo;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/SemWifiDisplayInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/p2p/SemWifiDisplayInfo;-><init>(Landroid/net/wifi/p2p/WifiP2pWfdInfo;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v1, Landroid/net/wifi/p2p/WifiP2pDevice;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v1, "\n deviceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n primary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n secondary type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n grpcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n devcapab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n wfdInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n groupownerAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n GOdeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n interfaceAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n SConnectInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n contactInfoHash : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n ssDevInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n iconIdx : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\n semMirrorLinkUpnpInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\n semMirrorLinkInternetInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string/jumbo v1, "\n semSamsungDeviceType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n serviceData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n fw_invite : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    return-void
.end method

.method public updateAddtionalInfo(Ljava/lang/String;)V
    .locals 17

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->sconnectPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfoPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->iconPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->prefixPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceDataPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHashPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->cccInternetPatter:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->cccUpnpPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->goAddrPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    :cond_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    :cond_1
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseHex(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    :cond_2
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    :cond_3
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    :cond_4
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    :cond_5
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_6

    const-wide/16 v6, 0x0

    const/4 v15, 0x1

    :try_start_0
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseUpnpInfo(J)V

    :cond_6
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v5, 0x0

    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v4, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pDevice;->parseInternetInfo(I)V

    :cond_7
    sget-object v15, Landroid/net/wifi/p2p/WifiP2pDevice;->fwInviteStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    :cond_8
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_9

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    :cond_9
    return-void

    :catch_0
    move-exception v3

    const-wide/16 v6, 0x0

    const-string/jumbo v15, "WifiP2pDevice"

    const-string/jumbo v16, "Number format exception in parsing UPnP info"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v5, 0x0

    const-string/jumbo v15, "WifiP2pDevice"

    const-string/jumbo v16, "Number format exception in parsing Internet info"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "device is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    return-void
.end method

.method public wpsDisplaySupported()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public wpsKeypadSupported()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public wpsPbcSupported()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->candidateStaticIp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->interfaceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->SConnectInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactInfoHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->contactImage:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->ssDevInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->iconIdx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkUpnpInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semMirrorLinkInternetInfo:Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->semSamsungDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->serviceData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->supportFwInvite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
