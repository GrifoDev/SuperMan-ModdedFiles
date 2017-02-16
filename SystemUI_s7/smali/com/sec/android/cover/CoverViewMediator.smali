.class public Lcom/sec/android/cover/CoverViewMediator;
.super Ljava/lang/Object;
.source "CoverViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverViewMediator$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mTestModeEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverController:Lcom/sec/android/cover/BaseCoverController;

.field private mHandler:Landroid/os/Handler;

.field private mPreviewRootView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/CoverViewMediator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/cover/CoverViewMediator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverViewMediator$1;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string/jumbo v1, "CoverViewMediator is not allow default constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/cover/CoverViewMediator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverViewMediator$1;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    return-void
.end method


# virtual methods
.method public injectCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cover BaseService injectCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->onCoverAppCovered(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy : The cover service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->onDestroy()V

    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy : Killing SViewCover process..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->onStatusBarStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->setCoverUiAlpha(F)V

    :cond_0
    return-void
.end method

.method public setShortcutAppOpenCallback(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->setShortcutAppOpenCallback(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;)V

    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/BaseCoverController;->showCoverOpenPopup()V

    :cond_0
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->showCoverOpenPopup(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    sget-boolean v1, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cover BaseService updateCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimerWithInterval()V

    return-void
.end method
