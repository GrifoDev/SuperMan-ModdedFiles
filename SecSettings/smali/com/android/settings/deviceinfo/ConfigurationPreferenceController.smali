.class public Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "ConfigurationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# instance fields
.field private final mConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDevHitCountdown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    iput-object p1, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->getConfigVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    return-void
.end method

.method private getConfigVersion()Ljava/lang/String;
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "VERSION"

    aput-object v1, v2, v4

    const-string/jumbo v1, "com.samsung.nsds.provider/device_config"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string/jumbo v1, "0"

    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v1, "config"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "config"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "config"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    iget v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    if-nez v0, :cond_1

    check-cast p1, Landroid/support/v7/preference/SecPreferenceConfig;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    :cond_1
    return v3
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/deviceinfo/ConfigurationPreferenceController;->mDevHitCountdown:I

    return-void
.end method
