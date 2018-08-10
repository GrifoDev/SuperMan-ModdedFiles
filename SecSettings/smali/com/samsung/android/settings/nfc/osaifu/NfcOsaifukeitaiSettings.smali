.class public Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field protected static mNewModel:Z


# instance fields
.field private final MNO:Ljava/lang/String;

.field private mABeam:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

.field private mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

.field private mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

.field mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mNfcType:Landroid/support/v7/preference/PreferenceScreen;

.field private mRoot:Landroid/support/v7/preference/PreferenceScreen;

.field private mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

.field private mSetLayout:Z

.field private mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "DCM2018"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_ConfigFeliCaLockForcePwReset"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNewModel:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mSetLayout:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x251d

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v0, 0x7f1500a3

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "toggle_osaifukeitai_lock"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "toggle_nfc"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "toggle_android_beam"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "nfc_type_settings_key"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "toggle_lock_number_change"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v0, "toggle_lock_number_initialization"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string/jumbo v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcType:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;-><init>(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    const v0, 0x7f121299

    invoke-virtual {v7, v0}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, "KDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mABeam:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;-><init>(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceScreen;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
