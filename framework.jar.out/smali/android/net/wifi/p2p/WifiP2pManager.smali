.class public Landroid/net/wifi/p2p/WifiP2pManager;
.super Ljava/lang/Object;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$Channel;,
        Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;,
        Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;
    }
.end annotation


# static fields
.field public static final ADD_LOCAL_SERVICE:I = 0x2201c

.field public static final ADD_LOCAL_SERVICE_FAILED:I = 0x2201d

.field public static final ADD_LOCAL_SERVICE_SUCCEEDED:I = 0x2201e

.field public static final ADD_SERVICE_REQUEST:I = 0x22025

.field public static final ADD_SERVICE_REQUEST_FAILED:I = 0x22026

.field public static final ADD_SERVICE_REQUEST_SUCCEEDED:I = 0x22027

.field public static final APP_PKG_BUNDLE_KEY:Ljava/lang/String; = "appPkgName"

.field private static final BASE:I = 0x22000

.field public static final BUSY:I = 0x2

.field public static final CALLING_PACKAGE:Ljava/lang/String; = "android.net.wifi.p2p.CALLING_PACKAGE"

.field public static final CANCEL_CONNECT:I = 0x2200a

.field public static final CANCEL_CONNECT_FAILED:I = 0x2200b

.field public static final CANCEL_CONNECT_SUCCEEDED:I = 0x2200c

.field public static final CCC_SET_IE:I = 0x220a3

.field public static final CCC_SET_IE_FAILED:I = 0x220a5

.field public static final CCC_SET_IE_SUCCEEDED:I = 0x220a4

.field public static final CLEAR_LOCAL_SERVICES:I = 0x22022

.field public static final CLEAR_LOCAL_SERVICES_FAILED:I = 0x22023

.field public static final CLEAR_LOCAL_SERVICES_SUCCEEDED:I = 0x22024

.field public static final CLEAR_SERVICE_REQUESTS:I = 0x2202b

.field public static final CLEAR_SERVICE_REQUESTS_FAILED:I = 0x2202c

.field public static final CLEAR_SERVICE_REQUESTS_SUCCEEDED:I = 0x2202d

.field public static final CONNECT:I = 0x22007

.field public static final CONNECTION_REQUESTED:I = 0x22077

.field public static final CONNECT_FAILED:I = 0x22008

.field public static final CONNECT_INVITE_LIST:I = 0x2206e

.field public static final CONNECT_PERSISTENT:I = 0x22071

.field public static final CONNECT_SUCCEEDED:I = 0x22009

.field public static final CREATE_GROUP:I = 0x2200d

.field public static final CREATE_GROUP_FAILED:I = 0x2200e

.field public static final CREATE_GROUP_SUCCEEDED:I = 0x2200f

.field private static final DBG:Z

.field public static final DELETE_PERSISTENT_GROUP:I = 0x22036

.field public static final DELETE_PERSISTENT_GROUP_FAILED:I = 0x22037

.field public static final DELETE_PERSISTENT_GROUP_SUCCEEDED:I = 0x22038

.field public static final DIALOG_LISTENER_ATTACHED:I = 0x22076

.field public static final DIALOG_LISTENER_DETACHED:I = 0x22075

.field public static final DISABLE_P2P:I = 0x22068

.field public static final DISABLE_P2P_SUCCEEDED:I = 0x22069

.field public static final DISCOVER_PEERS:I = 0x22001

.field public static final DISCOVER_PEERS_FAILED:I = 0x22002

.field public static final DISCOVER_PEERS_SUCCEEDED:I = 0x22003

.field public static final DISCOVER_PEERS_WITH_FLUSH:I = 0x2206b

.field public static final DISCOVER_SERVICES:I = 0x2202e

.field public static final DISCOVER_SERVICES_FAILED:I = 0x2202f

.field public static final DISCOVER_SERVICES_SUCCEEDED:I = 0x22030

.field public static final ENABLE_CCC_IE:I = 0x220a0

.field public static final ENABLE_CCC_IE_FAILED:I = 0x220a2

.field public static final ENABLE_CCC_IE_SUCCEEDED:I = 0x220a1

.field public static final ENABLE_P2P:I = 0x22065

.field public static final ENABLE_P2P_SUCCEEDED:I = 0x22067

.field public static final ERROR:I = 0x0

.field public static final EXTRA_CONNECTED_DEV_ADDR:Ljava/lang/String; = "connectedDevAddress"

.field public static final EXTRA_CONNECTED_DEV_INTF_ADDR:Ljava/lang/String; = "connectedDevIntfAddress"

.field public static final EXTRA_DISCOVERY_STATE:Ljava/lang/String; = "discoveryState"

.field public static final EXTRA_HANDOVER_MESSAGE:Ljava/lang/String; = "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_P2P_DEVICE_LIST:Ljava/lang/String; = "wifiP2pDeviceList"

.field public static final EXTRA_REQUEST_STATE:Ljava/lang/String; = "requestState"

.field public static final EXTRA_WIFI_P2P_DEVICE:Ljava/lang/String; = "wifiP2pDevice"

.field public static final EXTRA_WIFI_P2P_GROUP:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_GROUP_INFO:Ljava/lang/String; = "p2pGroupInfo"

.field public static final EXTRA_WIFI_P2P_INFO:Ljava/lang/String; = "wifiP2pInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_p2p_state"

.field public static final GET_HANDOVER_REQUEST:I = 0x2204b

.field public static final GET_HANDOVER_SELECT:I = 0x2204c

.field public static final INITIATOR_REPORT_NFC_HANDOVER:I = 0x2204e

.field public static final MAX_CLIENT_SUPPORT:I

.field public static final MIRACAST_DISABLED:I = 0x0

.field public static final MIRACAST_SINK:I = 0x2

.field public static final MIRACAST_SOURCE:I = 0x1

.field public static final NOT_IN_FOREGROUND:I = 0x4

.field public static final NO_SERVICE_REQUESTS:I = 0x3

.field public static final P2P_CONFIG_BUNDLE_KEY:Ljava/lang/String; = "wifiP2pConfig"

.field public static final P2P_DEV_BUNDLE_KEY:Ljava/lang/String; = "wifiP2pDevice"

.field public static final P2P_LISTEN:I = 0x2206c

.field public static final P2P_UNSUPPORTED:I = 0x1

.field public static final PING:I = 0x22031

.field public static final REMOVE_GROUP:I = 0x22010

.field public static final REMOVE_GROUP_FAILED:I = 0x22011

.field public static final REMOVE_GROUP_SUCCEEDED:I = 0x22012

.field public static final REMOVE_LOCAL_SERVICE:I = 0x2201f

.field public static final REMOVE_LOCAL_SERVICE_FAILED:I = 0x22020

.field public static final REMOVE_LOCAL_SERVICE_SUCCEEDED:I = 0x22021

.field public static final REMOVE_P2P_CLIENT:I = 0x22090

.field public static final REMOVE_P2P_CLIENT_FAILED:I = 0x22091

.field public static final REMOVE_P2P_CLIENT_SUCCEEDED:I = 0x22092

.field public static final REMOVE_SERVICE_REQUEST:I = 0x22028

.field public static final REMOVE_SERVICE_REQUEST_FAILED:I = 0x22029

.field public static final REMOVE_SERVICE_REQUEST_SUCCEEDED:I = 0x2202a

.field public static final REPORT_NFC_HANDOVER_FAILED:I = 0x22051

.field public static final REPORT_NFC_HANDOVER_SUCCEEDED:I = 0x22050

.field public static final REQUEST_CONFIG_LIST:I = 0x22072

.field public static final REQUEST_CONNECTION_INFO:I = 0x22015

.field public static final REQUEST_GROUP_INFO:I = 0x22017

.field public static final REQUEST_NFC_CONNECT:I = 0x22070

.field public static final REQUEST_PEERS:I = 0x22013

.field public static final REQUEST_PERSISTENT_GROUP_INFO:I = 0x22039

.field public static final RESET_DIALOG_LISTENER_BUNDLE_KEY:Ljava/lang/String; = "dialogResetFlag"

.field public static final RESPONDER_REPORT_NFC_HANDOVER:I = 0x2204f

.field public static final RESPONSE_CONFIG_LIST:I = 0x22073

.field public static final RESPONSE_CONNECTION_INFO:I = 0x22016

.field public static final RESPONSE_GET_HANDOVER_MESSAGE:I = 0x2204d

.field public static final RESPONSE_GROUP_INFO:I = 0x22018

.field public static final RESPONSE_PEERS:I = 0x22014

.field public static final RESPONSE_PERSISTENT_GROUP_INFO:I = 0x2203a

.field public static final RESPONSE_SERVICE:I = 0x22032

.field public static final SEC_COMMAND_ID_ADD_HISTORICAL_DUMPLOG:I = 0x22094

.field public static final SEC_COMMAND_ID_P2P_STOP_DISCOVERY_NO_FLUSH:I = 0x2208f

.field public static final SEC_COMMAND_ID_REJECT_CONNECT:I = 0x22082

.field public static final SEC_COMMAND_ID_SECONNECT_PREQ:I = 0x2208d

.field public static final SEC_COMMAND_ID_SECONNECT_PRESP:I = 0x2208e

.field public static final SEC_COMMAND_ID_SET_MIRACAST:I = 0x22093

.field public static final SET_CHANNEL:I = 0x22047

.field public static final SET_CHANNEL_FAILED:I = 0x22048

.field public static final SET_CHANNEL_SUCCEEDED:I = 0x22049

.field public static final SET_DEVICE_NAME:I = 0x22033

.field public static final SET_DEVICE_NAME_FAILED:I = 0x22034

.field public static final SET_DEVICE_NAME_SUCCEEDED:I = 0x22035

.field public static final SET_DIALOG_LISTENER:I = 0x22074

.field public static final SET_LISTEN_OFFLOADING:I = 0x22097

.field public static final SET_LISTEN_OFFLOADING_TIMER:I = 0x22096

.field public static final SET_P2P_TIMER:I = 0x2206d

.field public static final SET_SAMSUNG_SERVICE_DATA:I = 0x2209c

.field public static final SET_SCREEN_SHARING:I = 0x2209b

.field public static final SET_STOPFIND_TIMER:I = 0x2206f

.field public static final SET_WFD_INFO:I = 0x2203b

.field public static final SET_WFD_INFO_FAILED:I = 0x2203c

.field public static final SET_WFD_INFO_SUCCEEDED:I = 0x2203d

.field public static final SHOW_PIN_REQUESTED:I = 0x22078

.field public static final START_LISTEN:I = 0x22041

.field public static final START_LISTEN_FAILED:I = 0x22042

.field public static final START_LISTEN_SUCCEEDED:I = 0x22043

.field public static final START_WPS:I = 0x2203e

.field public static final START_WPS_FAILED:I = 0x2203f

.field public static final START_WPS_SUCCEEDED:I = 0x22040

.field public static final STOP_DISCOVERY:I = 0x22004

.field public static final STOP_DISCOVERY_FAILED:I = 0x22005

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x22006

.field public static final STOP_LISTEN:I = 0x22044

.field public static final STOP_LISTEN_FAILED:I = 0x22045

.field public static final STOP_LISTEN_SUCCEEDED:I = 0x22046

.field private static final TAG:Ljava/lang/String; = "WifiP2pManager"

.field public static final WIFI_P2P_CONNECTION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

.field public static final WIFI_P2P_DISCOVERY_STARTED:I = 0x2

.field public static final WIFI_P2P_DISCOVERY_STOPPED:I = 0x1

.field public static final WIFI_P2P_PEERS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PEERS_CHANGED"

.field public static final WIFI_P2P_PERSISTENT_GROUPS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

.field public static final WIFI_P2P_REQUEST_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

.field public static final WIFI_P2P_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.STATE_CHANGED"

.field public static final WIFI_P2P_STATE_CONNECTED:I = 0x3

.field public static final WIFI_P2P_STATE_DISABLED:I = 0x1

.field public static final WIFI_P2P_STATE_ENABLED:I = 0x2

.field public static final WIFI_P2P_THIS_DEVICE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

.field public static final WPS_PIN_BUNDLE_KEY:Ljava/lang/String; = "wpsPin"


# instance fields
.field mService:Landroid/net/wifi/p2p/IWifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    const-string/jumbo v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/IWifiP2pManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    return-void
.end method

.method private static checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Channel needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "deviceAddress cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service info is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service request is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 4

    const/4 v3, 0x0

    if-nez p4, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)V

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method private static sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V
    .locals 8

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Channel needs to be initialized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const v4, 0x22094

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "extra_log"

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "WifiP2pManager."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " called by ---> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22025

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public callSECApi(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Message;)I
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-nez p2, :cond_0

    return v9

    :cond_0
    iget v6, p2, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    const-string/jumbo v6, "WifiP2pManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unhandled message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p2, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v9

    :sswitch_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x22082

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    return v8

    :sswitch_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "REQ_DATA"

    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x2208d

    iput v6, v3, Landroid/os/Message;->what:I

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return v8

    :sswitch_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "RESP_DATA"

    iget-object v6, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v6, 0x2208e

    iput v6, v5, Landroid/os/Message;->what:I

    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return v8

    :sswitch_3
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v6

    const v7, 0x2208f

    invoke-virtual {v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    :sswitch_4
    const/4 v1, -0x1

    iget v6, p2, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_3

    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-eq v1, v9, :cond_1

    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v6, v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :cond_3
    iget v6, p2, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    iget v6, p2, Landroid/os/Message;->arg1:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22082 -> :sswitch_0
        0x2208d -> :sswitch_1
        0x2208e -> :sswitch_2
        0x2208f -> :sswitch_3
        0x22093 -> :sswitch_4
    .end sparse-switch
.end method

.method public cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2200a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "cancelConnect()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22022

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2202b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public closeChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    :cond_0
    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22071

    invoke-virtual {v0, v2, p2, v1, p3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "connect_persistent()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x22007

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "wifiP2pConfig"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    sget-boolean v2, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiP2pManager"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "connect()"

    invoke-static {p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfigList;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2206e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "connect_list()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2200d

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public deletePersistentGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22036

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22068

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "disableP2p()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "discoverPeers("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x22001

    iput v2, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    const-string/jumbo v2, "discoverPeers()"

    invoke-static {p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x22001

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2206b

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    const-string/jumbo v0, "discoverPeersWithFlush()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2202e

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "discoverServices("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2202e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    const-string/jumbo v0, "discoverServices()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 2

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x22065

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "enableP2p()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNfcHandoverRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public getNfcHandoverSelect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$HandoverMessageListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2204c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public getP2pStateMachineMessenger()Landroid/os/Messenger;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initializeInternal(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->initalizeChannel(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;Landroid/os/Messenger;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    return-object v0
.end method

.method public initiatorReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2204e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public isInactiveState()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->isInactiveState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isWifiP2pConnected()Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public isWifiP2pEnabled()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->getWifiP2pState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v3, :cond_0

    return v2

    :cond_0
    return v3

    :catch_0
    move-exception v0

    return v2
.end method

.method public listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const v0, 0x22041

    :goto_0
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void

    :cond_0
    const v0, 0x22044

    goto :goto_0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkP2pConfig(Landroid/net/wifi/p2p/WifiP2pConfig;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "removeClient()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiP2pManager"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "removeGroup()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public removeLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceInfo(Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2201f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public removeServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p2}, Landroid/net/wifi/p2p/WifiP2pManager;->checkServiceRequest(Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public requestConfigList(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConfigListListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22015

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22017

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x22070

    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x22070

    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    const-string/jumbo v2, "requestP2pListen()"

    invoke-static {p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const v2, 0x2206c

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg2:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.net.wifi.p2p.CALLING_PACKAGE"

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22013

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22039

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public responderReportNfcHandover(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.net.wifi.p2p.EXTRA_HANDOVER_MESSAGE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2204f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public semDisableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    return-void
.end method

.method public semDiscoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p5}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p1, p5}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p3, p5}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method public semEnableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    return-void
.end method

.method public semIsWifiP2pConnected()Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method public semIsWifiP2pEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method public semListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2206c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    const-string/jumbo v0, "semListen()"

    invoke-static {p1, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->sendHistoricalDumplog(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)V

    return-void
.end method

.method public semRemoveClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->removeClient(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public semRequestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNfcConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public semSetDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    return-void
.end method

.method public semSetDiscoveryRequestInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-nez p2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "REQ_DATA"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2208d

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    const/4 v2, 0x0

    return v2
.end method

.method public semSetDiscoveryResponseInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-nez p2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "RESP_DATA"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2208e

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    const/4 v2, 0x0

    return v2
.end method

.method public semSetMirrorLinkEnabled(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x220a0

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public semSetMirrorLinkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;

    invoke-direct {v0, p2, p3}, Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInfo;-><init>(Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkUpnpDeviceInfo;Landroid/net/wifi/p2p/SemWifiP2pMirrorLinkInternetInfo;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x220a3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public semSetWifiDisplayInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/SemWifiDisplayInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 1

    invoke-virtual {p2}, Landroid/net/wifi/p2p/SemWifiDisplayInfo;->getWifiDisplayInfo()Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Landroid/net/wifi/p2p/WifiP2pManager;->setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public semSetWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public semStopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22004

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2208f

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_0
.end method

.method public setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object p2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22033

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "appPkgName"

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "dialogResetFlag"

    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v2, 0x22074

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V
    .locals 0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set2(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set3(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;

    return-void
.end method

.method public setListenOffloading(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IIIILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "channel"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "period"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "interval"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "count"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22097

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setListenOffloadingTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x22096

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMiracastMode(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/p2p/IWifiP2pManager;->setMiracastMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setScreenSharing(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x2209b

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setServiceData(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "SDATA"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x2209c

    iput v2, v1, Landroid/os/Message;->what:I

    iput p2, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)V
    .locals 0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set4(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$ServiceResponseListener;

    return-void
.end method

.method public setStopfindTimer(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Z)V
    .locals 3

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const v2, 0x2206f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V
    .locals 0

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-set5(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;

    return-void
.end method

.method public setWFDInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pWfdInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pManager;->mService:Landroid/net/wifi/p2p/IWifiP2pManager;

    invoke-interface {v1}, Landroid/net/wifi/p2p/IWifiP2pManager;->checkConfigureWifiDisplayPermission()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x2203b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 5

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "lc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "oc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v1

    invoke-static {p1, p4}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v2

    const v3, 0x22047

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public startWps(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/WpsInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p3}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2203e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .locals 4

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager;->checkChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    invoke-static {p1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-get0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->-wrap0(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Object;)I

    move-result v1

    const v2, 0x22004

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method
