.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.super Lcom/android/internal/util/StateMachine;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppLocManSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    }
.end annotation


# instance fields
.field private firstTimeGps:Z

.field private mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

.field private mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

.field private mIndoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

.field private mOutdoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

.field private mRestricted:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

.field private mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

.field private mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

.field private mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->isWifiAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/android/internal/util/IState;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->firstTimeGps:Z

    const-string/jumbo v0, "LppLocationManager"

    const-string/jumbo v1, "Creating State Machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mIndoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Indoor;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mOutdoor:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Outdoor;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mGpsBatch:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mRestricted:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$Restricted;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mAllNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$AllNM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private exit()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->quit()V

    return-void
.end method

.method private getState()Lcom/android/internal/util/IState;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method private isWifiAvailable()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->-get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
