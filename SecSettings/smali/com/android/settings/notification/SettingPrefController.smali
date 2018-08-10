.class public abstract Lcom/android/settings/notification/SettingPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "SettingPrefController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SettingPrefController$SettingsObserver;
    }
.end annotation


# instance fields
.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field protected mPreference:Lcom/android/settings/notification/SettingPref;

.field protected mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;


# direct methods
.method static synthetic -get0(Lcom/android/settings/notification/SettingPrefController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->init(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/notification/SettingPrefController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;-><init>(Lcom/android/settings/notification/SettingPrefController;)V

    iput-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    invoke-virtual {v0}, Lcom/android/settings/notification/SettingPref;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mSettingsObserver:Lcom/android/settings/notification/SettingPrefController$SettingsObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPrefController$SettingsObserver;->register(Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/SettingPrefController;->mPreference:Lcom/android/settings/notification/SettingPref;

    iget-object v1, p0, Lcom/android/settings/notification/SettingPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void
.end method
