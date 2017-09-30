.class public Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/apiinterface/MultiSimManagerInterface;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

.field private static sConnectivityManagerInstance:Landroid/net/ConnectivityManager;

.field private static sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mMultiSimManager:Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;

    return-object v0
.end method


# virtual methods
.method public getActiveSubIdList()[I
    .locals 2

    const-string v0, "getActiveSubIdList"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getActiveSubIdList()[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSubId(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getDefaultSubId(I)I

    move-result v0

    return v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLine1Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlotCount()I
    .locals 2

    const-string v0, "getSimSlotCount"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getSimSlotCount()I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSlotId(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubscriberId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkSupported(I)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sConnectivityManagerInstance:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sConnectivityManagerInstance:Landroid/net/ConnectivityManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sConnectivityManagerInstance:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method public isNoSIM()Z
    .locals 2

    const-string v0, "isNoSIM"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/common/SdlLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/sdl/MultiSimHandler;->isNoSIM()Z

    move-result v0

    return v0
.end method

.method public isServiceConnected()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/sdl/SdlMultiSimManagerRef;->sTelephonyManagerInstance:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
