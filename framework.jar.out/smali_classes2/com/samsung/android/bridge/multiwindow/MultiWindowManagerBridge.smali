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

    .prologue
    .line 132
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    .line 133
    sget v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_SWAPPING:I

    sput v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->MW_FLAG_DIVIDER_BUTTON_INVISIBLE:I

    .line 136
    const-string/jumbo v0, "com.samsung.android.multiwindow.MultiWindowManager"

    invoke-static {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->createService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p0, "clsssName"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v5, 0x0

    .line 142
    .local v5, "service":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 153
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "service":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 150
    .restart local v5    # "service":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
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

    .line 148
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/IllegalAccessException;
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

    .line 146
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/InstantiationException;
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

    .line 144
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/ClassNotFoundException;
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
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "state"    # Landroid/os/Bundle;

    .prologue
    .line 160
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 159
    :cond_0
    return-void
.end method

.method public completeToggleSplitScreen()V
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->completeToggleSplitScreen()V

    .line 270
    :cond_0
    return-void
.end method

.method public enterFreeformTask(I)V
    .locals 1
    .param p1, "fromStackId"    # I

    .prologue
    .line 296
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 297
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->enterFreeformTask(I)V

    .line 295
    :cond_0
    return-void
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 166
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->exitMultiWindow(Landroid/os/IBinder;)Z

    move-result v0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowModeStates(I)I
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 277
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getMultiWindowModeStates(I)I

    move-result v0

    return v0

    .line 280
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopRunningTaskInfo(I)Ljava/util/List;
    .locals 2
    .param p1, "stackId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 316
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 317
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->getTopRunningTaskInfo(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 319
    :cond_0
    return-object v1
.end method

.method public isForceResizable(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 302
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isForceResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapViewRunning()Z
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 253
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->isSnapViewRunning()Z

    move-result v0

    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maximizeStackByDivider(Z)V
    .locals 1
    .param p1, "shouldRemove"    # Z

    .prologue
    .line 198
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 199
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->maximizeStackByDivider(Z)V

    .line 197
    :cond_0
    return-void
.end method

.method public moveMultiWindowTasksToFullScreen()V
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 235
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->moveMultiWindowTasksToFullScreen()V

    .line 233
    :cond_0
    return-void
.end method

.method public registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    .prologue
    .line 179
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 178
    :cond_0
    return-void
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    .prologue
    .line 210
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    .line 209
    :cond_0
    return-void
.end method

.method public registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;

    .prologue
    .line 173
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V

    .line 172
    :cond_0
    return-void
.end method

.method public removeTaskIfNeeded(Z)Z
    .locals 1
    .param p1, "topLeft"    # Z

    .prologue
    .line 191
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->removeTaskIfNeeded(Z)Z

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAutoResizingEnabled(Z)V
    .locals 1
    .param p1, "hasHiddenSnapTarget"    # Z

    .prologue
    .line 240
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 241
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setAutoResizingEnabled(Z)V

    .line 239
    :cond_0
    return-void
.end method

.method public setDividerButtonsDimLayer(ZFI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "alpha"    # F
    .param p3, "type"    # I

    .prologue
    .line 204
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 205
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDividerButtonsDimLayer(ZFI)V

    .line 203
    :cond_0
    return-void
.end method

.method public setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 216
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V

    .line 215
    :cond_0
    return-void
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 222
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 221
    :cond_0
    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 228
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 229
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 227
    :cond_0
    return-void
.end method

.method public setSnapView(ZLandroid/graphics/Rect;I)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "region"    # Landroid/graphics/Rect;
    .param p3, "snapTarget"    # I

    .prologue
    .line 246
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->setSnapView(ZLandroid/graphics/Rect;I)V

    .line 245
    :cond_0
    return-void
.end method

.method public shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 309
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0

    .line 312
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public showRecentApps()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->showRecentApps()V

    .line 264
    :cond_0
    return-void
.end method

.method public startDividerDragging()V
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->startDividerDragging()V

    .line 283
    :cond_0
    return-void
.end method

.method public stopDividerDragging()V
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 291
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->stopDividerDragging()V

    .line 289
    :cond_0
    return-void
.end method

.method public swapSnapTasks()V
    .locals 1

    .prologue
    .line 259
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->swapSnapTasks()V

    .line 258
    :cond_0
    return-void
.end method

.method public unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    .prologue
    .line 185
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->sIMultiWindowManagerBridge:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;->unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    .line 184
    :cond_0
    return-void
.end method
