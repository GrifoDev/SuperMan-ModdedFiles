.class public Lcom/android/settingslib/applications/InterestingConfigChanges;
.super Ljava/lang/Object;
.source "InterestingConfigChanges.java"


# static fields
.field private static mCachedAppIconPkg:Ljava/lang/String;

.field private static sChangeSettingsUI:Ljava/lang/String;


# instance fields
.field private final mFlags:I

.field private final mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDensity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    sput-object v0, Lcom/android/settingslib/applications/InterestingConfigChanges;->sChangeSettingsUI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    or-int/lit8 v0, p1, 0x4

    or-int/lit16 v0, v0, 0x200

    or-int/lit16 v0, v0, 0x100

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    return-void
.end method


# virtual methods
.method public applyNewConfig(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget v6, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v6, v7, :cond_6

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    and-int/lit16 v6, v0, 0x304

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    const/4 v2, 0x1

    const-string/jumbo v6, "InterestingConfigChanges"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isConfigChanged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_sec_appicon_theme_package"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "settings_ui"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const-string/jumbo v4, "true"

    :goto_1
    sget-object v6, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_4

    :cond_2
    if-eqz v5, :cond_3

    sget-object v6, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/settingslib/Utils;->isSupportGraceUXGraceView()Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/settingslib/applications/InterestingConfigChanges;->sChangeSettingsUI:Ljava/lang/String;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/settingslib/applications/InterestingConfigChanges;->sChangeSettingsUI:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    :cond_4
    const/4 v2, 0x1

    const-string/jumbo v6, "InterestingConfigChanges"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isIconThemeChanged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sput-object v5, Lcom/android/settingslib/applications/InterestingConfigChanges;->mCachedAppIconPkg:Ljava/lang/String;

    sput-object v4, Lcom/android/settingslib/applications/InterestingConfigChanges;->sChangeSettingsUI:Ljava/lang/String;

    return v2

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v4, "false"

    goto :goto_1
.end method

.method public applyNewConfig(Landroid/content/res/Resources;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    iget v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mFlags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/android/settingslib/applications/InterestingConfigChanges;->mLastDensity:I

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return v4
.end method
