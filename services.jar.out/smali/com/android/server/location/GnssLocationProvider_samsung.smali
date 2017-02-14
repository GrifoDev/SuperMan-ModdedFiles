.class public Lcom/android/server/location/GnssLocationProvider_samsung;
.super Ljava/lang/Object;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I = null

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final AGPS_TYPE_SUPL_2:I = 0x3

.field private static final AGPS_TYPE_SUPL_2_0_1_AGNSS:I = 0x5

.field private static final AGPS_TYPE_SUPL_2_AGNSS:I = 0x4

.field private static final CSC_PROPERTIES_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final CSC_PROPERTIES_FILE:Ljava/lang/String; = "/data/system/gps/cscgps.conf"

.field private static final DEBUG:Z = true

.field static final FLAG_AGPS_UDP_RECEIVED:I = 0x1

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final INTENT_AGPS_GET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_GET_PROFILE"

.field private static final INTENT_AGPS_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_PROFILE"

.field private static final INTENT_AGPS_SET_PROFILE:Ljava/lang/String; = "android.intent.action.AGPS_SET_PROFILE"

.field private static final INTENT_AGPS_UDP_RECEIVED:Ljava/lang/String; = "android.intent.action.AGPS_UDP_RECEIVED"

.field private static final Num_Top_SV:I = 0x5

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final SEC_GPS_CONF_DIR:Ljava/lang/String; = "/data/system/gps"

.field private static final SEC_GPS_CONF_FILE:Ljava/lang/String; = "/data/system/gps/secgps.conf"

.field static final SUPL_INIT_EMERGENCY_SUPL_NI:I = 0x2

.field static final SUPL_INIT_NATIVE_INIT_SUPL_NI:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider_ex"

.field private static final VERBOSE:Z


# instance fields
.field private final RJILALPHA:Ljava/lang/String;

.field private final SERVER_PORT:I

.field private final TurkeyVodafoneOperator:Ljava/lang/String;

.field private googleSuplAddr:Ljava/lang/String;

.field private googleSuplPort:I

.field private isNativeInitCalled:Z

.field private isUDPListen:Z

.field private ktPositionMode:I

.field mConnMgr:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field private mCurrentMobileType:I

.field private mIsKtGps:Z

.field private mIsSKAF:Z

.field private mIsSetAutoSuplServer:Z

.field private mKTSuplServerHost:Ljava/lang/String;

.field private mKTSuplServerPort:I

.field private mPositionModeFromCSC:Ljava/lang/String;

.field mProperties:Ljava/util/Properties;

.field mProperties_secgps:Ljava/util/Properties;

.field private mResolveAddrs:Ljava/net/InetAddress;

.field public mStarted:Z

.field private mSuplAddress:Ljava/lang/String;

.field private mSuplPort:I

.field private mSuplServerFromCSC:I

.field private mSuplSslMode:I

.field private mSuplSslType:I

.field private mSuplType:I

.field private mccTLS:I

.field private mncTLS1:I

.field private mncTLS2:I

.field private prevLppMask:I

.field private retAddr:Ljava/net/InetAddress;

.field private sktSuplAddr:Ljava/lang/String;

.field private sktSuplPort:I

.field private socket:Ljava/net/DatagramSocket;

.field private suplFqdn:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/GnssLocationProvider_samsung;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    return v0
.end method

.method private static synthetic -getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->values()[Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_14

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_13

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_12

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_11

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_10

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_f

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_e

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_d

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_c

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_b

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_9

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_8

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_7

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_6

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_5

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_4

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_3

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_2

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_1

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_0

    :goto_14
    sput-object v0, Lcom/android/server/location/GnssLocationProvider_samsung;->-com-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_14

    :catch_1
    move-exception v1

    goto :goto_13

    :catch_2
    move-exception v1

    goto :goto_12

    :catch_3
    move-exception v1

    goto :goto_11

    :catch_4
    move-exception v1

    goto :goto_10

    :catch_5
    move-exception v1

    goto :goto_f

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v1

    goto :goto_d

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v1

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_a

    :catch_b
    move-exception v1

    goto/16 :goto_9

    :catch_c
    move-exception v1

    goto/16 :goto_8

    :catch_d
    move-exception v1

    goto/16 :goto_7

    :catch_e
    move-exception v1

    goto/16 :goto_6

    :catch_f
    move-exception v1

    goto/16 :goto_5

    :catch_10
    move-exception v1

    goto/16 :goto_4

    :catch_11
    move-exception v1

    goto/16 :goto_3

    :catch_12
    move-exception v1

    goto/16 :goto_2

    :catch_13
    move-exception v1

    goto/16 :goto_1

    :catch_14
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider_samsung;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x1c6b

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->SERVER_PORT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->socket:Ljava/net/DatagramSocket;

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    const-string/jumbo v0, "wpde.nate.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/16 v0, 0x1c6c

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplPort:I

    const/16 v0, 0x12e

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    const/16 v0, 0xdc

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    const/16 v0, 0xdd

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    const-string/jumbo v0, "MSBASED"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v0, "supl.google.com"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mCurrentMobileType:I

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    const-string/jumbo v0, "Jio 4G"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->RJILALPHA:Ljava/lang/String;

    const-string/jumbo v0, "28602"

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->TurkeyVodafoneOperator:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    return-void
.end method

.method private checkUDPSuplInit()V
    .locals 3

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "start UDP socket"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider_samsung$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider_samsung$1;-><init>(Lcom/android/server/location/GnssLocationProvider_samsung;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private deleteSecGpsConf()V
    .locals 4

    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "deleteSecGpsConf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/gps/secgps.conf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, "secgps.conf deleted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not delete secgps.conf file : /data/system/gps/secgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private extChnSelectPositionMode()I
    .locals 5

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extension_CMCCxtraDownloadRequest()Z

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == STANDALONE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_5

    :cond_2
    :goto_1
    const/4 v1, 0x0

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode, set with STANDALONE for CU and OPEN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extChnSelectPositionMode() postionMode == MS_BASED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v3, v4, :cond_3

    goto :goto_1
.end method

.method private extSelectUseGooglePositionMode(I)I
    .locals 13

    const/4 v9, 0x1

    const/4 v4, 0x0

    move v12, p1

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " SKT GPS mode : SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    :goto_0
    return v12

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, " KT GPS mode : SUPL2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const/4 v1, 0x3

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "extSelectUseGooglePositionMode() : Google SUPL 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/4 v6, 0x4

    const/16 v8, 0x1c6b

    move-object v5, p0

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method private getCpAgpsProfile()I
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "ril.product_code"

    const-string/jumbo v2, "none"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "ECO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ALE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "EON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v1, "COB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "COM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v3

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getLppBitmask()I
    .locals 11

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SubscriptionId is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", SimOperatorName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", SimOperator = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "Jio 4G"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v8, "28602"

    invoke-virtual {v7, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "JIO 4G operator"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    :cond_3
    :goto_1
    return v3

    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_5

    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "getVendor: TUR"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "VODAFONE operator: LPP enable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_3

    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, "No Operator LPP Disable"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getSKAFEnable()Z
    .locals 3

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    return v0
.end method

.method private getSuplServerFromCSC()V
    .locals 14

    const/4 v13, 0x0

    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "getSuplServerFromCSC"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    :try_start_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/data/system/gps/cscgps.conf"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    :goto_0
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    :try_start_1
    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/data/system/gps/cscgps.conf"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_1

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_1
    const-string/jumbo v10, "CSC_SUPL_SUPLSERVERFROMCSC"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_2
    :goto_2
    iget v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    const-string/jumbo v10, "CSC_SUPL_OPMODE"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v10, "CSC_SUPL_HOST"

    invoke-virtual {v8, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string/jumbo v10, "CSC_SUPL_VER"

    const-string/jumbo v11, "1"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v10, "CSC_SUPL_PORT"

    const-string/jumbo v11, "7276"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "CSC_SUPL_SSL"

    const-string/jumbo v11, "0"

    invoke-virtual {v8, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_5
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_3
    :goto_3
    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[getProperty] mSuplServerFromCSC : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_6
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " file doesn\'t exist : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not access file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v5

    :try_start_7
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "could not open file /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_3
    move-exception v5

    :try_start_8
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not load file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_5
    :goto_4
    return-void

    :catch_4
    move-exception v5

    :try_start_a
    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v10

    if-eqz v9, :cond_6

    :try_start_b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :cond_6
    :goto_5
    :try_start_c
    throw v10

    :catch_5
    move-exception v5

    const-string/jumbo v11, "GnssLocationProvider_ex"

    const-string/jumbo v12, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_5

    :catch_6
    move-exception v6

    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string/jumbo v10, "GnssLocationProvider_ex"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " [NumberFormatException] mSuplServerFromCSC :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_7
    move-exception v6

    iput v13, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string/jumbo v10, "GnssLocationProvider_ex"

    const-string/jumbo v11, "[NumberFormatException] failed to convert supl information"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public static getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;
    .locals 3

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->NO_OPERATOR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "DCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "KDI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "KDO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "PMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "SPC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_TLS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "VMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "PCM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "SOL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "BWA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_BMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto :goto_0

    :cond_a
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "FMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "MTA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "VTR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "ESK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "GLW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_RWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v2, "SKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "SKC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string/jumbo v2, "SKO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v2, "LGT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "LUC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "LUO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "KTT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "KTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "KTO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v2, "CHM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "CTC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CTC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v2, "CHU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v2, "CHC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v2, "MNX"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v2, "IUS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v2, "SWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->SUI_SWC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v2, "TUR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->TUR_TUR:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    goto/16 :goto_0
.end method

.method public static isUSAMarket()Z
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket : code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "TMB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string/jumbo v2, "ATT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "TLS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "BMC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "RWC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "XAR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "XAC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUSCDMAMarket()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_GPS_ConfigAgpsSetting"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "GnssLocationProvider_ex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUSCDMAMarket rc : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string/jumbo v2, "SPR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "USC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "BST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "VMU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "XAS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "LRA"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "TFNVZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const-string/jumbo v2, "ACG"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeAutoSuplUrl()Ljava/lang/String;
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v5, "h-slp.mnc"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".mcc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "%03d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ".pub.3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "makeAutoSuplUrl :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_0
    return-object v8
.end method

.method private native native_agps_ni_message_for_emergency_supl([BI)V
.end method

.method private native native_agps_set_supl_host_ip(Ljava/lang/String;)V
.end method

.method private native native_agps_xtra_set(I)V
.end method

.method private native native_cleanup_extention()V
.end method

.method private native native_gnss_control(I)V
.end method

.method private native native_init_extention()Z
.end method

.method private native native_inject_sensor_data(DD)V
.end method

.method private native native_set_agps_server_extension(ILjava/lang/String;IIII)V
.end method

.method private native native_set_lpp_support(I)V
.end method

.method private setCscParameters(Landroid/os/Bundle;Z)V
    .locals 16

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "setCscParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    new-instance v12, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v13, 0x1

    :cond_1
    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isDeleted :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "MSBASED"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    const-string/jumbo v1, "supl.google.com"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const/16 v1, 0x1c6b

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[Default SUPL CSC] mEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplPort : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mSuplSslMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string/jumbo v8, "TRUE"

    const-string/jumbo v1, "is_empty"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " CscParamIsEmpty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "TRUE"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :catch_0
    move-exception v11

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not delete cscgps.conf file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "operation_mode"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    const-string/jumbo v1, "hslp_addr"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    const-string/jumbo v1, "hslp_port"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const-string/jumbo v1, "ssl"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    const-string/jumbo v1, "ssl_cert"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const-string/jumbo v1, "supl_ver"

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    :goto_1
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    const-string/jumbo v1, "MSBASED"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[SUPL CSC] mSuplAddress "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplPort "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSuplSslMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    :cond_5
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const-string/jumbo v1, "CSC_SUPL_OPMODE"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mPositionModeFromCSC:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "CSC_SUPL_HOST"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "CSC_SUPL_VER"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "CSC_SUPL_PORT"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "CSC_SUPL_SSL"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_6
    const-string/jumbo v1, "CSC_SUPL_SUPLSERVERFROMCSC"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_1
    new-instance v10, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps"

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v12, Ljava/io/File;

    const-string/jumbo v1, "/data/system/gps/cscgps.conf"

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    :goto_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string/jumbo v1, "Saved CSC GPS Information"

    invoke-virtual {v14, v15, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Saved: /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v15, :cond_9

    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    :goto_3
    return-void

    :pswitch_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    :pswitch_1
    const/4 v1, 0x3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    goto/16 :goto_1

    :cond_a
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not create file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v11

    :try_start_5
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_3
    move-exception v11

    :try_start_6
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not store file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v15, :cond_9

    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception v11

    :try_start_8
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v1

    if-eqz v15, :cond_b

    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_b
    :goto_4
    :try_start_a
    throw v1

    :catch_5
    move-exception v11

    const-string/jumbo v2, "GnssLocationProvider_ex"

    const-string/jumbo v3, " could not close file : /data/system/gps/cscgps.conf"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDcmSuplIot(Z)V
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " server = dcm-supl.com"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "dcm-supl.com"

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Docomo SUPL IOT test = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLppSupport(ZI)V
    .locals 4

    const-string/jumbo v1, "GnssLocationProvider_ex"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLppSupport("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_init_extention()Z

    move-result v0

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_init_extention "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_lpp_support(I)V

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_cleanup_extention()V

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "native_cleanup "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setSKAFEnable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSKAFEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSKAF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSecGpsConf(Landroid/os/Bundle;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    invoke-interface {v5, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_2

    aget-object v7, v4, v3

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    aget-object v8, v4, v3

    aget-object v9, v4, v3

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "/data/system/gps"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/data/system/gps/secgps.conf"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z

    :cond_5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    const-string/jumbo v8, "SECGPS Configuration"

    invoke-virtual {v7, v6, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, "Saved: /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_6

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not create file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_4
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not store file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    :try_start_6
    const-string/jumbo v7, "GnssLocationProvider_ex"

    const-string/jumbo v8, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v7

    if-eqz v6, :cond_7

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_7
    :goto_2
    :try_start_8
    throw v7

    :catch_4
    move-exception v1

    const-string/jumbo v8, "GnssLocationProvider_ex"

    const-string/jumbo v9, " could not close file : /data/system/gps/secgps.conf"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2
.end method

.method private setServer(Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v5, "ServerAddr"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ServerPort"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setServer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "SUPL_HOST"

    invoke-virtual {v5, v6, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "SUPL_PORT"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v5, "/etc/gps.conf"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v6, "Generated by GnssLocationProvider."

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :goto_0
    return-void

    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "Could not open GPS configuration file in save : /etc/gps.conf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSktSuplVer()V
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSktSuplVer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "AGPS_TYPE_SUPL_2_0_1_AGNSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplAddr:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->sktSuplPort:I

    const/4 v1, 0x5

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    return-void
.end method

.method private setSuplByNw()Ljava/lang/String;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    sget-object v6, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v5, v6, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mccTLS:I

    if-ne v0, v5, :cond_1

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS1:I

    if-eq v1, v5, :cond_0

    iget v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mncTLS2:I

    if-ne v1, v5, :cond_1

    :cond_0
    const-string/jumbo v3, "supl.telusmobility.com"

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string/jumbo v3, "supl.google.com"

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSuplByNw :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public extension_CMCCxtraDownloadRequest()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v3

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v3, v4, :cond_0

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "agps_function_switch"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "GnssLocationProvider_ex"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extension_CMCCxtraDownloadRequest, isAgpsSwitchMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x1

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : AGPS OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    :goto_1
    return v2

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, info.isRoaming() == false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest : AGPS setting : Home network, PS error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    const-string/jumbo v3, "GnssLocationProvider_ex"

    const-string/jumbo v4, "extension_CMCCxtraDownloadRequest, AGPS setting : All Network"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_xtra_set(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extension_agps_ni_message([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_ni_message_for_emergency_supl([BI)V

    return-void
.end method

.method public extension_checkSmsSuplInit(Z)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    :cond_0
    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "checkSmsSuplInit : Sms Message for SUPL Init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    const-string/jumbo v1, "GnssLocationProvider_ex"

    const-string/jumbo v2, "Change SLP address for SUPL_INIT in SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_6

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v1, :cond_4

    const/4 v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    :cond_4
    if-nez p1, :cond_5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_5

    or-int/lit8 v0, v0, 0x2

    :cond_5
    return v0

    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method public extension_checkWapPushMsg(Z)Z
    .locals 3

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extension_checkWapPushMsg(), mEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method public extension_checkWapSuplInit(ZLandroid/net/ConnectivityManager;)I
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    :cond_0
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit : WapPush Message for SUPL Init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "agps_function_switch"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI: isAgpsSwitchMode=AGPS_FUNCTION_SWITCH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "++checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    const-string/jumbo v0, "New message notification LCD on"

    const v1, 0x1000001a

    invoke-virtual {v9, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {v9, v0, v1, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "--checkWapSuplInit : New NI notification LCD on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v8, v12, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI : agps on only for hom network info.isRoaming() == true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_1
    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on only for hom network. PS error."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_2
    const/4 v0, 0x2

    if-ne v8, v0, :cond_9

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "checkWapSuplInit NI :: agps on for all network. launch NI session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_5

    const-string/jumbo v2, "221.148.242.107"

    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    move-object v0, p0

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "Change SLP address for SUPL_INIT in WAP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    if-nez v0, :cond_7

    const/4 v10, 0x1

    iput-boolean v12, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    :cond_7
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    or-int/lit8 v10, v10, 0x2

    :cond_8
    return v10

    :cond_9
    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkWapSuplInit NI : //agps off isAgpsSwitchMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_TMO:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_IUS:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->MEX_MNX:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_7

    goto :goto_0
.end method

.method public extension_getExtraConfigurationString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v4

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getCpAgpsProfile()I

    move-result v4

    if-lez v4, :cond_0

    const-string/jumbo v4, "CP_AGPS_ENABLE_PROFILE"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v3, ""

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x1000

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const-string/jumbo v4, "Extra Configuration"

    invoke-virtual {v2, v0, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_1
    return-object v3

    :pswitch_1
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v4, "CP_LPP_GUARD_TIME_SEC"

    const-string/jumbo v5, "1"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "7200"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "AUTO_SUPL_VERSION_FOR_NI"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_HMAC_HASH"

    const-string/jumbo v5, "SHA256"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "LPP_UP_ECID_CAPABLE"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "VENDOR_LBS_SERVER_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "RTI_ENABLE"

    const-string/jumbo v5, "FLASE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "EE_SYNC_THRESHOLD_DAYS"

    const-string/jumbo v5, "3"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "WARM_STANDBY2"

    const-string/jumbo v5, "23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_BEIDOU"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "ENABLE_GALILEO"

    const-string/jumbo v5, "FALSE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_4
    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_6
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v4, "SUPL_ECID_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v4, "REAIDING_INTERVAL_SEC"

    const-string/jumbo v5, "600"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_LOG_ENABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_LOG_PATH"

    const-string/jumbo v5, "/data/AGPSLog.txt"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_NI_GPS_ICON"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "NO_DATA_STANDALONE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "VENDOR_LBS_XTRA_SET_WITH_EE_IGNORE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v4, "SUPL_UT1_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_UT2_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_UT3_SEC"

    const-string/jumbo v5, "10"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "TCP_CONNETION_TIMEOUT"

    const-string/jumbo v5, "30"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_NTT_DOCOMO"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v4, "USE_NI_SLP_ADDRESS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_APN"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_USE_FW_DNS"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_SSL_METHOD"

    const-string/jumbo v5, "SSLv23"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_LPP_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v4, "SUPL_OTDOA_CAPABLE"

    const-string/jumbo v5, "TRUE"

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public extension_listenForBroadcasts(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v2, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1, v0, v3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public extension_mBroadcastReciever(Landroid/content/Intent;Z)Landroid/os/Bundle;
    .locals 11

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v8, v9, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v8, v9, :cond_1

    :cond_0
    const-string/jumbo v8, "android.intent.action.AGPS_SET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->setServer(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    const-string/jumbo v8, "android.intent.action.AGPS_UDP_RECEIVED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    const-string/jumbo v8, "packet_data"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_data"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v8, "packet_length"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "packet_length"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ss"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "GnssLocationProvider_ex"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SIM_STATE_CHANGED received : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "LOADED"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getLppBitmask()I

    move-result v3

    iget v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    if-eq v3, v8, :cond_3

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->prevLppMask:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    :cond_3
    const-string/jumbo v8, "result_mask"

    invoke-virtual {v5, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v5

    :cond_4
    const-string/jumbo v8, "android.intent.action.AGPS_GET_PROFILE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_HOST"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    const-string/jumbo v9, "SUPL_PORT"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.AGPS_PROFILE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "ServerAddr"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "ServerPort"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public extension_printSvStatus([I[FI)V
    .locals 10

    const/4 v8, 0x5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget v7, p1, v0

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_0

    aget v7, p2, v0

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x5

    const/4 v2, 0x5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v8, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const-string/jumbo v7, "GnssLocationProvider_ex"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SV Count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(v) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / TOP5(u) : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public extension_reloadMakeAutoSuplUrl(Z)V
    .locals 7

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->USA_ATT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CAD_XAC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsSetAutoSuplServer:Z

    goto :goto_0
.end method

.method public extension_reportAGpsStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    return-void
.end method

.method public extension_reportGeofenceAddStatus(II)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceAddStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofencePauseStatus(II)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofencePauseStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceRemoveStatus(II)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceRemoveStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceResumeStatus(II)V
    .locals 4

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceResumeStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceStatus(IIDDDFFFJ)V
    .locals 15

    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    :try_start_0
    invoke-interface/range {v1 .. v14}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceStatus(IIDDDFFFJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GnssLocationProvider_ex"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_reportGeofenceTransition(IIDDDFFFJIJ)V
    .locals 21

    const-string/jumbo v4, "sec_location"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0x2710

    move/from16 v0, p1

    if-le v0, v4, :cond_0

    move/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move-wide/from16 v15, p12

    move/from16 v17, p14

    move-wide/from16 v18, p15

    :try_start_0
    invoke-interface/range {v3 .. v19}, Lcom/samsung/android/location/ISLocationManager;->reportGpsGeofenceTransition(IIDDDFFFJIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "GnssLocationProvider_ex"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public extension_sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;Z)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "set_csc_parameters"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/android/server/location/GnssLocationProvider_samsung;->setCscParameters(Landroid/os/Bundle;Z)V

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v5, "com.skt.intent.action.AGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "opType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "cmdType"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "msAssisted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "msBased"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-direct {p0, v8}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    :cond_3
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    const-string/jumbo v5, "sys.sktgps"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "setOllehServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "host"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "port"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "host :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerHost:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " port ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mKTSuplServerPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "setNativeServer"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setNativeServer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "activateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "deactivateGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateGPS is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "activateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "deactivateNLP"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateNLP is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "activateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "activateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "deactivateAGPS"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deactivateAGPS"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "assisted_gps_enabled"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "setMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "getMode"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMode ktPositionMode :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "mode"

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->ktPositionMode:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v5, "set_use_udp"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_use_udp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "use_udp"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "use_udp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v8, :cond_11

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    if-nez v5, :cond_10

    iput-boolean v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->checkUDPSuplInit()V

    :cond_10
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    iput-boolean v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isUDPListen:Z

    goto :goto_2

    :cond_12
    const-string/jumbo v5, "set_dcm_iot"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    const-string/jumbo v5, "GnssLocationProvider_ex"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set_dcm_iot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "dcm_iot"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "dcm_iot"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setDcmSuplIot(Z)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v5, "request_running"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mStarted:Z

    return v5

    :cond_14
    const-string/jumbo v5, "set_lpp_support"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string/jumbo v5, "set_lpp"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, p3, v5}, Lcom/android/server/location/GnssLocationProvider_samsung;->setLppSupport(ZI)V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v5, "setSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "setSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSecGpsConf(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v5, "deleteSecGpsConf"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "GnssLocationProvider_ex"

    const-string/jumbo v6, "deleteSecGpsConf"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->deleteSecGpsConf()V

    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public extension_setStartNavigatingModes(ILandroid/net/ConnectivityManager;Z)I
    .locals 3

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_9

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider_samsung;->extSelectUseGooglePositionMode(I)I

    move-result p1

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CMC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHC:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_a

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->extChnSelectPositionMode()I

    move-result p1

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CHN startNavigating mPositionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mPositionMode set to GPS_POSITION_MODE_STANDALONE because of WiFi only model."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_4
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->isUSAMarket()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_gnss_control(I)V

    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_DCM:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_7

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->JPN_KDI:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_8

    :cond_7
    if-eqz p3, :cond_8

    const/4 p1, 0x2

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startNavigating extension_setStartNavigatingModes For JAPAN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return p1

    :cond_9
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHN:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v0

    sget-object v1, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->CHN_CHU:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v0, v1, :cond_3

    goto/16 :goto_1
.end method

.method public extension_set_supl_server()V
    .locals 13

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSuplServerFromCSC()V

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplServerFromCSC:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplType:I

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    iget v4, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslMode:I

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplSslType:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->-getcom-android-server-location-GnssLocationProvider_samsung$VendorSwitchesValues()[I

    move-result-object v0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "lbs.geo.t-mobile.com"

    const/4 v1, 0x3

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->makeAutoSuplUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    const/16 v3, 0x1c6b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->googleSuplAddr:Ljava/lang/String;

    const/4 v4, 0x4

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_4
    const-string/jumbo v5, "location2.kddi.ne.jp"

    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_5
    const-string/jumbo v5, "supl.telusmobility.com"

    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_6
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto :goto_0

    :pswitch_7
    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSuplByNw()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v4, 0x3

    const/16 v6, 0x1c6b

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplAddress:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mSuplPort:I

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSktSuplVer()V

    goto/16 :goto_0

    :pswitch_9
    const-string/jumbo v8, "221.176.0.55"

    const/4 v7, 0x1

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :pswitch_a
    const-string/jumbo v8, "supl.iusacell.com"

    const/4 v7, 0x3

    const/16 v9, 0x1c6b

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_set_agps_server_extension(ILjava/lang/String;IIII)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public extension_set_xtra_downloaded_time()V
    .locals 5

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_SKT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-eq v1, v4, :cond_0

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_KT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "persist.sys.xtra_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.angryGps.XtraSettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider_samsung;->getVendor()Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    move-result-object v1

    sget-object v4, Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;->KOR_LGT:Lcom/android/server/location/GnssLocationProvider_samsung$Vendor;

    if-ne v1, v4, :cond_1

    goto :goto_0
.end method

.method public extension_stopNavigating()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider_samsung;->getSKAFEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider_samsung;->setSKAFEnable(Z)V

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "stopNavigating : isSKAF changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "sys.sktgps"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mIsKtGps:Z

    const-string/jumbo v0, "GnssLocationProvider_ex"

    const-string/jumbo v1, "mIsKtGps is changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public getInitCalledByNI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->isNativeInitCalled:Z

    return v0
.end method

.method public getWifiOnlyModel()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public init_GnssLocationPrivider_samsung(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties:Ljava/util/Properties;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mProperties_secgps:Ljava/util/Properties;

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public provideSuplFqdn(Ljava/lang/String;)V
    .locals 13

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provideSuplFqdn :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    if-eqz v9, :cond_0

    const-string/jumbo v9, ""

    iget-object v10, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    :goto_1
    array-length v9, v4

    if-ge v3, v9, :cond_4

    aget-object v9, v4, v3

    if-nez v9, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "network["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "] : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v4, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", Capability : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v12, v4, v3

    invoke-virtual {v11, v12}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    aget-object v10, v4, v3

    invoke-virtual {v9, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v8, v4, v3

    :cond_4
    if-nez v8, :cond_5

    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "No default network is currently active."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :try_start_0
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->suplFqdn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    instance-of v9, v9, Ljava/net/Inet6Address;

    if-eqz v9, :cond_8

    if-nez v2, :cond_6

    const/4 v2, 0x1

    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got IPv6 InetAddress : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    :cond_6
    :goto_2
    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    if-eqz v9, :cond_9

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    :goto_3
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "DNS resolve result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_7

    if-eqz v2, :cond_0

    :cond_7
    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v6}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v7

    if-nez v7, :cond_a

    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error requesting route to host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/location/GnssLocationProvider_samsung;->native_agps_set_supl_host_ip(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "UnknownHostException occured"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    if-nez v1, :cond_6

    const/4 v1, 0x1

    :try_start_1
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got IPv4 InetAddress : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->mResolveAddrs:Ljava/net/InetAddress;

    iput-object v9, p0, Lcom/android/server/location/GnssLocationProvider_samsung;->retAddr:Ljava/net/InetAddress;

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v9, "GnssLocationProvider_ex"

    const-string/jumbo v10, "DNS resolve failed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_a
    const-string/jumbo v9, "GnssLocationProvider_ex"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Successfully requested route to host: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public reportVendorExtraAgpsStatus(IIIII)V
    .locals 3

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportVendorExtraAgpsStatus, isSuplServerConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lastSuplMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isRefLocationReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isRefTimeReceived = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isEEValid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public reportVendorExtraAssertMessage(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "method_reportVendorExtraAssertMessage, message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
