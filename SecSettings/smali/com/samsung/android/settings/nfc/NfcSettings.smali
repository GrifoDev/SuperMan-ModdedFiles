.class public Lcom/samsung/android/settings/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcSettings$1;,
        Lcom/samsung/android/settings/nfc/NfcSettings$2;,
        Lcom/samsung/android/settings/nfc/NfcSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mConfigReaderModeUI:Ljava/lang/String;

.field private static mIconType:Ljava/lang/String;

.field public static mProductName:Ljava/lang/String;


# instance fields
.field private androidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private isBixbyCmdFinished:Z

.field private isEmergencyMode:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastBixbyStatus:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

.field private nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

.field private paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

.field private standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private tapPay:Landroid/support/v7/preference/SecPreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/NfcSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/NfcSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mProductName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$1;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$3;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v0, 0x7f1500a4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "nfc_android_beam_help"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v0, "android_beam_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    const-string/jumbo v0, "nfc_mode_general"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v0, "mode_card_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const-string/jumbo v0, "mode_standard_mode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const-string/jumbo v0, "nfc_payment_settings"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v0, "nfc_payment_sim"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const-string/jumbo v0, "nfc_preferred_general"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V

    :cond_2
    :goto_1
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isAddPreference()V

    :cond_3
    :goto_2
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;Landroid/support/v7/preference/SecPreferenceScreen;Landroid/support/v7/preference/SecPreference;Landroid/support/v7/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    return-object v10

    :cond_4
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_7
    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDeletePreference()V

    goto :goto_2
.end method

.method public static isSupportDomesticUi()Z
    .locals 2

    const-string/jumbo v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDualSwp()Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_SmartcardSvc_ConfigMultiSimMode"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportDualSwp true : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportDualSwp false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportRWP2p()Z
    .locals 2

    const-string/jumbo v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CHINA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CTC"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public BixbyAction()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    if-nez v3, :cond_1

    const-string/jumbo v3, "NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enter NFC settings BixbyAction state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    const-string/jumbo v4, "NfcTapAndPaySettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    const-string/jumbo v3, "nfc_payment_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    const-string/jumbo v4, "NfcDefaultNfcSettings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mLastBixbyStatus:Ljava/lang/String;

    const-string/jumbo v4, "NfcAndroidBeamSettingsOn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isBixbyCmdFinished:Z

    const-string/jumbo v3, "android_beam_settings"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->performClick()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "AndroidBeam"

    const-string/jumbo v5, "TurnedOn"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "NfcAndroidBeamSettings"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xe42

    return v0
.end method

.method public isAddPreference()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nfc_payment_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v1, "NfcSettings"

    const-string/jumbo v2, "isAddPreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isDeletePreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.nfc.hce"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "nfc_payment_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v1, "NfcSettings"

    const-string/jumbo v2, "isDeletePreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isDualSimDisabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v4
.end method

.method makeAlertDialog()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    const v1, 0x7f1212cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "NFC"

    aput-object v3, v2, v4

    const v3, 0x7f1212cc

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$4;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v1, 0x7f12090b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    const-string/jumbo v1, "com.samsung.helphub"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "nfc.product.support.uicc"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "nfc.product.support.ese"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "DISABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1212e6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "nfc.product.support.uicc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nfc.product.support.ese"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "UICC & eSE CE not support. not add advanced setting menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    const v1, 0x7f1212c5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const-string/jumbo v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const v1, 0x7f120ce8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0801b2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0e0007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    if-ne v4, v7, :cond_0

    return v7

    :cond_0
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "nfc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return v7

    :cond_2
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "nfc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0a05a5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "onPause() So AlertDialog dismiss in EmergencyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v6

    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "show makeAlertDialog in EmergencyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "NfcSettings"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public refresh()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "NfcSettings"

    const-string/jumbo v4, "refresh()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->clearItems()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    aget-object v4, v1, v6

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    aget-object v4, v1, v7

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    new-instance v4, Lcom/samsung/android/settings/nfc/NfcSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$5;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setCallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;)V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDualSimDisabled()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    goto :goto_1
.end method
