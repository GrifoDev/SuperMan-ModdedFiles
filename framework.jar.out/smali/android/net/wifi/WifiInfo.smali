.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field private static final FILTER_TIME_CONSTANT:J = 0xbb8L

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

.field private static final OUTPUT_SCALE_FACTOR:J = 0x1388L

.field private static final RESET_TIME_STAMP:J = -0x8000000000000000L

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/efs/wifi/.mac.info"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public badRssiCount:I

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mAuthenticated:Z

.field private mBSSID:Ljava/lang/String;

.field private mCaptivePortal:Z

.field private mCheckVsieForSns:Z

.field private mChnKeepConnection:Z

.field private mEphemeral:Z

.field private mFrequency:I

.field private mGigaAp:Z

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLastPacketCountUpdateTimeStamp:J

.field private mLinkSpeed:I

.field private mLoginUrl:Ljava/lang/String;

.field private mLqcmRx:I

.field private mLqcmTx:I

.field private mMacAddress:Ljava/lang/String;

.field private mManualConnection:Z

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSkipInternetCheck:Z

.field private mSnr:I

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mVenueName:Ljava/lang/String;

.field private mWifiSsid:Landroid/net/wifi/WifiSsid;

.field public rxSuccess:J

.field public rxSuccessRate:D

.field public score:I

.field public txBad:J

.field public txBadRate:D

.field public txRetries:J

.field public txRetriesRate:D

.field public txSuccess:J

.field public txSuccessRate:D


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic -set5(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic -set6(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/16 v4, 0xff

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    iput v2, p0, Landroid/net/wifi/WifiInfo;->mSnr:I

    iput v4, p0, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    iput v4, p0, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mSnr:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSnr:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    :cond_0
    return-void
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x11

    const/16 v9, 0x20

    new-array v0, v9, [B

    const/4 v7, 0x0

    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string/jumbo v11, "/efs/wifi/.mac.info"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    const/16 v9, 0x11

    if-lt v5, v9, :cond_0

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    :cond_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v3, v4

    :cond_2
    :goto_1
    return-object v7

    :catch_0
    move-exception v1

    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_2
    :try_start_4
    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    throw v9

    :catch_3
    move-exception v1

    const-string/jumbo v10, "WifiInfo"

    const-string/jumbo v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v9

    move-object v3, v4

    goto :goto_3

    :catchall_2
    move-exception v9

    move-object v7, v8

    move-object v3, v4

    goto :goto_3

    :catch_4
    move-exception v2

    move-object v3, v4

    goto :goto_2

    :catch_5
    move-exception v2

    move-object v7, v8

    move-object v3, v4

    goto :goto_2
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2

    const-string/jumbo v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v1

    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckVsieForSns()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    return v0
.end method

.method public getChnKeepConnection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    return v0
.end method

.method public getFrequency()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getIpAddress()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLqcmRx()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    return v0
.end method

.method public getLqcmTx()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteredHint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "<unknown ssid>"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "<unknown ssid>"

    return-object v2
.end method

.method public getSkipInternetCheck()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    return v0
.end method

.method public getSnr()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSnr:I

    return v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getVenueName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public hasRealMacAddress()Z
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "02:00:00:00:00:00"

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is24GHz()Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    return v0
.end method

.method public isCaptivePortal()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public isGigaAp()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    return v0
.end method

.method public isManualConnection()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    return v0
.end method

.method public reset()V
    .locals 8

    const/4 v3, -0x1

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setChnKeepConnection(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setManualConnection(Z)V

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setLoginUrl(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setGigaAp(Z)V

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setVenueName(Ljava/lang/String;)V

    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput v2, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v2, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v2, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v2, p0, Landroid/net/wifi/WifiInfo;->score:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setSnr(I)V

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setLqcmRx(I)V

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setLqcmTx(I)V

    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    return-void
.end method

.method public setCheckVsieForSns(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    return-void
.end method

.method public setChnKeepConnection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return-void
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return-void
.end method

.method public setGigaAp(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-void
.end method

.method public setLqcmRx(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    return-void
.end method

.method public setLqcmTx(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public setManualConnection(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return-void
.end method

.method public setNetworkId(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return-void
.end method

.method public setRssi(I)V
    .locals 1

    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    const/16 p1, -0x7f

    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    const/16 p1, 0xc8

    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-void
.end method

.method public setSkipInternetCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    return-void
.end method

.method public setSnr(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSnr:I

    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-void
.end method

.method public setVenueName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "<none>"

    const-string/jumbo v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string/jumbo v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_3

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", GigaAp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", VenueName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto/16 :goto_3
.end method

.method public updatePacketRates(JJ)V
    .locals 7

    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v4

    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    return-void

    :cond_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;J)V
    .locals 24

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    move-wide/from16 v20, v0

    add-long v8, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    move-wide/from16 v20, v0

    add-long v12, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    move-wide/from16 v18, v0

    const-wide/high16 v20, -0x8000000000000000L

    cmp-long v18, v18, v20

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, p2

    if-gez v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v12

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v14

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v8

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v18, v0

    cmp-long v18, v18, v16

    if-gtz v18, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    move-wide/from16 v18, v0

    sub-long v10, p2, v18

    long-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, -0x4010000000000000L    # -1.0

    mul-double v18, v18, v20

    const-wide v20, 0x40a7700000000000L    # 3000.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v4, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    const-wide/16 v22, 0x1388

    mul-long v20, v20, v22

    div-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    const-wide/16 v22, 0x1388

    mul-long v20, v20, v22

    div-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move-wide/from16 v20, v0

    sub-long v20, v8, v20

    const-wide/16 v22, 0x1388

    mul-long v20, v20, v22

    div-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v20, v0

    sub-long v20, v16, v20

    const-wide/16 v22, 0x1388

    mul-long v20, v20, v22

    div-long v20, v20, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v4

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    :goto_0
    move-object/from16 v0, p0

    iput-wide v12, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txRetries:J

    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    :goto_1
    return-void

    :cond_0
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0

    :cond_1
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txBad:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txSuccess:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txRetries:J

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    const-wide/high16 v18, -0x8000000000000000L

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiInfo;->mLastPacketCountUpdateTimeStamp:J

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mChnKeepConnection:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mGigaAp:Z

    if-eqz v0, :cond_a

    :goto_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mVenueName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmTx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLqcmRx:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a
.end method
