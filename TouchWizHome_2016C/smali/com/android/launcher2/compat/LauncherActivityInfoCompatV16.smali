.class public Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;
.super Lcom/android/launcher2/compat/LauncherActivityInfoCompat;
.source "LauncherActivityInfoCompatV16.java"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;-><init>()V

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFirstInstallTime()J
    .locals 7

    const-wide/16 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    iget-object v3, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x10d0000

    invoke-virtual {v2, v3, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Lcom/android/launcher2/compat/LauncherActivityInfoCompatV16;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
