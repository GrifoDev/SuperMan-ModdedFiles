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

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPathClassLoader(Landroid/content/Context;)Ldalvik/system/PathClassLoader;
    .locals 7

    const/4 v6, 0x0

    sget-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    if-nez v4, :cond_3

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->getCalendarPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, appInfo is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, calendar package source directory is null or empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/samsung/android/widget/SemDatePicker;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "getPathClassLoader, calendar package name not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    :cond_3
    sget-object v4, Lcom/samsung/android/widget/SemDatePicker$LunarUtils;->mClassLoader:Ldalvik/system/PathClassLoader;

    return-object v4
.end method
