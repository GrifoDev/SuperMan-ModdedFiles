.class public Lcom/android/server/aod/settings/AODSettings;
.super Ljava/lang/Object;
.source "AODSettings.java"


# static fields
.field private static final AOD_MODE_ON:Ljava/lang/String; = "aod_mode"

.field private static final SETTING_AOD_EDGECLOCK_ENABLE:Ljava/lang/String; = "aod_night_mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/aod/settings/AODSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAODEdgeClockEnableSettings()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_night_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getAODEnableSettings()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/aod/settings/AODSettings;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "aod_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

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
