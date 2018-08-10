.class public Landroid/content/pm/PackageIconHelper;
.super Ljava/lang/Object;
.source "PackageIconHelper.java"


# static fields
.field private static final DEBUG:Z

.field private static mInstance:Landroid/content/pm/PackageIconHelper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mLiveIconPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mReplacementIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/PackageIconHelper;->mInstance:Landroid/content/pm/PackageIconHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PackageIconHelper"

    iput-object v0, p0, Landroid/content/pm/PackageIconHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageIconHelper;->mLock:Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    const-string/jumbo v1, "com.android.vending"

    const v2, 0x1080647

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCachedLiveIconPackagesLocked(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string/jumbo v5, "com.sec.android.app.clockpackage"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Clock_ConfigReplacePackage"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.android.calendar"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.samsung.android.calendar"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.samsung.android.game.gamehome"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.samsung.android.opencalendar"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    const-string/jumbo v4, "com.android.deskclock"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Landroid/content/pm/PackageIconHelper;->mLiveIconPackages:Ljava/util/ArrayList;

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PackageIconHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLiveIconPackage NameNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Landroid/content/pm/PackageIconHelper;
    .locals 2

    sget-object v0, Landroid/content/pm/PackageIconHelper;->mInstance:Landroid/content/pm/PackageIconHelper;

    if-nez v0, :cond_1

    const-class v1, Landroid/content/pm/PackageIconHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/content/pm/PackageIconHelper;->mInstance:Landroid/content/pm/PackageIconHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageIconHelper;

    invoke-direct {v0}, Landroid/content/pm/PackageIconHelper;-><init>()V

    sput-object v0, Landroid/content/pm/PackageIconHelper;->mInstance:Landroid/content/pm/PackageIconHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Landroid/content/pm/PackageIconHelper;->mInstance:Landroid/content/pm/PackageIconHelper;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isIconTraySettingEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "tap_to_icon"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private replacedFromAppPolicy(Ljava/lang/String;I)Z
    .locals 2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getReplacementIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getReplacementIconForDensity(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasThemeIconPack(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "current_sec_appicon_theme_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "com.samsung.upsmtheme"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDesktopMode(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    iget v2, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public shouldReplaceIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageIconHelper;->mReplacementIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageIconHelper;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageIconHelper;->hasThemeIconPack(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-direct {p0, p2}, Landroid/content/pm/PackageIconHelper;->isIconTraySettingEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/content/pm/PackageIconHelper;->replacedFromAppPolicy(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public supportLiveIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageIconHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p2}, Landroid/content/pm/PackageIconHelper;->getCachedLiveIconPackagesLocked(Landroid/content/Context;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v2

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageIconHelper;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_0
    const/4 v2, 0x0

    return v2
.end method
