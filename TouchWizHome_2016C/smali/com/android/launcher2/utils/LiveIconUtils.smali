.class public Lcom/android/launcher2/utils/LiveIconUtils;
.super Ljava/lang/Object;
.source "LiveIconUtils.java"


# static fields
.field public static CALENDAR_ICON_PACKAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUGGABLE:Z

.field public static LIVE_ICON_PACKAGES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Launcher.LiveIconUtils"

.field static final cscClockPackageName:Ljava/lang/String;

.field static final floatingClockPackageNmae:Ljava/lang/String;

.field private static mCalendarIntent:Landroid/content/Intent;

.field private static mClockIntent:Landroid/content/Intent;

.field private static mLiveIconBmp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/utils/LiveIconUtils;->DEBUGGABLE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v2, "com.sec.android.app.clockpackage"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->floatingClockPackageNmae:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Clock_ConfigReplacePackage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.calendar"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.android.game.gamehome"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/launcher2/utils/LiveIconUtils;->floatingClockPackageNmae:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.android.calendar"

    aput-object v1, v0, v3

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->CALENDAR_ICON_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    sget-object v1, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->floatingClockPackageNmae:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static clearLiveIconBitmap(Ljava/lang/String;)V
    .locals 6

    sget-boolean v3, Lcom/android/launcher2/utils/LiveIconUtils;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "Launcher.LiveIconUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " clearLiveIconBitmap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_3

    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method public static getClockPackageName()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->cscClockPackageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->floatingClockPackageNmae:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;
    .locals 13

    sget-boolean v7, Lcom/android/launcher2/utils/LiveIconUtils;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "Launcher.LiveIconUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] getLiveIcon  start"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v8, -0x1

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v8

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-ltz v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    sget-object v10, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    sget-boolean v7, Lcom/android/launcher2/utils/LiveIconUtils;->DEBUGGABLE:Z

    if-eqz v7, :cond_2

    const-string v7, "Launcher.LiveIconUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] getLiveIcon : already has bmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const-string v7, ""

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    if-eqz p3, :cond_5

    if-nez v4, :cond_9

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v7, v10

    if-eqz v7, :cond_a

    const/4 v3, 0x1

    :cond_6
    :goto_3
    invoke-static {v6, p0, p2, p2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v7

    sget-object v10, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual {v7, v5, v10}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_7
    sget-object v10, Lcom/android/launcher2/utils/LiveIconUtils;->mLiveIconBmp:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Lcom/android/launcher2/utils/LiveIconUtils;->DEBUGGABLE:Z

    if-eqz v7, :cond_8

    const-string v7, "Launcher.LiveIconUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] getLiveIcon : return bmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v1, v5

    goto/16 :goto_1

    :cond_9
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v7, v6, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    const-string v7, "Launcher.LiveIconUtils"

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v10, 0x10d0000

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    :cond_b
    const-string v7, ""

    goto :goto_4
.end method

.method public static getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {p0, p1, v1, p2}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;ILcom/android/launcher2/compat/LauncherActivityInfoCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static getLiveIconCalendarIntent()Landroid/content/Intent;
    .locals 5

    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mCalendarIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->CALENDAR_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/android/launcher2/utils/LiveIconUtils;->mCalendarIntent:Landroid/content/Intent;

    :cond_1
    sget-object v3, Lcom/android/launcher2/utils/LiveIconUtils;->mCalendarIntent:Landroid/content/Intent;

    return-object v3
.end method

.method public static getLiveIconClockIntent()Landroid/content/Intent;
    .locals 2

    sget-object v1, Lcom/android/launcher2/utils/LiveIconUtils;->mClockIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/utils/LiveIconUtils;->getClockPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/utils/LiveIconUtils;->mClockIntent:Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/android/launcher2/utils/LiveIconUtils;->mClockIntent:Landroid/content/Intent;

    return-object v1
.end method
