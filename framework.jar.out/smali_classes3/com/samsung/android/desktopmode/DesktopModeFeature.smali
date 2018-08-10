.class public Lcom/samsung/android/desktopmode/DesktopModeFeature;
.super Ljava/lang/Object;
.source "DesktopModeFeature.java"


# static fields
.field public static final BLOCK_CAMERA:Z = false

.field public static final CHECK_KCC:Z = false

.field public static final CLEAR_HOME_STACK:Z = true

.field public static final DEBUG:Z

.field public static final ENABLED:Z = false

.field public static final FEATURE_DOCK_FOTA:Z

.field public static final FEATURE_TOUCHPAD:Z = true

.field public static final RESTORE_TOP_TASK:Z = true

.field public static final SHOW_ONGOING_NOTIFICATION:Z = true

.field public static final SUPPORT_COVERS:Z = true

.field public static final SUPPORT_OFFICIAL_ADAPTERS:Z = false

.field public static final SUPPORT_SPEN:Z = false

.field public static final SUPPORT_UNOFFICIAL_ADAPTERS:Z = false

.field public static final SWITCH_TASK_STACKS:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DMS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    const-string/jumbo v0, "persist.service.dex.dock_fota"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->FEATURE_DOCK_FOTA:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/desktopmode/DesktopModeFeature;->isDesktopMode(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method

.method public static isDesktopMode(Landroid/content/res/Resources;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
