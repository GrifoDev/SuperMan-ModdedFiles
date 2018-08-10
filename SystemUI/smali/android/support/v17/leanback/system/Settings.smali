.class public Landroid/support/v17/leanback/system/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/system/Settings$Customizations;
    }
.end annotation


# static fields
.field private static sInstance:Landroid/support/v17/leanback/system/Settings;


# instance fields
.field private mPreferStaticShadows:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/system/Settings;->getCustomizations(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings$Customizations;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/system/Settings;->generateShadowSetting(Landroid/support/v17/leanback/system/Settings$Customizations;)V

    return-void
.end method

.method private generateShadowSetting(Landroid/support/v17/leanback/system/Settings$Customizations;)V
    .locals 2

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->supportsDynamicShadow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    if-eqz p1, :cond_0

    const-string/jumbo v0, "leanback_prefer_static_shadows"

    iget-boolean v1, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    invoke-virtual {p1, v0, v1}, Landroid/support/v17/leanback/system/Settings$Customizations;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    goto :goto_0
.end method

.method private getCustomizations(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings$Customizations;
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "android.support.v17.leanback.action.PARTNER_CUSTOMIZATION"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/support/v17/leanback/system/Settings;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v8

    if-eqz v8, :cond_1

    :try_start_0
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_1
    :goto_0
    if-eqz v6, :cond_0

    :cond_2
    if-nez v6, :cond_3

    :goto_1
    return-object v7

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/support/v17/leanback/system/Settings$Customizations;

    invoke-direct {v7, v6, v4}, Landroid/support/v17/leanback/system/Settings$Customizations;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/system/Settings;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/system/Settings;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/system/Settings;->sInstance:Landroid/support/v17/leanback/system/Settings;

    return-object v0
.end method

.method private static isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public preferStaticShadows()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/support/v17/leanback/system/Settings;->mPreferStaticShadows:Z

    return v0
.end method
