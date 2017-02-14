.class public Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;,
        Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;
    }
.end annotation


# static fields
.field public static final ANIM_RELAUNCH_FROM_FREEFORM:I = 0x2

.field public static final ANIM_RELAUNCH_NONE:I = 0x0

.field public static final ANIM_RELAUNCH_TO_FREEFORM:I = 0x1

.field public static final ANIM_RELAUNCH_TO_SPLIT:I = 0x1

.field public static final DIRECTION_PUSH_LEFT:I = 0x1

.field public static final DIRECTION_PUSH_NONE:I = 0x0

.field public static final DIRECTION_PUSH_RIGHT:I = 0x2

.field public static final DIRECTION_PUSH_UNDEFIND:I = -0x1

.field public static final FLAG_FREEFORM_TASK_CURRENT_USER:I = 0x1

.field public static final FLAG_FREEFORM_TASK_MINIMIZE:I = 0x2

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_DEX:F = 0.6f

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.67f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_DEX:F = 0.8f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_HIDDEN_MINIMIZE:I = 0x1

.field public static final FREEFORM_HIDDEN_MOVE_BACK:I = 0x2

.field public static final FREEFORM_HIDDEN_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_UNMINIIZE:I = 0x2

.field public static final METADATA_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.densitychange"

.field public static final METADATA_MULTIWINDOW_MAX_HEIGHT:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxHeight"

.field public static final METADATA_MULTIWINDOW_MAX_WIDTH:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxWidth"

.field public static final METADATA_SUPPORT_MULTIWINDOW:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.enable"

.field public static final METADATA_SUPPORT_MULTIWINDOW_BEFORE_HERO:Ljava/lang/String; = "com.sec.android.support.multiwindow"

.field public static final MINIMIZE_CONTAINER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

.field public static final MINIMIZE_CONTAINER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow"

.field private static final MULTIWINDOW_MANAGER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.multiwindow.MultiWindowManager"

.field public static final MULTIWINDOW_MODE_DOCKED_STATE:I = 0x2

.field public static final MULTIWINDOW_MODE_FREEFORM_STATE:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE_STATE:I = 0x0

.field public static final MULTIWINDOW_MODE_PINNED_STATE:I = 0x4

.field public static final MW_ANIMATION_RESIZE:I = 0xc9

.field public static final MW_ANIMATION_SWAP:I = 0xca

.field public static final MW_DIVIDER_RESIZE_MARGIN:I = 0x1e

.field public static MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I = 0x0

.field public static MW_FLAG_SWAPPING:I = 0x0

.field public static final MW_TASK_CLOSE_EXIT:I = 0x12d

.field public static final NOTIFY_REASON_FORCE_CLEAR_MINIMIZE:I = 0x3

.field public static final NOTIFY_REASON_MINIMIZE:I = 0x1

.field public static final NOTIFY_REASON_UNMINIMIZE:I = 0x2

.field public static final RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final SLIDE_FREEFORM_ACCELERATION:I = 0xa

.field public static final TAG:Ljava/lang/String; = "MultiWindowManagerBridge"

.field private static sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    sget v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I

    const-string/jumbo v0, "com.samsung.android.multiwindow.MultiWindowManager"

    invoke-static {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->createService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    return-object v5

    :catch_0
    move-exception v2

    const-string/jumbo v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v4

    const-string/jumbo v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v6, "MultiWindowManagerBridge"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Not created this class : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", reason : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->completeToggleSplitScreen()V

    :cond_0
    return-void
.end method

.method public enterFreeformTask(I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->enterFreeformTask(I)V

    :cond_0
    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowModeStates(I)I
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getMultiWindowModeStates(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapViewRunning()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapViewRunning()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maximizeStackByDivider(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->maximizeStackByDivider(Z)V

    :cond_0
    return-void
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->moveMultiWindowTasksToFullScreen()V

    :cond_0
    return-void
.end method

.method public registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    :cond_0
    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    :cond_0
    return-void
.end method

.method public registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    :cond_0
    return-void
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->removeTaskIfNeeded(Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoResizingEnabled(Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setAutoResizingEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDividerButtonsDimLayer(ZFI)V

    :cond_0
    return-void
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public setSnapView(ZLandroid/graphics/Rect;I)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setSnapView(ZLandroid/graphics/Rect;I)V

    :cond_0
    return-void
.end method

.method public shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showRecentApps()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->showRecentApps()V

    :cond_0
    return-void
.end method

.method public startDividerDragging()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->startDividerDragging()V

    :cond_0
    return-void
.end method

.method public stopDividerDragging()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->stopDividerDragging()V

    :cond_0
    return-void
.end method

.method public swapSnapTasks()V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->swapSnapTasks()V

    :cond_0
    return-void
.end method

.method public unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    :cond_0
    return-void
.end method
