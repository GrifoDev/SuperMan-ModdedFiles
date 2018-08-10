.class public Lcom/android/systemui/pip/phone/PipManager;
.super Ljava/lang/Object;
.source "PipManager.java"

# interfaces
.implements Lcom/android/systemui/pip/BasePipManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipManager$1;,
        Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;
    }
.end annotation


# static fields
.field private static sPipController:Lcom/android/systemui/pip/phone/PipManager;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

.field private mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mNotificationController:Lcom/android/systemui/pip/phone/PipNotificationController;

.field private final mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

.field mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

.field private mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipManager;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipNotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mNotificationController:Lcom/android/systemui/pip/phone/PipNotificationController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/pip/phone/PipManager;)Lcom/android/systemui/pip/phone/PipTouchHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;-><init>(Lcom/android/systemui/pip/phone/PipManager;Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    new-instance v0, Lcom/android/systemui/pip/phone/PipManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipManager$1;-><init>(Lcom/android/systemui/pip/phone/PipManager;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/pip/phone/PipManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/pip/phone/PipManager;

    invoke-direct {v0}, Lcom/android/systemui/pip/phone/PipManager;-><init>()V

    sput-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    :cond_0
    sget-object v0, Lcom/android/systemui/pip/phone/PipManager;->sPipController:Lcom/android/systemui/pip/phone/PipManager;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string/jumbo v0, "  "

    const-string/jumbo v1, "PipManager"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    const-string/jumbo v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const-string/jumbo v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    const-string/jumbo v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mPinnedStackListener:Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/view/IWindowManager;->registerPinnedStackListener(ILandroid/view/IPinnedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mTaskStackListener:Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    new-instance v1, Lcom/android/systemui/pip/phone/InputConsumerController;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-direct {v1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController;-><init>(Landroid/view/IWindowManager;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/pip/phone/PipMediaController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    new-instance v1, Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mMediaController:Lcom/android/systemui/pip/phone/PipMediaController;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMediaController;Lcom/android/systemui/pip/phone/InputConsumerController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mInputConsumerController:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/pip/phone/InputConsumerController;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    new-instance v1, Lcom/android/systemui/pip/phone/PipNotificationController;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/android/systemui/pip/phone/PipNotificationController;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipManager;->mNotificationController:Lcom/android/systemui/pip/phone/PipNotificationController;

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PipManager"

    const-string/jumbo v2, "Failed to register pinned stack listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ExpandPipEvent;)V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v6, 0x4

    invoke-interface {v4, v6}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget v3, v6, v4

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipTouchHandler;->getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onConfigurationChanged()V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipManager;->mTouchHandler:Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->showPictureInPictureMenu()V

    return-void
.end method
