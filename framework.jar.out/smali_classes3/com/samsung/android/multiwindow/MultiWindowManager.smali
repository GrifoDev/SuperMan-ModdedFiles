.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$1;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_PAIR_APP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.multiwindow.ADD_PAIR_APP_SHORTCUT"

.field public static final ACTION_COOLDONW_FREEFORM:Ljava/lang/String; = "android.intent.action.COOLDOWN_FREEFORM"

.field public static final ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field public static final ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_FAILED_NOT_SUPPROT:I = 0x3

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_FAILED_ONE_APP:I = 0x1

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_FAILED_OTHER_WORKSPACE_APP:I = 0x5

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_FAILED_SECURE_FOLDER_APP:I = 0x4

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_FAILED_TWO_APP:I = 0x2

.field public static final ADDAPPPAIR_SHORTCUT_RESULT_SUCCESS:I = 0x0

.field public static final ANIM_RELAUNCH_FROM_FREEFORM:I = 0x2

.field public static final ANIM_RELAUNCH_NONE:I = 0x0

.field public static final ANIM_RELAUNCH_TO_FREEFORM:I = 0x1

.field public static final BIXBY_RESULT_FAILED_ALREADY_OPENED_FREEFORM:I = 0x5

.field public static final BIXBY_RESULT_FAILED_NO_HAVE_TASK:I = 0x2

.field public static final BIXBY_RESULT_FAILED_NO_MATCHED_PACAKGE:I = 0x3

.field public static final BIXBY_RESULT_FAILED_NO_SUPPORT_RESIZEABLE:I = 0x4

.field public static final BIXBY_RESULT_SUCCESS:I = 0x1

.field public static final DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final DEX_COMPAT_UI_CUSTOM:I = 0x2

.field public static final DEX_COMPAT_UI_DEFAULT:I = 0x1

.field public static final DEX_COMPAT_UI_FULLSCREEN:I = 0x3

.field public static final DEX_COMPAT_UI_UNDEFINED:I = -0x1

.field public static final DEX_INFO_CAN_MAXIMIZE:I = 0x2

.field public static final DEX_INFO_IS_IN_MULTIWINDOW_MODE:I = 0x1

.field public static final DEX_INFO_IS_PRESERVE_ORIENTATION_MODE:I = 0x4

.field public static final EXTRA_PAIR_APP_COMPONENT_NAME_FIRST:Ljava/lang/String; = "component_first"

.field public static final EXTRA_PAIR_APP_COMPONENT_NAME_SECOND:Ljava/lang/String; = "component_second"

.field public static final EXTRA_PAIR_APP_USERID_FIRST:Ljava/lang/String; = "userId_first"

.field public static final EXTRA_PAIR_APP_USERID_SECOND:Ljava/lang/String; = "userId_second"

.field public static final FLAG_MULTIWINDOW_TASK_CURRENT_USER:I = 0x1

.field public static final FLAG_MULTIWINDOW_TASK_MINIMIZE:I = 0x2

.field public static final FORCED_RESIZABLE_ACTIVITY_CLASS:Ljava/lang/String; = "com.android.systemui.stackdivider.ForcedResizableInfoActivity"

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO:F = 0.5f

.field public static final FREEFORM_DEFAULT_LONG_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO:F = 0.67f

.field public static final FREEFORM_DEFAULT_SHORT_SIZE_RATIO_FOR_TABLET:F = 0.5f

.field public static final FREEFORM_DIM_LAYER_TYPE_NONE:I = 0x0

.field public static final FREEFORM_DIM_LAYER_TYPE_ROUND:I = 0x1

.field public static final FREEFORM_DIM_LAYER_TYPE_SQUARE:I = 0x2

.field public static final FREEFORM_HIDDEN_MINIMIZE:I = 0x1

.field public static final FREEFORM_HIDDEN_MOVE_BACK:I = 0x2

.field public static final FREEFORM_HIDDEN_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final FREEFORM_TRANSIT_UNMINIMIZE:I = 0x2

.field public static final INVALID_TASK_ID:I = -0x1

.field public static final LAUNCHING_DEFAULT_TASK_HEIGHT_FOR_DEX:I = 0x2d0

.field public static final LAUNCHING_DEFAULT_TASK_WIDTH_FOR_DEX:I = 0x3c0

.field public static final METADATA_DEX_LAUNCH_HEIGHT:Ljava/lang/String; = "com.samsung.android.dex.launchheight"

.field public static final METADATA_DEX_LAUNCH_HEIGHT_DEPRECATED:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.dex.launchheight"

.field public static final METADATA_DEX_LAUNCH_WIDTH:Ljava/lang/String; = "com.samsung.android.dex.launchwidth"

.field public static final METADATA_DEX_LAUNCH_WIDTH_DEPRECATED:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.dex.launchwidth"

.field public static final METADATA_DEX_TRANSIENT_BAR_DELAY:Ljava/lang/String; = "com.samsung.android.dex.transient_bar_delay"

.field public static final METADATA_FREEFORM_DENSITY_CHANGE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.densitychange"

.field public static final METADATA_MULTIWINDOW_FLOATING_FORCE_HIDE:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.force_hide_floating_multiwindow"

.field public static final METADATA_MULTIWINDOW_FREEFORM_BORDER:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.border"

.field public static final METADATA_MULTIWINDOW_LAUNCH_IN_FOCUSEDSTACK:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.freeform.launch_in_focusedstack"

.field public static final METADATA_MULTIWINDOW_MAX_HEIGHT:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxHeight"

.field public static final METADATA_MULTIWINDOW_MAX_WIDTH:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.maxWidth"

.field public static final METADATA_SUPPORT_MULTIWINDOW:Ljava/lang/String; = "com.samsung.android.sdk.multiwindow.enable"

.field public static final METADATA_SUPPORT_MULTIWINDOW_BEFORE_HERO:Ljava/lang/String; = "com.sec.android.support.multiwindow"

.field public static final MINIMIZE_CONTAINER_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow.minimizecontainer.MinimizeContainerService"

.field public static final MINIMIZE_CONTAINER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.multiwindow"

.field public static final MINIMIZE_MAX_COUNT:I = 0x14

.field public static final MULTIWINDOW_ANIMATION_RESIZE:I = 0xc9

.field public static final MULTIWINDOW_ANIMATION_SWAP:I = 0xca

.field public static final MULTIWINDOW_DOCKED_SIZE_DEFAULT:I = 0x0

.field public static final MULTIWINDOW_DOCKED_SIZE_MAXIMAL:I = 0x2

.field public static final MULTIWINDOW_DOCKED_SIZE_MINIMAL:I = 0x1

.field public static final MULTIWINDOW_MODE_DOCKED:I = 0x2

.field public static final MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final MULTIWINDOW_MODE_PINNED:I = 0x4

.field public static final NOTIFY_REASON_FORCE_CLEAR_MINIMIZE:I = 0x3

.field public static final NOTIFY_REASON_MINIMIZE:I = 0x1

.field public static final NOTIFY_REASON_UNMINIMIZE:I = 0x2

.field public static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT:I = 0x2

.field public static final NUM_OF_MULTI_INSTANCE_LIMIT_DEFAULT_ON_DESKTOP_MODE:I = 0x5

.field public static final PERMISSION_ADD_PAIR_APP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.permission.ADD_PAIR_APP_SHORTCUT"

.field public static final RESIZE_HANDLE_MOUSE_WIDTH_IN_DP:I = 0x6

.field public static final RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final SAMSUNG_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SNAP_TARGET_A:I = 0x1

.field public static final SNAP_TARGET_B:I = 0x2

.field public static final SNAP_TARGET_FULL:I = 0x3

.field public static final SNAP_TARGET_UNSET:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_16_9:I = 0x2

.field public static final SNAP_WINDOW_GUIDE_VIEW_RATIO_21_9:I = 0x3

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_DEFAULT:I = 0x0

.field public static final SNAP_WINDOW_GUIDE_VIEW_SIZE_MINIMAL:I = 0x1

.field public static final SNAP_WINDOW_INVISBLE_CALLER:Ljava/lang/String; = "finish"

.field public static final SNAP_WINDOW_VISBLE_CALLER_APP_REQUEST:Ljava/lang/String; = "appRequest"

.field public static final SNAP_WINDOW_VISBLE_CALLER_FULLAPP:Ljava/lang/String; = "fromFullApp"

.field public static final SNAP_WINDOW_VISBLE_CALLER_RECENT:Ljava/lang/String; = "fromRecent"

.field public static final SNAP_WINDOW_VISBLE_CALLER_SPLIT:Ljava/lang/String; = "fromSplit"

.field public static final SNAP_WINDOW_VISBLE_CALLER_UNSET:Ljava/lang/String; = ""

.field public static final TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final UNSNAP_REASON_DIVIDER_DISABLE_BUTTON:I = 0x4

.field public static final UNSNAP_REASON_EXPAND_A:I = 0x2

.field public static final UNSNAP_REASON_EXPAND_B:I = 0x3

.field public static final UNSNAP_REASON_SPLIT_RESIZE:I = 0x1

.field public static final UNSNAP_REASON_UNSET:I

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multiwindow/IMultiWindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiWindowManager;

    return-object v0
.end method

.method public static isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x18

    if-ge v2, v3, :cond_2

    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "com.sec.android.support.multiwindow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static warningException(Ljava/lang/Exception;)V
    .locals 3

    const-string/jumbo v0, "MultiWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "warningException() : caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addAppPairOnHomeScreen()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->addAppPairOnHomeScreen()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public addAppPairShortcut()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->addAppPairShortcut()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public animatingDockedStackForResizableHome(Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->animatingDockedStackForResizableHome(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public canAnimateExpandDockedStack()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->canAnimateExpandDockedStack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x1

    return v1
.end method

.method public ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->ensureDockedResize(Landroid/graphics/Rect;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public exitDockedMode()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->exitDockedMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public exitMultiWindow(Landroid/os/IBinder;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->exitMultiWindow(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getDexInfo(Landroid/os/IBinder;I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getDexInfo(Landroid/os/IBinder;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getFreeformTasks(I)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getFreeformTasks(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getMaxMultiInstanceCnt()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMaxMultiInstanceCnt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public getMultiWindowModeStates(I)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getMultiWindowModeStates(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public getRunningTasksInfo(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getRunningTasksInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v1, v1, 0x4

    :cond_3
    return v1

    :cond_4
    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    iget v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getTargetStackRect(I)Landroid/graphics/Rect;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->getTargetStackRect(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public isAllActivitiesStoppedInStack(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isAllActivitiesStoppedInStack(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isEnsureDockedMode()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isEnsureDockedMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isExpandedDockedStack()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isExpandedDockedStack()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isPairAppSupportLauncher()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isPairAppSupportLauncher()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isResizable(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isForceResizableFromMetadata(Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSnapTargetHideStatusbar()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapTargetHideStatusbar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public isSnapWindowRunning()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->isSnapWindowRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public maximizeTopTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->maximizeTopTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public minimizeAllFreeformTasks(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeAllFreeformTasks(IZ)Z

    move-result v0

    return v0
.end method

.method public minimizeAllFreeformTasks(IZ)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeAllFreeformTasks(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public minimizeFreeformTask(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeFreeformTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public minimizeSearchedTask(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeSearchedTask(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public minimizeTopTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->minimizeTopTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public moveDockedTasksToFullscreenStack(ZZ)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveDockedTasksToFullscreenStack(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public moveTopTaskToFreeformStack(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->moveTopTaskToFreeformStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->registerMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public removeFocusedTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFocusedTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public removeFreeformTasks(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeFreeformTasks(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public removeSearchedTask(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->removeSearchedTask(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method

.method public reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->reportMinimizeContainerBounds(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public resizeDockedStackWithDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 8

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->resizeDockedStackWithDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rotateFreeformTask(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->rotateFreeformTask(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMaxVisibleFreeformCount(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMaxVisibleFreeformCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMinimizeDockedStackDimLayer(ZIF)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMinimizeDockedStackDimLayer(ZIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->setSnapWindow(ZLandroid/graphics/Rect;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showSnapWindowGuideView(I)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->showSnapWindowGuideView(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startFreeform()I
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startFreeform()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    const/4 v1, -0x1

    return v1
.end method

.method public startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;Landroid/os/UserHandle;)V
    .locals 6

    const v5, 0x10204000

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v2, "MultiWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPairActivities() param has null : context="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " docked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " full="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p3, :cond_0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPairActivity(I)V

    if-eqz p5, :cond_3

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_3
    invoke-virtual {p2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setPairActivity(I)V

    if-eqz p6, :cond_4

    invoke-virtual {p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->setPairActivityUserId(I)V

    :cond_4
    invoke-virtual {p3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    if-eqz p4, :cond_5

    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setDockedStackSizeType(I)V

    :cond_5
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/content/Intent;

    aput-object p3, v2, v4

    aput-object p2, v2, v3

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startPairActivitiesFromRecents(Landroid/content/Context;[I[Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v2

    invoke-interface {v2, v0, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startPairActivitiesFromRecents(Ljava/lang/String;[I[Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startResizingFreeformTask(Landroid/os/IBinder;II)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->startResizingFreeformTask(Landroid/os/IBinder;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public swapDockedAndFullscreenStack()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->swapDockedAndFullscreenStack()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->unregisterMultiWindowServiceCallback(Lcom/samsung/android/multiwindow/IMultiWindowCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateTaskPositionInTaskBar(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowManager;->updateTaskPositionInTaskBar(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
