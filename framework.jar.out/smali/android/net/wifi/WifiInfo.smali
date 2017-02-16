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

.field public static final FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final INVALID_RSSI:I = -0x7f

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final MAX_RSSI:I = 0xc8

.field public static final MIN_RSSI:I = -0x7e

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

.field public isGigaAp:Z

.field public isVendorAp:Z

.field public linkStuckCount:I

.field public lowRssiCount:I

.field private mAuthenticated:Z

.field private mBSSID:Ljava/lang/String;

.field private mCaptivePortal:Z

.field private mCheckVsieForSns:Z

.field private mDefaultAp:Z

.field private mEphemeral:Z

.field private mExpiration:Ljava/lang/String;

.field private mFrequency:I

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mLoginUrl:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;

.field private mManualConnection:Z

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSharedAp:Z

.field private mSkipInternetCheck:Z

.field private mSkipInternetCheckConfirmedOnThisConnection:Z

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private mVerifiedPassword:Z

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

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method static synthetic -set7(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/WifiSsid;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 48
    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    .line 929
    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 282
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 283
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 284
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 285
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 286
    const/16 v0, -0x7f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 287
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 288
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 289
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 290
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    .line 291
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 292
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 293
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    .line 294
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 295
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 297
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 298
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 299
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 300
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 302
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 303
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 281
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 344
    if-eqz p1, :cond_0

    .line 345
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 346
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 347
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 348
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 349
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 350
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 351
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 352
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 353
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 354
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 355
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 356
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 357
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 358
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 359
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 360
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBadRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 361
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 362
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 363
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 364
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 365
    iget v0, p1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 366
    iget v0, p1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 367
    iget v0, p1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 368
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 369
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    .line 370
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 371
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 372
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    .line 373
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 374
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 376
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 377
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 378
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 379
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 381
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 382
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 343
    :cond_0
    return-void
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 631
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 517
    const/4 v3, 0x0

    .line 518
    .local v3, "in":Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 519
    .local v5, "length":I
    const/16 v6, 0x11

    .line 520
    .local v6, "macLength":I
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 521
    .local v0, "buffer":[B
    const/4 v7, 0x0

    .line 524
    .local v7, "retValue":Ljava/lang/String;
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

    .line 525
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 519
    const/16 v9, 0x11

    .line 526
    if-lt v5, v9, :cond_0

    .line 527
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 528
    .local v8, "retValue":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v7    # "retValue":Ljava/lang/String;
    move-result-object v7

    .line 533
    .end local v8    # "retValue":Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_1

    .line 535
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v3, v4

    .line 542
    .end local v4    # "in":Ljava/io/DataInputStream;
    :cond_2
    :goto_1
    return-object v7

    .line 536
    .restart local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "retValue":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 531
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .local v2, "ignore":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    if-eqz v3, :cond_2

    .line 535
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 536
    :catch_2
    move-exception v1

    .line 537
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "WifiInfo"

    const-string/jumbo v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 532
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "ignore":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 533
    :goto_3
    if-eqz v3, :cond_3

    .line 535
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 532
    :cond_3
    :goto_4
    throw v9

    .line 536
    :catch_3
    move-exception v1

    .line 537
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v10, "WifiInfo"

    const-string/jumbo v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 532
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "retValue":Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .local v3, "in":Ljava/io/DataInputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .local v7, "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 530
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .local v7, "retValue":Ljava/lang/String;
    :catch_4
    move-exception v2

    .restart local v2    # "ignore":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v2    # "ignore":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v7    # "retValue":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v8    # "retValue":Ljava/lang/String;
    :catch_5
    move-exception v2

    .restart local v2    # "ignore":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "retValue":Ljava/lang/String;
    .local v7, "retValue":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 835
    if-nez p0, :cond_0

    return-object v1

    .line 836
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 837
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 838
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 840
    :cond_1
    return-object p0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .param p0, "stateName"    # Ljava/lang/String;

    .prologue
    .line 645
    const-string/jumbo v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v1

    .line 649
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

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 864
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckVsieForSns()Z
    .locals 1

    .prologue
    .line 821
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    return v0
.end method

.method public getDefaultAp()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    return v0
.end method

.method public getExpiration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 622
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->isHidden()Z

    move-result v0

    return v0
.end method

.method public getIpAddress()I
    .locals 2

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_0

    .line 611
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v0

    .line 613
    :cond_0
    return v0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getLoginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMeteredHint()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 440
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 399
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "unicode":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
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

    .line 404
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->getHexString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "hex":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "hex":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "hex":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "<unknown ssid>"

    goto :goto_0

    .line 408
    .end local v0    # "hex":Ljava/lang/String;
    .end local v1    # "unicode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "<unknown ssid>"

    return-object v2
.end method

.method public getSkipInternetCheck()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    return v0
.end method

.method public getSkipInternetCheckConfirmedOnThisConnection()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    return v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public getWifiSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public hasRealMacAddress()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 551
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "02:00:00:00:00:00"

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public is24GHz()Z
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    return v0
.end method

.method public isCaptivePortal()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    return v0
.end method

.method public isEphemeral()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public isManualConnection()Z
    .locals 1

    .prologue
    .line 711
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    return v0
.end method

.method public isSharedAp()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    return v0
.end method

.method public isVerifiedPassword()Z
    .locals 1

    .prologue
    .line 805
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    return v0
.end method

.method public reset()V
    .locals 8

    .prologue
    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 309
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 311
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 312
    const/16 v0, -0x7f

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 313
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 314
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 315
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 316
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 317
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheck(Z)V

    .line 318
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setSkipInternetCheckConfirmedOnThisConnection(Z)V

    .line 319
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setCaptivePortal(Z)V

    .line 320
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setAuthenticated(Z)V

    .line 321
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setManualConnection(Z)V

    .line 322
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiInfo;->setLoginUrl(Ljava/lang/String;)V

    .line 323
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 324
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 325
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 326
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 327
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 328
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 329
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 330
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 331
    iput v1, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 332
    iput v1, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 333
    iput v1, p0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 334
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 335
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    .line 336
    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    .line 307
    return-void
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "auth"    # Z

    .prologue
    .line 735
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    .line 734
    return-void
.end method

.method public setBSSID(Ljava/lang/String;)V
    .locals 0
    .param p1, "BSSID"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 417
    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 0
    .param p1, "captivePortal"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    .line 726
    return-void
.end method

.method public setCheckVsieForSns(Z)V
    .locals 0
    .param p1, "checkVsieForSns"    # Z

    .prologue
    .line 829
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    .line 828
    return-void
.end method

.method public setDefaultAp(Z)V
    .locals 0
    .param p1, "defaultAp"    # Z

    .prologue
    .line 765
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    .line 764
    return-void
.end method

.method public setEphemeral(Z)V
    .locals 0
    .param p1, "ephemeral"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 565
    return-void
.end method

.method public setExpiration(Ljava/lang/String;)V
    .locals 0
    .param p1, "expiration"    # Ljava/lang/String;

    .prologue
    .line 797
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    .line 796
    return-void
.end method

.method public setFrequency(I)V
    .locals 0
    .param p1, "frequency"    # I

    .prologue
    .line 477
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 476
    return-void
.end method

.method public setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 605
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 604
    return-void
.end method

.method public setLinkSpeed(I)V
    .locals 0
    .param p1, "linkSpeed"    # I

    .prologue
    .line 463
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 462
    return-void
.end method

.method public setLoginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 751
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    .line 750
    return-void
.end method

.method public setMacAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAddress"    # Ljava/lang/String;

    .prologue
    .line 502
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public setManualConnection(Z)V
    .locals 0
    .param p1, "manualConnection"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    .line 742
    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0
    .param p1, "meteredHint"    # Z

    .prologue
    .line 556
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 555
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 576
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 575
    return-void
.end method

.method public setRssi(I)V
    .locals 1
    .param p1, "rssi"    # I

    .prologue
    .line 445
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_0

    .line 446
    const/16 p1, -0x7f

    .line 447
    :cond_0
    const/16 v0, 0xc8

    if-le p1, v0, :cond_1

    .line 448
    const/16 p1, 0xc8

    .line 449
    :cond_1
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 444
    return-void
.end method

.method public setSSID(Landroid/net/wifi/WifiSsid;)V
    .locals 0
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .prologue
    .line 388
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 387
    return-void
.end method

.method public setSharedAp(Z)V
    .locals 0
    .param p1, "sharedAp"    # Z

    .prologue
    .line 781
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    .line 780
    return-void
.end method

.method public setSkipInternetCheck(Z)V
    .locals 0
    .param p1, "skipInternetCheck"    # Z

    .prologue
    .line 678
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    .line 677
    return-void
.end method

.method public setSkipInternetCheckConfirmedOnThisConnection(Z)V
    .locals 0
    .param p1, "SkipInternetCheckConfirmedOnThisConnection"    # Z

    .prologue
    .line 687
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    .line 686
    return-void
.end method

.method public setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .prologue
    .line 600
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 599
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .param p1, "stateName"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 640
    return-void
.end method

.method public setVerifiedPassword(Z)V
    .locals 0
    .param p1, "verifiedPassword"    # Z

    .prologue
    .line 813
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    .line 812
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 845
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 846
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v0, "<none>"

    .line 848
    .local v0, "none":Ljava/lang/String;
    const-string/jumbo v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_0

    const-string/jumbo v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 849
    const-string/jumbo v3, ", BSSID: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 849
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    .line 848
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 850
    const-string/jumbo v3, ", MAC: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 850
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    .line 848
    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 851
    const-string/jumbo v3, ", Supplicant state: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 852
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_3

    .line 848
    .end local v0    # "none":Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 853
    const-string/jumbo v3, ", RSSI: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 853
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 854
    const-string/jumbo v3, ", Link speed: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 854
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 854
    const-string/jumbo v3, "Mbps"

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 855
    const-string/jumbo v3, ", Frequency: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 855
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 855
    const-string/jumbo v3, "MHz"

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 856
    const-string/jumbo v3, ", Net ID: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 856
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 857
    const-string/jumbo v3, ", Metered hint: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 857
    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 858
    const-string/jumbo v3, ", score: "

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 858
    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 848
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 848
    .restart local v0    # "none":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    .line 849
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto/16 :goto_1

    .line 850
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 852
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3
.end method

.method public updatePacketRates(JJ)V
    .locals 7
    .param p1, "txPackets"    # J
    .param p3, "rxPackets"    # J

    .prologue
    const-wide/16 v0, 0x0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide/16 v2, 0x0

    .line 248
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 249
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 250
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 251
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 252
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    .line 253
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    mul-double/2addr v0, v4

    .line 254
    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v2, p1, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    .line 253
    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 255
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    mul-double/2addr v0, v4

    .line 256
    iget-wide v2, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v2, p3, v2

    long-to-double v2, v2

    mul-double/2addr v2, v4

    .line 255
    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 261
    :goto_0
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 262
    iput-wide p3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 246
    return-void

    .line 258
    :cond_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 259
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0
.end method

.method public updatePacketRates(Landroid/net/wifi/WifiLinkLayerStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/net/wifi/WifiLinkLayerStats;

    .prologue
    .line 198
    if-eqz p1, :cond_1

    .line 199
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    add-long v4, v8, v10

    .line 200
    .local v4, "txgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    add-long/2addr v8, v10

    .line 201
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    .line 200
    add-long/2addr v8, v10

    .line 201
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    .line 200
    add-long v6, v8, v10

    .line 202
    .local v6, "txretries":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    add-long/2addr v8, v10

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    add-long v0, v8, v10

    .line 203
    .local v0, "rxgood":J
    iget-wide v8, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    add-long/2addr v8, v10

    .line 204
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    .line 203
    add-long/2addr v8, v10

    .line 204
    iget-wide v10, p1, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    .line 203
    add-long v2, v8, v10

    .line 206
    .local v2, "txbad":J
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    cmp-long v8, v8, v2

    if-gtz v8, :cond_0

    .line 207
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    cmp-long v8, v8, v4

    if-gtz v8, :cond_0

    .line 208
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    cmp-long v8, v8, v0

    if-gtz v8, :cond_0

    .line 209
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    cmp-long v8, v8, v6

    if-gtz v8, :cond_0

    .line 210
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    .line 211
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    sub-long v10, v2, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    .line 210
    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 212
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    .line 213
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    sub-long v10, v4, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    .line 212
    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 214
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    .line 215
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    sub-long v10, v0, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    .line 214
    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 216
    iget-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    .line 217
    iget-wide v10, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    sub-long v10, v6, v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    .line 216
    add-double/2addr v8, v10

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    .line 224
    :goto_0
    iput-wide v2, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 225
    iput-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 226
    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 227
    iput-wide v6, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 197
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :goto_1
    return-void

    .line 219
    .restart local v0    # "rxgood":J
    .restart local v2    # "txbad":J
    .restart local v4    # "txgood":J
    .restart local v6    # "txretries":J
    :cond_0
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 220
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 221
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 222
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_0

    .line 229
    .end local v0    # "rxgood":J
    .end local v2    # "txbad":J
    .end local v4    # "txgood":J
    .end local v6    # "txretries":J
    :cond_1
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 230
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 231
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 232
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 233
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    .line 234
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    .line 235
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    .line 236
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 869
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 871
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 875
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 879
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_1

    .line 880
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 885
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 887
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 888
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 891
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 892
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 893
    iget-wide v4, p0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 894
    iget v0, p0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 895
    iget v0, p0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 898
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheck:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 902
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSkipInternetCheckConfirmedOnThisConnection:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCaptivePortal:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mAuthenticated:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mManualConnection:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 913
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mLoginUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 915
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mDefaultAp:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 917
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mSharedAp:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 919
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mVerifiedPassword:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCheckVsieForSns:Z

    if-eqz v0, :cond_c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isGigaAp:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 925
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->isVendorAp:Z

    if-eqz v0, :cond_e

    :goto_e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 868
    return-void

    .line 877
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto/16 :goto_0

    .line 883
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 887
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 888
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 898
    goto :goto_4

    :cond_5
    move v0, v2

    .line 902
    goto :goto_5

    :cond_6
    move v0, v2

    .line 905
    goto :goto_6

    :cond_7
    move v0, v2

    .line 907
    goto :goto_7

    :cond_8
    move v0, v2

    .line 910
    goto :goto_8

    :cond_9
    move v0, v2

    .line 915
    goto :goto_9

    :cond_a
    move v0, v2

    .line 917
    goto :goto_a

    :cond_b
    move v0, v2

    .line 919
    goto :goto_b

    :cond_c
    move v0, v2

    .line 922
    goto :goto_c

    :cond_d
    move v0, v2

    .line 924
    goto :goto_d

    :cond_e
    move v1, v2

    .line 925
    goto :goto_e
.end method
