.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;
    }
.end annotation


# instance fields
.field private mAirplaneMode:I

.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

.field private mBeamPreference:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings/nfc/NfcPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/nfc/NfcPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->updateNfcPreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private updateNfcPreference()V
    .locals 5

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    iget v4, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneMode:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneMode:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneMode:I

    iget v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    :goto_1
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mBeamPreference:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "toggle_nfc"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/nfc/NfcPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    const-string/jumbo v1, "android_beam_settings"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/nfc/NfcPreferenceController;->removePreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    return-void

    :cond_0
    const-string/jumbo v1, "toggle_nfc"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v1, "android_beam_settings"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mBeamPreference:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    new-instance v1, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mBeamPreference:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "nfc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;-><init>(Lcom/android/settings/nfc/NfcPreferenceController;Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    invoke-direct {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->updateNfcPreference()V

    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcPreferenceController$AirplaneModeObserver;->register()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    :cond_1
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "nfc"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/NfcManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "toggle_nfc"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "android_beam_settings"

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
