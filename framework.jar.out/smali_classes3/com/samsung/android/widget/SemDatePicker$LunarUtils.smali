.class public Lcom/samsung/android/widget/SemDatePicker$LunarUtils;
.super Ljava/lang/Object;
.source "SemDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LunarUtils"
.end annotation


# static fields
.field private static mClassLoader:Ldalvik/system/PathClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2444
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 2443
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 2447
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v4, :cond_3

    .line 2448
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2449
    .local v1, "calendarPkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2451
    .local v2, "calendarPkgPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2452
    const/16 v5, 0x80

    .line 2451
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2453
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 2454
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, appInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    return-object v6

    .line 2457
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2462
    .local v2, "calendarPkgPath":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2463
    :cond_1
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, calendar package source directory is null or empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    return-object v6

    .line 2458
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "calendarPkgPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2459
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, calendar package name not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    return-object v6

    .line 2467
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v2, "calendarPkgPath":Ljava/lang/String;
    :cond_2
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    .line 2469
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "calendarPkgName":Ljava/lang/String;
    .end local v2    # "calendarPkgPath":Ljava/lang/String;
    :cond_3
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-object v4
.end method
