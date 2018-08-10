.class public Lcom/android/server/aod/settings/AODSettings;
.super Ljava/lang/Object;
.source "AODSettings.java"


# static fields
.field private static final AOD_MODE_ON:Ljava/lang/String; = "aod_mode"

.field private static final CSC_FEATURE_AOD_CONFIGDEFSTATUS_OFF_VALUE:Ljava/lang/String; = "OFF"

.field private static final SETTING_AOD_EDGECLOCK_ENABLE:Ljava/lang/String; = "aod_night_mode"


# instance fields
.field private mAODDefaultSetting:I

.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v6, p0, Lcom/android/server/aod/settings/AODSettings;->mAODDefaultSetting:I

    iput-object p1, p0, Lcom/android/server/aod/settings/AODSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_mode"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_AOD_ConfigDefStatus"

    const-string/jumbo v4, "ON"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/aod/settings/AODSettings;->mAODDefaultSetting:I

    :goto_0
    iget-object v2, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_mode"

    iget v4, p0, Lcom/android/server/aod/settings/AODSettings;->mAODDefaultSetting:I

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void

    :cond_1
    iput v6, p0, Lcom/android/server/aod/settings/AODSettings;->mAODDefaultSetting:I

    goto :goto_0
.end method


# virtual methods
.method public getAODEdgeClockEnableSettings()Z
    .locals 5

    iget-object v1, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "aod_night_mode"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAODEnableSettings()Z
    .locals 5

    iget-object v1, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "aod_mode"

    iget v3, p0, Lcom/android/server/aod/settings/AODSettings;->mAODDefaultSetting:I

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAODServiceEnable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/aod/settings/AODSettings;->getAODEdgeClockEnableSettings()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/aod/settings/AODSettings;->getAODEnableSettings()Z

    move-result v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
