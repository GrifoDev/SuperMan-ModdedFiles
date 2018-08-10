.class public Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$CanvasPool;,
        Landroid/app/ApplicationPackageManager$IconScale;,
        Landroid/app/ApplicationPackageManager$LiveIconObject;,
        Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;,
        Landroid/app/ApplicationPackageManager$ResourceName;
    }
.end annotation


# static fields
.field private static final CONFIG_SMART_APPICON_SCALER:I

.field public static final CORP_BADGE_LABEL_RES_ID:[I

.field private static final DEBUG_FIXED_SCALE:Z = true

.field private static final DEBUG_ICONS:Z = false

.field private static final DEBUG_SPROTECT:Z = false

.field private static final DEFAULT_EPHEMERAL_COOKIE_MAX_SIZE_BYTES:I = 0x4000

.field private static final DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field private static final DISABLE_APPICON_CROP:Z

.field private static final DISABLE_APPICON_SOLUTION:I = 0x0

.field public static final ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

.field private static final METADATA_FIXED_ICON_SCALE:Ljava/lang/String; = "FixedIconScale"

.field private static final OPEN_THEME_APPICON_SCALE:F = 0.7f

.field private static final SUPPORT_FRAMING_ONLY:I = 0x1

.field private static final SUPPORT_ONEDOT_CONCEPT:I = 0x3

.field private static final SUPPORT_SQUIRCLE_CONCEPT:I = 0x2

.field private static final SUPPORT_THEME_APPICON_UNIFY:Z

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final judgePoint:[[I

.field private static final judgePointForChina:[[I

.field private static final judgePointForOneDot:[[I

.field private static mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool; = null

.field private static mLiveIconLoaders:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static mLiveIconPackageMatchers:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final movePoint:[[I

.field private static final progress:[[I

.field private static final sDefaultFlags:I = 0x400

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sProtectHide:Ljava/lang/String;

.field private static sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private mAppIconPackageName:Ljava/lang/String;

.field mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private mApplyIconUnifyFeature:I

.field volatile mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDelegates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mIconHelper:Landroid/content/pm/PackageIconHelper;

.field private mInstaller:Landroid/content/pm/PackageInstaller;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOpenThemeAppIconMask:Z

.field private mOpenThemeAppIconRange:I

.field private mOpenThemeAppIconScale:F

.field private final mPM:Landroid/content/pm/IPackageManager;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintForCrop:Landroid/graphics/Paint;

.field private final mPermissionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsControllerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPkgNameForBadgeIcon:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingStatusChecked:Z

.field private mSettingStatusForIconTray:Z

.field private mUserManager:Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/16 v5, 0x60

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Framework_ConfigAppIconStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ApplicationPackageManager;->SUPPORT_THEME_APPICON_UNIFY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_DisableAppIconCrop"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ApplicationPackageManager;->DISABLE_APPICON_CROP:Z

    const-string/jumbo v0, "3"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.samsung.tungsten_silvery.appicon"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.samsung.tungsten_gold.appicon"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.tungsten_pink.appicon"

    aput-object v1, v0, v7

    const-string/jumbo v1, "com.samsung.tungsten_black.appicon"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.colorful_indie.appicon"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    new-instance v0, Landroid/app/ApplicationPackageManager$CanvasPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$CanvasPool;-><init>(Landroid/app/ApplicationPackageManager$CanvasPool;)V

    sput-object v0, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    const v0, 0x10404e9

    const v1, 0x10404ea

    const v2, 0x10404eb

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/app/ApplicationPackageManager;->CORP_BADGE_LABEL_RES_ID:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    filled-new-array {v3, v4}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v4, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x1

    filled-new-array {v1, v4}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, -0x1

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->progress:[[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    filled-new-array {v3, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, -0x1

    filled-new-array {v1, v3}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x1

    const/4 v2, -0x1

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, -0x1

    filled-new-array {v3, v1}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0x1f

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xa0

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xba

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xa0

    const/16 v2, 0xae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xba

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x1f

    const/16 v2, 0xae

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v6, v5}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->judgePoint:[[I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0x15

    const/16 v2, 0x1c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v7}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xab

    const/16 v2, 0x1c

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xbc

    const/16 v2, 0x5e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xab

    const/16 v2, 0xa4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xbb

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x15

    const/16 v2, 0xa4

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x4

    const/16 v2, 0x5e

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->judgePointForOneDot:[[I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    const/16 v1, 0x11

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0xaf

    const/16 v2, 0x11

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/16 v1, 0xbb

    filled-new-array {v1, v5}, [I

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xaf

    const/16 v2, 0xaf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xbb

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x11

    const/16 v2, 0xaf

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v6, v5}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/ApplicationPackageManager;->judgePointForChina:[[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    return-void
.end method

.method protected constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    iput-object v2, p0, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    iput v3, p0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    iput-object v2, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    iput-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    iput-boolean v1, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    iput-object v2, p0, Landroid/app/ApplicationPackageManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    invoke-static {}, Landroid/content/pm/PackageIconHelper;->getInstance()Landroid/content/pm/PackageIconHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private checkAppIconThemePackage()V
    .locals 6

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->checkSettingsForIconTray()Z

    move-result v2

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "current_sec_appicon_theme_package"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v3, 0x0

    const-string/jumbo v4, "ApplicationPackageManager"

    const-string/jumbo v5, "set theme to null for dex mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4

    :cond_3
    iget v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    :cond_4
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    iput-object v3, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->registerAppIconInfo()V

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-nez v4, :cond_5

    iget-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    if-eq v4, v2, :cond_5

    :cond_7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusChecked:Z

    iput-boolean v2, p0, Landroid/app/ApplicationPackageManager;->mSettingStatusForIconTray:Z

    goto :goto_1
.end method

.method private checkSettingsForIconTray()Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tap_to_icon"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "ApplicationPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSettingsForIconTray value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static configurationChanged()V
    .locals 2

    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;
    .locals 16

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    if-nez v5, :cond_1

    move-object/from16 v5, p1

    :cond_1
    instance-of v13, v5, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v13, :cond_4

    move-object v9, v5

    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_2
    :goto_0
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-lez v12, :cond_3

    if-gtz v11, :cond_5

    :cond_3
    move/from16 v12, p3

    move/from16 v11, p4

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v5, v13, v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    sub-int v6, p3, v12

    sub-int v7, p4, v11

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v13, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    invoke-virtual {v13}, Landroid/app/ApplicationPackageManager$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v13, v6

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    int-to-float v14, v7

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    sget-object v13, Landroid/app/ApplicationPackageManager;->mCanvasPool:Landroid/app/ApplicationPackageManager$CanvasPool;

    invoke-virtual {v13, v4}, Landroid/app/ApplicationPackageManager$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    return-object v2

    :cond_4
    instance-of v13, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_2

    move-object v3, v5

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v12, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move/from16 v0, p3

    int-to-float v13, v0

    int-to-float v14, v12

    div-float/2addr v13, v14

    move/from16 v0, p4

    int-to-float v14, v0

    int-to-float v15, v11

    div-float/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v10

    int-to-float v13, v12

    mul-float/2addr v13, v10

    float-to-int v12, v13

    int-to-float v13, v11

    mul-float/2addr v13, v10

    float-to-int v11, v13

    goto :goto_1
.end method

.method private getAppIconAlphaRelativeScale(Landroid/content/pm/PackageItemInfo;Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;
    .locals 4

    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getIconScaleFromMetaData(Landroid/content/pm/PackageItemInfo;)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ApplicationPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIconScaleFromMetaData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v1

    return-object v1
.end method

.method private getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;
    .locals 2

    iget v0, p0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v0

    return-object v0
.end method

.method private getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;
    .locals 26

    const/4 v13, 0x0

    const/4 v10, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v21, v2, 0x2

    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x1

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v22, v4

    mul-int v2, p2, p3

    new-array v3, v2, [I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v2

    if-lez v2, :cond_0

    const/16 v23, 0x66

    :goto_0
    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    mul-int v2, p2, v18

    aget-object v4, v11, v18

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v13, v13, 0x1

    :cond_2
    move/from16 v0, v21

    if-le v0, v13, :cond_9

    const/4 v2, -0x1

    if-ne v10, v2, :cond_9

    const/16 v18, 0x0

    :goto_2
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_6

    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v24, v2, v4

    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v25, v2, v4

    const/16 v16, 0x0

    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_3

    add-int/lit8 v16, v18, 0x1

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-nez v12, :cond_5

    aget-object v2, v22, v16

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v24

    if-ne v0, v2, :cond_4

    aget-object v2, v22, v16

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v25

    if-ne v0, v2, :cond_4

    const/4 v12, 0x1

    :cond_4
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    move/from16 v0, v23

    if-le v2, v0, :cond_7

    move v10, v13

    :cond_5
    const/4 v2, -0x1

    if-eq v10, v2, :cond_8

    :cond_6
    const/4 v2, -0x1

    if-ne v10, v2, :cond_1

    const/16 v18, 0x0

    :goto_4
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_7
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int v24, v24, v2

    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int v25, v25, v2

    goto :goto_3

    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, -0x1

    if-ne v10, v2, :cond_a

    const/4 v10, 0x0

    :cond_a
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v2

    if-lez v2, :cond_e

    sget-object v19, Landroid/app/ApplicationPackageManager;->judgePoint:[[I

    sget v2, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_b

    sget-object v19, Landroid/app/ApplicationPackageManager;->judgePointForOneDot:[[I

    :cond_b
    const/4 v2, 0x1

    aget-object v2, v22, v2

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v14, v2, 0x1

    const/4 v2, 0x3

    aget-object v2, v22, v2

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v15, v2, 0x1

    const/16 v20, 0x0

    const/16 v18, 0x0

    :goto_5
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ge v0, v2, :cond_d

    aget-object v2, v19, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-int/2addr v2, v14

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v24, v2, v4

    aget-object v2, v19, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-int/2addr v2, v15

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v25, v2, v4

    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    const/16 v4, 0x1a

    if-le v2, v4, :cond_c

    add-int/lit8 v20, v20, 0x1

    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    :cond_d
    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_12

    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_10

    const p4, 0x3f6147ae    # 0.88f

    :cond_e
    :goto_6
    if-eqz v17, :cond_f

    const/high16 v2, 0x43480000    # 200.0f

    add-float p4, p4, v2

    :cond_f
    const-string/jumbo v2, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scaled rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/ApplicationPackageManager$IconScale;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v2, v0, v10, v1}, Landroid/app/ApplicationPackageManager$IconScale;-><init>(Landroid/app/ApplicationPackageManager;IF)V

    return-object v2

    :cond_10
    sget-boolean v2, Landroid/app/ApplicationPackageManager;->DISABLE_APPICON_CROP:Z

    if-nez v2, :cond_11

    sget v2, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x2

    if-lt v2, v4, :cond_11

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_11

    const/high16 p4, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/app/ApplicationPackageManager;->hasKeaBadge(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const p4, 0x3f2e147b    # 0.68f

    const/16 v17, 0x0

    goto :goto_6

    :cond_11
    const p4, 0x3f2e147b    # 0.68f

    goto/16 :goto_6

    :cond_12
    const v2, 0x3f8ccccd    # 1.1f

    cmpl-float v2, p4, v2

    if-nez v2, :cond_13

    const p4, 0x3f70a3d7    # 0.94f

    goto/16 :goto_6

    :cond_13
    const p4, 0x3f3851ec    # 0.72f

    goto/16 :goto_6
.end method

.method private getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;
    .locals 26

    const/4 v13, 0x0

    const/4 v10, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v21, v2, 0x2

    const/4 v2, 0x4

    new-array v0, v2, [[I

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    filled-new-array {v2, v4}, [I

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x1

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x2

    aput-object v2, v22, v4

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v2, v5

    add-int/lit8 v4, p3, -0x1

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v4, 0x3

    aput-object v2, v22, v4

    mul-int v2, p2, p3

    new-array v3, v2, [I

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput p3, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    const/16 v23, 0x1a

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    mul-int v2, p2, v18

    aget-object v4, v11, v18

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-static {v3, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    :cond_1
    move/from16 v0, v21

    if-le v0, v13, :cond_8

    const/4 v2, -0x1

    if-ne v10, v2, :cond_8

    const/16 v18, 0x0

    :goto_1
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v24, v2, v4

    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v25, v2, v4

    const/16 v16, 0x0

    const/4 v2, 0x3

    move/from16 v0, v18

    if-eq v0, v2, :cond_2

    add-int/lit8 v16, v18, 0x1

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-nez v12, :cond_4

    aget-object v2, v22, v16

    const/4 v4, 0x0

    aget v2, v2, v4

    move/from16 v0, v24

    if-ne v0, v2, :cond_3

    aget-object v2, v22, v16

    const/4 v4, 0x1

    aget v2, v2, v4

    move/from16 v0, v25

    if-ne v0, v2, :cond_3

    const/4 v12, 0x1

    :cond_3
    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    const/16 v4, 0x1a

    if-le v2, v4, :cond_6

    move v10, v13

    :cond_4
    const/4 v2, -0x1

    if-eq v10, v2, :cond_7

    :cond_5
    const/16 v18, 0x0

    :goto_3
    const/4 v2, 0x4

    move/from16 v0, v18

    if-ge v0, v2, :cond_0

    aget-object v2, v22, v18

    const/4 v4, 0x0

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    aget-object v2, v22, v18

    const/4 v4, 0x1

    aget v5, v2, v4

    sget-object v6, Landroid/app/ApplicationPackageManager;->movePoint:[[I

    aget-object v6, v6, v18

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v2, v4

    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_6
    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int v24, v24, v2

    sget-object v2, Landroid/app/ApplicationPackageManager;->progress:[[I

    aget-object v2, v2, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int v25, v25, v2

    goto :goto_2

    :cond_7
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, -0x1

    if-ne v10, v2, :cond_9

    const/4 v10, 0x0

    :cond_9
    sget-object v19, Landroid/app/ApplicationPackageManager;->judgePointForChina:[[I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    if-eqz v2, :cond_a

    sget-object v19, Landroid/app/ApplicationPackageManager;->judgePointForOneDot:[[I

    :cond_a
    const/4 v2, 0x1

    aget-object v2, v22, v2

    const/4 v4, 0x0

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v14, v2, 0x1

    const/4 v2, 0x3

    aget-object v2, v22, v2

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v2, v4

    add-int/lit8 v15, v2, 0x1

    const/16 v20, 0x0

    const/16 v18, 0x0

    :goto_4
    const/16 v2, 0x8

    move/from16 v0, v18

    if-ge v0, v2, :cond_c

    aget-object v2, v19, v18

    const/4 v4, 0x0

    aget v2, v2, v4

    mul-int/2addr v2, v14

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int v24, v2, v4

    aget-object v2, v19, v18

    const/4 v4, 0x1

    aget v2, v2, v4

    mul-int/2addr v2, v15

    div-int/lit16 v2, v2, 0xc0

    const/4 v4, 0x0

    aget-object v4, v22, v4

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int v25, v2, v4

    aget-object v2, v11, v25

    aget v2, v2, v24

    ushr-int/lit8 v2, v2, 0x18

    const/16 v4, 0x1a

    if-le v2, v4, :cond_b

    add-int/lit8 v20, v20, 0x1

    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    :cond_c
    const/16 v2, 0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p4, v2

    if-gtz v2, :cond_f

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_f

    const/high16 p4, 0x3f800000    # 1.0f

    const/16 v17, 0x1

    :cond_d
    :goto_5
    if-eqz v17, :cond_e

    const/high16 v2, 0x43480000    # 200.0f

    add-float p4, p4, v2

    :cond_e
    const-string/jumbo v2, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IconUnify : scaled rate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/ApplicationPackageManager$IconScale;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v2, v0, v10, v1}, Landroid/app/ApplicationPackageManager$IconScale;-><init>(Landroid/app/ApplicationPackageManager;IF)V

    return-object v2

    :cond_f
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p4, v2

    if-lez v2, :cond_d

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_5
.end method

.method private getBadgeResIdForUser(I)I
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x108041e

    return v1

    :cond_1
    const v1, 0x1080417

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1080419

    return v1

    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x108041c

    return v1

    :cond_4
    const v1, 0x108041a

    return v1

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x10804f2

    return v1

    :cond_6
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x10803ef

    return v1

    :cond_7
    const v1, 0x10803ce

    return v1

    :cond_8
    return v2
.end method

.method private getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-eqz p4, :cond_2

    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    :goto_0
    if-eqz v4, :cond_3

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v4, :cond_0

    invoke-virtual {p1, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    if-eqz p3, :cond_6

    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_1

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-gez v7, :cond_4

    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Badge location "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " not in badged drawable bounds "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v10, v10, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v7, v1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gt v7, v0, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {p2, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    iget v7, p3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    if-nez v4, :cond_7

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_5

    move-object v3, p1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    :cond_5
    return-object v6

    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    return-object p1
.end method

.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v3

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    return-object v4

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private getCustomBadgeForCustomContainer(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;I)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/UserInfo;",
            "Landroid/os/UserHandle;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    const-string/jumbo v6, "custom-badge-icon"

    invoke-static {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v8}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    array-length v9, v1

    invoke-static {v1, v10, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108041d

    invoke-virtual {v7, v8, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080418

    invoke-virtual {v7, v8, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x108041b

    invoke-virtual {v7, v8, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v0, "com.samsung.knox.securefolder"

    :try_start_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v5, "ic_sf_badge_bottom"

    const-string/jumbo v6, "drawable"

    invoke-virtual {v3, v5, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, p3, v7}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10804f3

    invoke-virtual {v7, v8, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_4
    new-instance v5, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-gtz p2, :cond_0

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget p2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFixedIconScaleMetaData(Landroid/os/Bundle;)Ljava/lang/Float;
    .locals 4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "FixedIconScale"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const-string/jumbo v1, "ApplicationPackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFixedIconScaleMetaData float: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v0
.end method

.method private getHiddenList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "ssecure_hidden_apps_packages"

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "app_lock_enabled"

    invoke-static {v7, v8, v6, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0, v6}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    if-eqz v3, :cond_0

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v7, v2

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getIconScaleFromMetaData(Landroid/content/pm/PackageItemInfo;)Landroid/app/ApplicationPackageManager$IconScale;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "FixedIconScale"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v2, "ApplicationPackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fixed icon scale from metadata scale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/ApplicationPackageManager$IconScale;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v2, p0, v0, v3}, Landroid/app/ApplicationPackageManager$IconScale;-><init>(Landroid/app/ApplicationPackageManager;IF)V

    return-object v2

    :cond_0
    return-object v4
.end method

.method private getLiveIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 29

    const/16 v22, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x80

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Doesn\'t have metadata for LiveIcon : ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]  just show default Icon."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return-object v23

    :cond_0
    const-string/jumbo v23, "LiveIconSupport"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_4

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ".LiveIconLoader"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v24, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    monitor-enter v24

    :try_start_1
    sget-object v25, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    monitor-enter v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v22, :cond_2

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "we has "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " class. reuse it "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/reflect/Method;

    move-object/from16 v19, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v24

    if-eqz v19, :cond_4

    :try_start_4
    new-instance v17, Landroid/app/ApplicationPackageManager$LiveIconObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager$LiveIconObject;-><init>(Landroid/app/ApplicationPackageManager;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager$LiveIconObject;->setLiveIcon(Ljava/lang/Object;)V

    invoke-virtual/range {v17 .. v17}, Landroid/app/ApplicationPackageManager$LiveIconObject;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$LiveIconObject;

    invoke-virtual {v6}, Landroid/app/ApplicationPackageManager$LiveIconObject;->getLiveIcon()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    check-cast v21, Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    return-object v21

    :catch_0
    move-exception v7

    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "get application info error in getLiveIcon : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return-object v23

    :cond_2
    if-eqz v22, :cond_1

    :try_start_5
    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_1

    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "we don\'t have "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " package path. load it"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v23, 0x1

    :try_start_6
    move/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v23, "getLiveIcon"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const-class v27, Landroid/content/Context;

    const/16 v28, 0x0

    aput-object v27, v26, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v19

    :try_start_7
    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v16

    goto/16 :goto_0

    :catch_1
    move-exception v12

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v26, "!@call method fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    monitor-exit v25
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/16 v23, 0x0

    monitor-exit v24

    return-object v23

    :catch_2
    move-exception v8

    :try_start_9
    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "!@can\'t found class"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    monitor-exit v25
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v23, 0x0

    monitor-exit v24

    return-object v23

    :cond_3
    :try_start_b
    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "we don\'t have "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " package name. load it"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/16 v23, 0x1

    :try_start_c
    move/from16 v0, v23

    move-object/from16 v1, v16

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v23, "getLiveIcon"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const-class v27, Landroid/content/Context;

    const/16 v28, 0x0

    aput-object v27, v26, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v19

    :try_start_d
    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconPackageMatchers:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v23, Landroid/app/ApplicationPackageManager;->mLiveIconLoaders:Landroid/util/ArrayMap;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v16

    goto/16 :goto_0

    :catch_3
    move-exception v12

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v26, "!@call method fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v25
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v23, 0x0

    monitor-exit v24

    return-object v23

    :catch_4
    move-exception v8

    :try_start_f
    const-string/jumbo v23, "ApplicationPackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "!@can\'t found class"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    monitor-exit v25
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    const/16 v23, 0x0

    monitor-exit v24

    return-object v23

    :catchall_0
    move-exception v23

    :goto_1
    :try_start_11
    monitor-exit v25

    throw v23
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :catchall_1
    move-exception v23

    :goto_2
    monitor-exit v24

    throw v23

    :catch_5
    move-exception v10

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v24, "!@clone fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v23, 0x0

    return-object v23

    :catch_6
    move-exception v9

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v24, "!@clone fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/16 v23, 0x0

    return-object v23

    :catch_7
    move-exception v11

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v24, "!@call method fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v11}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    const/16 v23, 0x0

    return-object v23

    :catch_8
    move-exception v13

    const-string/jumbo v23, "ApplicationPackageManager"

    const-string/jumbo v24, "!@call method fail getLiveIcon"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    const/16 v23, 0x0

    return-object v23

    :cond_4
    const/16 v23, 0x0

    return-object v23

    :catchall_2
    move-exception v23

    move-object/from16 v15, v16

    goto :goto_2

    :catchall_3
    move-exception v23

    move-object/from16 v15, v16

    goto :goto_1
.end method

.method private getLockedList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "applock_locked_apps_packages"

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "app_lock_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    if-eqz v4, :cond_0

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v3, v6

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method private getMetaDataItemInfoForFixedScaleIconTray(Ljava/lang/String;)Landroid/content/pm/PackageItemInfo;
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-object v8

    :cond_0
    const/4 v5, 0x1

    :try_start_0
    new-array v3, v5, [Ljava/lang/String;

    const-string/jumbo v5, "FixedIconScale"

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v6}, Landroid/app/ContextImpl;->getUserId()I

    move-result v6

    invoke-interface {v5, p1, v3, v6}, Landroid/content/pm/IPackageManager;->getSelectedMetadataForIconTray(Ljava/lang/String;[Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v5, "FixedIconScale"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    new-instance v1, Landroid/content/pm/PackageItemInfo;

    invoke-direct {v1}, Landroid/content/pm/PackageItemInfo;-><init>()V

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMetaDataItemInfoForFixedScaleIconTray: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get application info error FixedIconScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v8
.end method

.method private getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v5, v5, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v5}, Landroid/app/ActivityThread;->getThemeAppIconMap()Ljava/util/HashMap;

    move-result-object v1

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string/jumbo v5, "3rd_party_icon"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    :try_start_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v5, "drawable"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :cond_1
    if-eqz p3, :cond_2

    const-string/jumbo v5, "mask_for_crop"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    instance-of v5, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-object v7
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 39

    const/4 v10, 0x0

    const-string/jumbo v29, "NULL"

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v29, v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    if-gtz v3, :cond_1

    const-string/jumbo v3, "ApplicationPackageManager"

    const-string/jumbo v4, "return the original icon because there is no App-Icon Solution feature"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_1
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "return adaptive icon for "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_3

    return-object v10

    :cond_3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_5

    return-object v10

    :cond_4
    return-object p2

    :cond_5
    const/4 v14, -0x1

    const/4 v12, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_b

    :cond_6
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080396

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_0
    iget v14, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v12, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :cond_7
    :goto_1
    const/16 v26, 0x0

    if-gez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_8

    const/16 v26, 0x1

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080396

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    :cond_8
    if-lez v14, :cond_17

    if-lez v12, :cond_17

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-lez v6, :cond_9

    if-gtz v7, :cond_e

    :cond_9
    return-object p2

    :cond_a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080394

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0

    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_7

    instance-of v3, v10, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_c

    move-object v3, v10

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_3
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    goto :goto_1

    :cond_c
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    const/16 v38, 0x0

    move/from16 v0, v38

    invoke-virtual {v10, v8, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080394

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_2

    :cond_e
    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", forDefault="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", density="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    sget-boolean v3, Landroid/app/ApplicationPackageManager;->SUPPORT_THEME_APPICON_UNIFY:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    const/16 v17, 0x0

    :goto_4
    sget-object v3, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_f

    sget-object v3, Landroid/app/ApplicationPackageManager;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    aget-object v3, v3, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    :cond_f
    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mApplyIconUnifyFeature = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v8, v0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "--mAppIconPackageName = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_19

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_5
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/16 v13, 0xd8

    const/16 v3, 0xd8

    move/from16 v0, v25

    if-ge v3, v0, :cond_12

    move/from16 v0, v25

    int-to-float v3, v0

    const/high16 v4, 0x43580000    # 216.0f

    div-float v33, v4, v3

    int-to-float v3, v6

    mul-float v3, v3, v33

    float-to-int v6, v3

    int-to-float v3, v7

    mul-float v3, v3, v33

    float-to-int v7, v3

    const/4 v3, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v25

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v12, 0xd8

    const/16 v14, 0xd8

    :cond_11
    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reset dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_13

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_13
    const/4 v9, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->checkSettingsForIconTray()Z

    move-result v34

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_20

    const/16 v18, 0x0

    if-eqz v34, :cond_1e

    const v8, 0x3f99999a    # 1.2f

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/content/pm/PackageItemInfo;Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v18

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "iconScale: getScale(): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getScale()F

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " getAlpha(): "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getAlpha()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getScale()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1b

    const/16 v21, 0x1

    const/16 v22, 0x0

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080397

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getAlpha()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v36, v25, v3

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move/from16 v0, v36

    if-eq v0, v3, :cond_14

    const/4 v3, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v36

    move/from16 v2, v36

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v22

    :cond_14
    move/from16 v12, v36

    move/from16 v14, v36

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v36

    move/from16 v1, v36

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-crop, bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    int-to-float v8, v12

    const v38, 0x3ca3d70a    # 0.02f

    mul-float v8, v8, v38

    sub-float/2addr v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_8
    if-eqz v19, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2c

    const/4 v3, 0x1

    invoke-static {v5, v6, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v3, :cond_15

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_15
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    if-nez v3, :cond_16

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080399

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v28

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-static {v0, v14, v12, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v28

    neg-int v3, v14

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-int v4, v12

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_16
    :goto_9
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->restore()V

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-direct {v0, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_17

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_2f

    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_17
    :goto_a
    sget-object v3, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v4, "sprotect"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz p1, :cond_30

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->isThemeActive()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    :cond_19
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v8, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080395

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v22

    goto/16 :goto_6

    :cond_1b
    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getAlpha()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v25, v3

    int-to-float v3, v3

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v36, v0

    rem-int/lit8 v3, v36, 0x2

    if-eqz v3, :cond_1c

    add-int/lit8 v36, v36, 0x1

    :cond_1c
    move/from16 v12, v36

    move/from16 v14, v36

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080396

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_b
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v3, 0x1

    invoke-static {v11, v14, v12, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-contain, bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_1d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080394

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_b

    :cond_1e
    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1f

    const v3, 0x1080396

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v3, v1}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :goto_c
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    const v3, 0x3f8ccccd    # 1.1f

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v3}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v18

    int-to-float v3, v14

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getAlpha()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v25, v4

    int-to-float v4, v4

    div-float v30, v3, v4

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v16

    move/from16 v1, v30

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-scale, bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1f
    const v3, 0x1080394

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v3, v1}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto/16 :goto_c

    :cond_20
    const/16 v20, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    int-to-float v3, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    mul-float/2addr v3, v4

    int-to-float v4, v6

    div-float v31, v3, v4

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    mul-float/2addr v3, v4

    int-to-float v4, v7

    div-float v32, v3, v4

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-theme1, bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", relScale="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v12, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_21

    xor-int/lit8 v3, v26, 0x1

    if-eqz v3, :cond_21

    if-eqz v11, :cond_29

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_21
    :goto_e
    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    if-eqz v3, :cond_2b

    :cond_22
    if-eqz v20, :cond_2a

    int-to-float v3, v6

    mul-float v3, v3, v31

    float-to-int v6, v3

    int-to-float v3, v7

    mul-float v3, v3, v32

    float-to-int v7, v3

    const/16 v19, 0x1

    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_8

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    if-eqz v26, :cond_25

    :cond_24
    const v37, 0x3f8ccccd    # 1.1f

    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v5, v6, v7, v1}, Landroid/app/ApplicationPackageManager;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/ApplicationPackageManager$IconScale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getScale()F

    move-result v31

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v31, v3

    if-lez v3, :cond_27

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    if-eqz v3, :cond_26

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    if-eqz v24, :cond_26

    move-object/from16 v0, v24

    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_28

    check-cast v24, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    :goto_f
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    :cond_26
    const/high16 v3, 0x43480000    # 200.0f

    sub-float v31, v31, v3

    :cond_27
    int-to-float v3, v14

    mul-float v3, v3, v31

    invoke-virtual/range {v18 .. v18}, Landroid/app/ApplicationPackageManager$IconScale;->getAlpha()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v25, v4

    int-to-float v4, v4

    div-float v31, v3, v4

    move/from16 v32, v31

    const-string/jumbo v3, "ApplicationPackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "load="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-theme2, bg="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", dr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "-"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", tarScale="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", relScale="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ", mask="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_28
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v8, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v8, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_f

    :cond_29
    const-string/jumbo v3, "ApplicationPackageManager"

    const-string/jumbo v4, "bgBitmap is null, so can\'t draw bg."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_2a
    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_8

    :cond_2b
    int-to-float v3, v14

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    int-to-float v4, v12

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, v16

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_8

    :cond_2c
    if-eqz v21, :cond_2e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v3, :cond_2d

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setDither(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2d
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaintForCrop:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v3, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    const/16 v35, 0x0

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v15, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080398

    invoke-static {v3, v4, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v35

    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-static {v0, v14, v12, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v35

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_2e
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/ApplicationPackageManager;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v3, v4, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_2f
    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v8

    invoke-direct {v3, v4, v8}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    :cond_30
    return-object p2
.end method

.method private getUserBadgeColor(Landroid/os/UserHandle;)I
    .locals 2

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Landroid/util/IconDrawableFactory;->getUserBadgeColor(Landroid/os/UserManager;I)I

    move-result v0

    return v0
.end method

.method private getUserIfProfile(I)Landroid/content/pm/UserInfo;
    .locals 5

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 9

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz p1, :cond_7

    array-length v6, p1

    if-lez v6, :cond_7

    const/4 v2, 0x0

    array-length v6, p1

    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v4, p1, v5

    sget-object v7, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_1
    if-ltz v0, :cond_2

    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    :goto_2
    if-ltz v0, :cond_4

    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    monitor-exit v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_5
    if-nez v2, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_3
.end method

.method private hasKeaBadge(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "sys.tfk.enabled"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v5

    :cond_2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://com.samsung.android.bbc.bbcagent/hasBadge?pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "ApplicationPackageManager"

    const-string/jumbo v4, "failed to check keaBadge"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V
    .locals 7

    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Only file:// URIs are supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/app/PackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->installPackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private installExistingPackageAsUser(Ljava/lang/String;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p3, v3, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v1

    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    return v1
.end method

.method private isLiveIconPackage(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v6, "com.sec.android.app.clockpackage"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Clock_ConfigReplacePackage"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v4}, Landroid/app/ApplicationPackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :cond_0
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v4, "com.android.calendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "com.samsung.android.calendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "com.samsung.android.game.gamehome"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "com.samsung.android.opencalendar"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "com.android.deskclock"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    return v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "ApplicationPackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLiveIconPackage NameNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isManagedProfile(I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method private isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Landroid/content/pm/IPackageManager;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->isForceAllowOnExternal(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v4, "private"

    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->isAllow3rdPartyOnInternal(Landroid/content/Context;)Z

    move-result v2

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    if-nez v1, :cond_4

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v4, v2, :cond_3

    iget v4, p2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    :cond_3
    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "it is for only internal only."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_4
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "this volume is not mounted writable"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v3, "it is PrimaryPhysical, but Moving to ASEC is only for internal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v2

    return v2

    :cond_6
    :try_start_0
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p4, v4}, Landroid/content/pm/IPackageManager;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v4, "isPackageDeviceAdminOnAnyUser true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_7
    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-eq v4, v2, :cond_8

    invoke-virtual {p3}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    :goto_0
    return v2

    :cond_9
    move v2, v3

    goto :goto_0
.end method

.method private static isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const-string/jumbo v2, "private"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isThemeActive()Z
    .locals 5

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.upsmtheme"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v0, v3, 0x1

    :goto_0
    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1

    xor-int/lit8 v2, v1, 0x1

    :goto_1
    return v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 6

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ro.dalvik.vm.isa."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0

    :cond_0
    move-object v3, v2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3

    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerAppIconInfo()V
    .locals 10

    const/4 v9, 0x2

    const v8, 0x3f333333    # 0.7f

    const/4 v7, 0x0

    const/4 v4, -0x1

    iput v4, p0, Landroid/app/ApplicationPackageManager;->mApplyIconUnifyFeature:I

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_3

    :try_start_0
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v4, "icon_bg_range"

    const-string/jumbo v5, "integer"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    :goto_0
    const-string/jumbo v4, "icon_scale_size"

    const-string/jumbo v5, "integer"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v4, v1

    const v5, 0x3c23d70a    # 0.01f

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    const-string/jumbo v4, "mask_from_theme"

    const-string/jumbo v5, "bool"

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-void

    :cond_0
    const/4 v4, 0x2

    :try_start_2
    iput v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput v9, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    iput v8, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    iput-boolean v7, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_1
    const v4, 0x3f333333    # 0.7f

    :try_start_3
    iput v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :try_start_4
    iput-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    const-string/jumbo v4, "ApplicationPackageManager"

    const-string/jumbo v5, "This theme doesn\'t have any mask"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :cond_3
    iput v9, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    iput v8, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconScale:F

    iput-boolean v7, p0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconMask:Z

    goto :goto_2
.end method

.method private replacedIconFromAppPolicy(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    if-nez v2, :cond_1

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    iput-object v2, p0, Landroid/app/ApplicationPackageManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    :cond_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    invoke-virtual {v2, p1, p2}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v3, "Exception occurred in EnterpriseDeviceManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private updateItemMetaDataForFixedIconScale(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 9

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, v5}, Landroid/app/ApplicationPackageManager;->getFixedIconScaleMetaData(Landroid/os/Bundle;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_3
    if-nez v3, :cond_4

    return-void

    :cond_4
    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateItemMetaDataForFixedIconScale: package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v5, "FixedIconScale"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v6}, Landroid/app/ContextImpl;->getUserId()I

    move-result v6

    invoke-interface {v5, v3, v2, v6}, Landroid/content/pm/IPackageManager;->getSelectedMetadataForIconTray(Ljava/lang/String;[Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v5, "FixedIconScale"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :cond_5
    iget-object v5, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "FixedIconScale"

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "get application info error FixedIconScale: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "addPackageToPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public addPreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->applyRuntimePermissions(Ljava/lang/String;Ljava/util/List;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public applyRuntimePermissionsForAllApplications(II)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->applyRuntimePermissionsForAllApplications(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public canRequestPackageInstalls()Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->canRequestPackageInstalls(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public cancelEMPHandlerSendPendingBroadcast()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->cancelEMPHandlerSendPendingBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkSignatures(II)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearCrossProfileIntentFilters(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public clearInstantAppCookie()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->updateInstantAppCookie([B)V

    return-void
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v2, -0x1

    move-object v1, p1

    move-object v3, p2

    move v4, p4

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public extendVerificationTimeout2(IIJ)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout2(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public flushPackageRestrictionsAsUser(I)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->flushPackageRestrictionsAsUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getChangedPackages(I)Landroid/content/pm/ChangedPackages;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 18

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v0, p2

    if-ne v0, v15, :cond_0

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v2

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v15}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v9

    const/4 v5, 0x0

    if-eqz v9, :cond_0

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    const/4 v15, 0x0

    iput v15, v14, Landroid/util/TypedValue;->density:I

    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v15}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v15, v12, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v15}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v15, v14, v10, v0, v12}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const-string/jumbo v15, "ApplicationPackageManager"

    const-string/jumbo v16, "EDM:ApplicationIcon got from EDM database "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v8

    const-string/jumbo v15, "ApplicationPackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "EDM: Get Icon EX: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v11, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v11, v0, v1}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v15, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v16, "sprotect"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-nez v15, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->isThemeActive()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    return-object v15

    :cond_1
    return-object v3

    :cond_2
    if-nez p3, :cond_3

    const/16 v15, 0x400

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    :cond_3
    if-eqz p2, :cond_6

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p3

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v15, v13, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v15, v13, Landroid/content/res/Resources;->mAppIconResId:I

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iput v15, v13, Landroid/content/res/Resources;->mUserId:I

    const/4 v15, 0x0

    move/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    sget-object v15, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v16, "sprotect"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    iget v15, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    if-nez v15, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->isThemeActive()Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v15

    return-object v15

    :catch_1
    move-exception v6

    const/4 v15, 0x0

    return-object v15

    :cond_5
    return-object v4

    :catch_2
    move-exception v8

    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving icon 0x"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " in package "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    const/4 v15, 0x0

    return-object v15

    :catch_3
    move-exception v7

    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving resources for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    move-exception v6

    const-string/jumbo v15, "PackageManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Failure retrieving resources for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getInstallReason(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackagesAsUser(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstantAppAndroidId(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstantAppCookie()[B
    .locals 5

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstantAppCookieMaxBytes()I
    .locals 3

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "ephemeral_cookie_max_size_bytes"

    const/16 v2, 0x4000

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInstantAppCookieMaxSize()I
    .locals 1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v0

    return v0
.end method

.method public getInstantAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstantAppInstallerComponent()Landroid/content/ComponentName;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstantAppInstallerComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInstantApps()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstantAppInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/content/pm/IPackageManager;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getIntentVerificationStatusAsUser(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    return-object v4

    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 18

    const v3, 0x1080375

    const-string/jumbo v11, "system"

    const v12, 0x1080375

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v9, v5, 0x2

    div-int/lit8 v10, v4, 0x2

    if-eq v5, v4, :cond_0

    if-ge v5, v4, :cond_1

    move v11, v5

    :goto_0
    int-to-float v7, v11

    if-le v5, v4, :cond_2

    move v11, v5

    :goto_1
    int-to-float v6, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float v8, v6, v11

    cmpl-float v11, v7, v8

    if-lez v11, :cond_3

    int-to-float v11, v5

    sub-float/2addr v11, v8

    float-to-int v9, v11

    int-to-float v11, v4

    sub-float/2addr v11, v8

    float-to-int v10, v11

    :cond_0
    :goto_2
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v9, v10, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v11, v12}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    return-object v11

    :cond_1
    move v11, v4

    goto :goto_0

    :cond_2
    move v11, v4

    goto :goto_1

    :cond_3
    int-to-double v12, v5

    float-to-double v14, v7

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v9, v12

    int-to-double v12, v4

    float-to-double v14, v7

    const-wide v16, 0x3fe999999999999aL    # 0.8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v10, v12

    goto :goto_2
.end method

.method public getMoveStatus(I)I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/ApplicationPackageManager;->getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;Landroid/content/pm/IPackageManager;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;Landroid/content/pm/IPackageManager;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/os/storage/StorageManager;",
            "Landroid/content/pm/IPackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageCandidateVolumes, currentVol :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-direct {p0, v5, p1, v2, p3}, Landroid/app/ApplicationPackageManager;->isPackageCandidateVolume(Landroid/app/ContextImpl;Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Landroid/content/pm/IPackageManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    const-string/jumbo v5, "ApplicationPackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "add volume: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mountFlags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/os/storage/VolumeInfo;->mountFlags:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", Type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "ApplicationPackageManager"

    const-string/jumbo v6, "getPackageCandidateVolumes, currentVol is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    return-object v1
.end method

.method protected getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/StorageManager;)Landroid/os/storage/VolumeInfo;
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "private"

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getPackageGids(Ljava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPackageGids(Ljava/lang/String;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Landroid/content/pm/VersionedPackage;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 6

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    new-instance v1, Landroid/content/pm/PackageInstaller;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Landroid/content/pm/PackageInstaller;-><init>(Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPackageSizeInfoAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 4

    const-string/jumbo v1, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!"

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v2, "ApplicationPackageManager"

    const-string/jumbo v3, "Shame on you for calling the hidden API getPackageSizeInfoAsUser(). Shame!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p3, v2, v3}, Landroid/content/pm/IPackageStatsObserver;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPackageUidAsUser(Ljava/lang/String;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "getPreferredPackages() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, "primary_physical"

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v3}, Landroid/app/ApplicationPackageManager;->isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    return-object v2
.end method

.method public getProgressionOfPackageChanged()I
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getProgressionOfPackageChanged()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getRequestedRuntimePermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v9, :cond_2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_1
    if-eqz v9, :cond_3

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v6, v5, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/LoadedApk;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v8, Landroid/content/res/Resources;->mPackageName:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, v8, Landroid/content/res/Resources;->mAppIconResId:I

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, v8, Landroid/content/res/Resources;->mUserId:I

    return-object v8

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    if-gez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call does not support special user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    return-object v2

    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x400

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getRuntimePermissionGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getRuntimePermissionGroups()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSharedLibraries(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getSharedLibrariesAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLibrariesAsUser(II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Landroid/content/pm/IPackageManager;->getSharedLibraries(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 6

    :try_start_0
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    return-object v5

    :cond_0
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Landroid/content/pm/FeatureInfo;

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    aput-object v5, v4, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    if-nez p3, :cond_1

    const/16 v5, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    :catch_0
    move-exception v0

    return-object v8

    :catch_1
    move-exception v1

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v8

    :catch_2
    move-exception v0

    const-string/jumbo v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure retrieving resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    if-gtz p2, :cond_0

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v5}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget p2, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v6

    :cond_1
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v6

    :cond_2
    invoke-direct {p0, v4, p1, p2}, Landroid/app/ApplicationPackageManager;->getCustomBadgeForCustomContainer(Landroid/content/pm/UserInfo;Landroid/os/UserHandle;I)Landroid/util/Pair;

    move-result-object v3

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/Drawable;

    return-object v5

    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10803f0

    invoke-virtual {v5, v6, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    return-object v5

    :cond_4
    const v5, 0x10803ca

    invoke-direct {p0, p1, v5, p2}, Landroid/app/ApplicationPackageManager;->getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    return-object v6

    :cond_5
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v5, 0x10803c9

    invoke-direct {p0, v5, p2}, Landroid/app/ApplicationPackageManager;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v1, 0x10803cb

    invoke-direct {p0, p1, v1, p2}, Landroid/app/ApplicationPackageManager;->getManagedProfileIconForDensity(Landroid/os/UserHandle;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-object v0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-virtual {p0, p2, p4}, Landroid/app/ApplicationPackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 23

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_0

    return-object p1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager;->getBadgeResIdForUser(I)I

    move-result v8

    const/4 v6, 0x0

    if-nez v8, :cond_1

    return-object p1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v14, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const-string/jumbo v18, "system"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string/jumbo v4, "com.samsung.knox.securefolder"

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    const-string/jumbo v18, "ic_sf_badge"

    const-string/jumbo v19, "drawable"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v11, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_2
    :goto_0
    const/16 v18, 0x0

    cmpg-float v18, v14, v18

    if-lez v18, :cond_3

    const/16 v18, 0x0

    cmpg-float v18, v13, v18

    if-gtz v18, :cond_4

    :cond_3
    return-object p1

    :catch_0
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    const-string/jumbo v19, "custom-badge-icon"

    invoke-static/range {v18 .. v19}, Lcom/samsung/android/knox/SemPersonaManager;->getCustomResource(ILjava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    array-length v0, v5

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_5
    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v14, v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v20, v13, v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v6, v1, v2, v3}, Landroid/app/ApplicationPackageManager;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/app/ContextImpl;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v0, v10

    move/from16 v18, v0

    cmpl-float v18, v14, v18

    if-lez v18, :cond_8

    int-to-float v0, v9

    move/from16 v18, v0

    cmpl-float v18, v13, v18

    if-lez v18, :cond_8

    new-instance v18, Landroid/graphics/Rect;

    float-to-int v0, v14

    move/from16 v19, v0

    sub-int v19, v19, v10

    float-to-int v0, v13

    move/from16 v20, v0

    sub-int v20, v20, v9

    float-to-int v0, v14

    move/from16 v21, v0

    float-to-int v0, v13

    move/from16 v22, v0

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    return-object v18

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string/jumbo v18, "system"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v6, v2, v3}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    return-object v18

    :cond_7
    new-instance v18, Landroid/util/LauncherIcons;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/util/LauncherIcons;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgeColor(Landroid/os/UserHandle;)I

    move-result v19

    const v20, 0x10803ce

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/LauncherIcons;->getBadgeDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_8
    return-object p1
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getManagedProfileBadge(I)I

    move-result v0

    sget-object v2, Landroid/app/ApplicationPackageManager;->CORP_BADGE_LABEL_RES_ID:[I

    sget-object v3, Landroid/app/ApplicationPackageManager;->CORP_BADGE_LABEL_RES_ID:[I

    array-length v3, v3

    rem-int v3, v0, v3

    aget v1, v2, v3

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    return-object p1
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 7

    const/4 v6, 0x0

    if-nez p3, :cond_0

    const/16 v3, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    return-object v6

    :catch_1
    move-exception v0

    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v6

    :catch_2
    move-exception v1

    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failure retrieving xml 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->installExistingPackage(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installExistingPackage(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->installExistingPackageAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public installExistingPackageAsUser(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/ApplicationPackageManager;->installExistingPackageAsUser(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V

    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 6

    new-instance v2, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    invoke-direct {v2, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;I)V

    return-void
.end method

.method public installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method protected isAllow3rdPartyOnInternal(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected isForceAllowOnExternal(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "force_allow_on_external"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHidden(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getHiddenList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isInstantApp()Z
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->isInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInstantApp(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->getLockedList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPermissionReviewModeEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSafeMode()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v3, :cond_0

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isUpgrade()Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ApplicationPackageManager;->loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.containeragent.switcher.fileshare.B2CShareViaActivity"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.knox.securefolder.switcher.B2CShareViaActivity"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.android.knox.containeragent.switcher.PhoneIcon"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.samsung.android.knox.containeragent.switcher.SMSIcon"

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2

    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_3
    sget-object v1, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v2, "sprotect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->isThemeActive()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_4
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;ZI)Landroid/graphics/drawable/Drawable;
    .locals 21

    if-eqz p2, :cond_1

    const/16 v17, 0x1

    move/from16 v0, p4

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageIconHelper;->shouldReplaceIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageIconHelper;->getReplacementIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_1

    const-string/jumbo v17, "ApplicationPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Load replacement icon for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v17, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v18, "sprotect"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    return-object v17

    :cond_0
    return-object v14

    :cond_1
    const/16 v16, 0x0

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIcon(Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object v12

    if-eqz v12, :cond_3

    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    array-length v0, v12

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v12, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v17

    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->checkAppIconThemePackage()V

    const/4 v5, 0x0

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->replacedIconFromAppPolicy(Ljava/lang/String;I)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_7

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    move/from16 v17, v0

    if-nez v17, :cond_5

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_4
    :goto_0
    if-eqz v5, :cond_7

    return-object v5

    :cond_5
    if-eqz v5, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    new-instance v17, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_6
    new-instance v17, Landroid/app/ApplicationPackageManager$ResourceName;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v5}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    move/from16 v17, v0

    const/16 v18, -0x2710

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    return-object v17

    :cond_8
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v17

    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_a
    const/4 v10, 0x0

    if-nez v5, :cond_b

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/content/pm/ComponentInfo;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    const/4 v10, 0x1

    :cond_b
    if-eqz p3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_c

    if-eqz v5, :cond_c

    sget v17, Landroid/app/ApplicationPackageManager;->CONFIG_SMART_APPICON_SCALER:I

    if-lez v17, :cond_c

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    packed-switch p4, :pswitch_data_0

    :cond_c
    :goto_1
    :pswitch_0
    const/4 v6, 0x0

    if-eqz v5, :cond_d

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/app/ApplicationPackageManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mIconHelper:Landroid/content/pm/PackageIconHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageIconHelper;->isDesktopMode(Landroid/content/Context;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationPackageManager;->getLiveIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_d
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-nez v17, :cond_f

    if-eqz v6, :cond_f

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_f

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v17, "liveicon_from_theme"

    const-string/jumbo v18, "bool"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    :goto_2
    const-string/jumbo v17, "ApplicationPackageManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "load= live icon for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", from overlay = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    move/from16 v17, v0

    if-eqz v17, :cond_e

    if-nez v9, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/app/ApplicationPackageManager;->mOpenThemeAppIconRange:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :cond_f
    if-eqz v6, :cond_13

    sget-object v17, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v18, "sprotect"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_12

    if-eqz p2, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->isLock(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationPackageManager;->getLockedBadgedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    return-object v17

    :pswitch_1
    invoke-direct/range {p0 .. p2}, Landroid/app/ApplicationPackageManager;->updateItemMetaDataForFixedIconScale(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)V

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    return-object v17

    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ApplicationPackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    packed-switch p4, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_2
    invoke-direct/range {p0 .. p2}, Landroid/app/ApplicationPackageManager;->updateItemMetaDataForFixedIconScale(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)V

    if-nez v16, :cond_11

    if-eqz p2, :cond_11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    :cond_11
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    return-object v5

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_12
    return-object v6

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "android.permission-group"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    :cond_14
    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mResources:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x106015e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_15
    :goto_3
    return-object v5

    :cond_16
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v17

    if-nez v17, :cond_15

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    xor-int/lit8 v17, v10, 0x1

    if-eqz v17, :cond_15

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .locals 4

    :try_start_0
    const-string/jumbo v2, "private"

    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "primary_physical"

    goto :goto_0

    :cond_1
    iget-object v2, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 4

    :try_start_0
    const-string/jumbo v2, "private"

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v1, "primary_physical"

    goto :goto_0

    :cond_1
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/ApplicationPackageManager;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;IILjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    sget-object v6, Landroid/app/ApplicationPackageManager;->sProtectHide:Ljava/lang/String;

    const-string/jumbo v7, "sprotect"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, v5}, Landroid/app/ApplicationPackageManager;->isHidden(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v9, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    aget-object v14, p2, v11

    if-eqz v14, :cond_1

    invoke-virtual {v14, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    if-nez v4, :cond_0

    new-array v4, v9, [Ljava/lang/String;

    :cond_0
    aput-object v15, v4, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    if-nez v12, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, p2, v4}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_0
    new-instance v3, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v3, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryRuntimePermissionGroupByPermission(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->queryRuntimePermissionsByPermissionGroup(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .locals 4

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 4

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    monitor-exit v3

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "ApplicationPackageManager"

    const-string/jumbo v1, "removePackageFromPreferred() is a no-op"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "com.samsung.android.icon_container.use_icon_container"

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/content/pm/IPackageManager;->getComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetActivityIconForIconTray(Landroid/content/Intent;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/app/ApplicationPackageManager;->semGetActivityIconForIconTray(Landroid/content/ComponentName;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2, p2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/ApplicationPackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 16

    const-string/jumbo v13, "ZVV"

    const-string/jumbo v14, "ro.csc.sales_code"

    const-string/jumbo v15, "null"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v10, 0x0

    const-string/jumbo v13, "ro.multisim.simslotcount"

    const/4 v14, 0x1

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v13, "com.android.stk"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "com.android.stk.StkLauncherActivity"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "com.android.stk.StkLauncherActivity1"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "com.sec.android.app.latin.launcher.stk"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string/jumbo v13, "com.sec.android.app.latin.launcher.stk.StkShortcutWidget"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_0
    const/4 v1, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v13}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "com.android.stk"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    const/4 v2, 0x0

    const-string/jumbo v13, "CHU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x2

    if-ne v3, v13, :cond_3

    const-string/jumbo v13, "app_name_cu"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_4

    return-object v1

    :cond_3
    const-string/jumbo v13, "app_name_cu_single"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v13, "ApplicationPackageManager"

    const-string/jumbo v14, "com.android.stk"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v6, :cond_5

    if-eqz v6, :cond_8

    const-string/jumbo v13, "72406"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "72410"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "72411"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    const-string/jumbo v13, "72423"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    const-string/jumbo v13, "NoSIM%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    aget-object v13, v8, v13

    return-object v13

    :cond_6
    const-string/jumbo v13, "NoSIM%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_8

    :cond_7
    const-string/jumbo v13, "%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x1

    aget-object v13, v7, v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    aget-object v13, v8, v13

    return-object v13

    :cond_8
    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_9

    const-string/jumbo v13, "gsm.STK_SETUP_MENU"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_9
    const-string/jumbo v13, "com.android.stk2"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string/jumbo v13, "com.android.stk2.StkLauncherActivity2"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string/jumbo v13, "com.android.stk2.StkLauncherActivity"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    :cond_a
    const/4 v1, 0x0

    const/4 v11, 0x0

    const-string/jumbo v13, "ro.csc.sales_code"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v13}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string/jumbo v14, "com.android.stk2"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v11

    const/4 v2, 0x0

    const-string/jumbo v13, "CHU"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v13, 0x2

    if-ne v3, v13, :cond_d

    const-string/jumbo v13, "app_name_cu"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk2"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_b
    :goto_1
    if-eqz v2, :cond_c

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_c
    if-eqz v1, :cond_e

    return-object v1

    :cond_d
    const-string/jumbo v13, "app_name_cu_single"

    const-string/jumbo v14, "string"

    const-string/jumbo v15, "com.android.stk2"

    invoke-virtual {v11, v13, v14, v15}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v13, "ApplicationPackageManager"

    const-string/jumbo v14, "com.android.stk2"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    const/4 v13, 0x1

    if-ne v3, v13, :cond_11

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    :cond_f
    :goto_2
    if-eqz v6, :cond_10

    if-eqz v6, :cond_13

    const-string/jumbo v13, "72406"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v13, "72410"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v13, "72411"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string/jumbo v13, "72423"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    :cond_10
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Launcher_FixedStkTitleAs"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_12

    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-gtz v13, :cond_12

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    const/4 v13, 0x1

    aget-object v13, v8, v13

    const-string/jumbo v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v12, v13

    return-object v13

    :cond_11
    const/4 v13, 0x2

    if-ne v3, v13, :cond_f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_13

    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_13

    const/4 v13, 0x1

    aget-object v13, v8, v13

    return-object v13

    :cond_13
    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14

    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_14

    const-string/jumbo v13, "gsm.STK_SETUP_MENU2"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    return-object v13

    :cond_14
    const/4 v13, 0x0

    return-object v13
.end method

.method public semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/ApplicationPackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;ILjava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-direct {p0}, Landroid/app/ApplicationPackageManager;->checkAppIconThemePackage()V

    iput-object p3, p0, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    invoke-direct {p0, p3}, Landroid/app/ApplicationPackageManager;->getMetaDataItemInfoForFixedScaleIconTray(Ljava/lang/String;)Landroid/content/pm/PackageItemInfo;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mAppIconPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, p0

    move-object v2, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/ApplicationPackageManager;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object v6, p0, Landroid/app/ApplicationPackageManager;->mPkgNameForBadgeIcon:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public semGetSystemFeatureLevel(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->semIsPermissionRevokedByUserFixed(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public semShouldPackIntoIconTray(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const-string/jumbo v2, "com.samsung.android.icon_container.has_icon_container"

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setApplicationCategoryHint(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IIZZ)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v6

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getBasePackageName()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInstantAppCookie([B)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setInstantAppCookie(Ljava/lang/String;[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUpdateAvailable(Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setUpdateAvailable(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .locals 5

    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    iget-object v3, v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit v4

    return-void
.end method

.method public updateInstantAppCookie([B)V
    .locals 4

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v2

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "instant cookie longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getInstantAppCookieMaxBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, v2, p1, v3}, Landroid/content/pm/IPackageManager;->setInstantAppCookie(Ljava/lang/String;[BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public verifyPendingInstall(II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public verifyPendingInstall2(II)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall2(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
