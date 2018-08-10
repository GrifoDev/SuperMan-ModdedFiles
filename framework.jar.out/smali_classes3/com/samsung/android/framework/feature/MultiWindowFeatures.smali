.class public Lcom/samsung/android/framework/feature/MultiWindowFeatures;
.super Ljava/lang/Object;
.source "MultiWindowFeatures.java"


# static fields
.field public static final DEX_SUPPORT:Z = false

.field public static DUAL_DISPLAY_FULLVIEW_MODE:Z = false

.field public static ENSURE_DOCKED_VIEW_SUPPORT:Z = false

.field private static final EXPERIMENT_ENABLED:Z = false

.field public static final FEATURE_ENSURE_DOCKED_VIEW:Ljava/lang/String; = "com.sec.feature.multiwindow.ensure_docked_view"

.field public static final FEATURE_FREEFORM_SUPPORT:Ljava/lang/String; = "android.software.freeform_window_management"

.field public static final FEATURE_SNAP_WINDOW:Ljava/lang/String; = "com.sec.feature.multiwindow.snap_view"

.field public static FREEFORM_DENSITY_CHANGE:Z = false

.field public static FREEFORM_FOCUSED_FRAME:Z = false

.field public static FREEFORM_GESTURE:Z = false

.field public static FREEFORM_GHOST_MODE:Z = false

.field public static FREEFORM_GUIDE_RESIZE:Z = false

.field public static FREEFORM_ON_GAMEMODE:Z = false

.field public static FREEFORM_SLIDE_MODE:Z = false

.field public static FREEFORM_SUPPORT:Z = false

.field public static final GAME_TUNER_SUPPORT:Z = true

.field public static final HIDE_STATUSBAR_IN_DOCKED:Z = true

.field public static MINIMIZED_DOCK_DYNAMIC_ENABLED:Z = false

.field public static final MULTIINSTANCE_SUPPORT:Z = true

.field public static MULTIWINDOW_DYNAMIC_ENABLED:Z = false

.field public static MULTIWINDOW_ENSURE_DIMENSIONS_BASED_ON_TOP:Z = false

.field public static final PAIR_APP_LAUNCHER_SUPPORT:Z = true

.field public static final SAFE_DEBUG:Z

.field public static final SAMSUNG_MULTIWINDOW_SUPPORT:Z = true

.field public static final SET_FREEFORM_GESTURE:Ljava/lang/String; = "db_popup_view_shortcut"

.field public static final SET_FREEFORM_ON_GAMEMODE:Ljava/lang/String; = "game_multiwindow_enaable"

.field public static final SET_MULTIWINDOW_DYNAMIC_ENABLED:Ljava/lang/String; = "multi_window_enabled"

.field public static SNAP_WINDOW_SUPPORT:Z = false

.field public static final TAG:Ljava/lang/String; = "MultiWindowFeatures"

.field public static final UPDATE_ENSURE_DOCKED_VIEW_SUPPORT:I = 0x10

.field public static final UPDATE_FREEFORM_GESTURE:I = 0x2000

.field public static final UPDATE_FREEFORM_GHOST_MODE:I = 0x10000000

.field public static final UPDATE_FREEFORM_ON_GAMEMODE:I = 0x4000

.field public static final UPDATE_FREEFORM_SLIDE_MODE:I = 0x20000000

.field public static final UPDATE_FREEFORM_SUPPORT:I = 0x1000

.field public static final UPDATE_MULTIWINDOW_DYNAMIC_ENABLED:I = 0x1

.field public static final UPDATE_SNAP_WINDOW_SUPPORT:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAFE_DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MINIMIZED_DOCK_DYNAMIC_ENABLED:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->DUAL_DISPLAY_FULLVIEW_MODE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_ENSURE_DIMENSIONS_BASED_ON_TOP:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    sput-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onExperimentMultiWindowSettingsChange(Landroid/os/Bundle;)I
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    sput-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    sput-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    const/4 v0, 0x0

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GHOST_MODE:Z

    if-eq v3, v1, :cond_0

    const/high16 v0, 0x10000000

    :cond_0
    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SLIDE_MODE:Z

    if-eq v3, v2, :cond_1

    const/high16 v3, 0x20000000

    or-int/2addr v0, v3

    :cond_1
    return v0
.end method

.method public static onMultiWindowFeaturesChange(Landroid/os/Bundle;)I
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-nez p0, :cond_0

    return v9

    :cond_0
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    const-string/jumbo v7, "multi_window_enabled"

    invoke-virtual {p0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v8

    :goto_0
    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    const-string/jumbo v7, "com.sec.feature.multiwindow.ensure_docked_view"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    const-string/jumbo v7, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    :goto_1
    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    const-string/jumbo v7, "android.software.freeform_window_management"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GUIDE_RESIZE:Z

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    const-string/jumbo v7, "db_popup_view_shortcut"

    const/4 v10, -0x1

    invoke-virtual {p0, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_9

    move v7, v8

    :goto_2
    sput-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    const-string/jumbo v7, "game_multiwindow_enaable"

    invoke-virtual {p0, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_a

    :goto_3
    sput-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    const/4 v0, 0x0

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eq v7, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->ENSURE_DOCKED_VIEW_SUPPORT:Z

    if-eq v7, v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eq v7, v6, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eq v7, v4, :cond_4

    or-int/lit16 v0, v0, 0x1000

    :cond_4
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eq v7, v3, :cond_5

    or-int/lit16 v0, v0, 0x2000

    :cond_5
    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    if-eq v7, v2, :cond_6

    or-int/lit16 v0, v0, 0x4000

    :cond_6
    return v0

    :cond_7
    move v7, v9

    goto :goto_0

    :cond_8
    move v7, v9

    goto :goto_1

    :cond_9
    move v7, v9

    goto :goto_2

    :cond_a
    move v8, v9

    goto :goto_3
.end method

.method public static updateDecorCaption(I)Z
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x30000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
