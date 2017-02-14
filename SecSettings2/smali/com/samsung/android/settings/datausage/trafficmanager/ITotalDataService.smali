.class public Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;
.super Landroid/app/Service;
.source "ITotalDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field private mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

.field stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSubId()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getTotalUsedData()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-void
.end method

.method private getSubId()I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->hasEnableSimCard(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    const-string/jumbo v1, "ITotalDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSubId subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getTotalUsedData()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTrafficBytes()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onBind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->mTelManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ITotalDataService;->stub:Lcom/samsung/android/trafficmanager/ITotalData$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onDestroy() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "ITotalDataService"

    const-string/jumbo v1, "onUnbind() called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method
