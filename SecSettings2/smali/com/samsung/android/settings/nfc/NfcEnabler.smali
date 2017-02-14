.class public Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcEnabler$1;
    }
.end annotation


# static fields
.field private static CONNECTION_NFC_AND_PAYMENT:I

.field private static NFC_AND_PAYMENT_ON_OFF:I

.field private static mIconType:Ljava/lang/String;


# instance fields
.field private isAndroidBeamAllowed:I

.field private isNFCEnabled:I

.field private isNFCStateChangeAllowed:I

.field private final mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private mBeamDisallowedBySystem:Z

.field private final mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mNfcSettings:Landroid/preference/PreferenceScreen;

.field private final mNfcSettingsPref:Landroid/preference/PreferenceScreen;

.field private final mNfcSwitchPref:Landroid/preference/SwitchPreference;

.field private final mPaymentSim:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mTapPay:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/nfc/NfcEnabler;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    iput-object p6, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    iput-object p7, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iput-object p5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    const-string/jumbo v0, "no_outgoing_beam"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    iput-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    return-void
.end method

.method private checkKnox()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "false"

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v3, "isNFCEnabled"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string/jumbo v3, "isNFCStateChangeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string/jumbo v3, "isAndroidBeamAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    const-string/jumbo v1, "NfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isNFCStateChangeAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , isAndroidBeamAllowed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCEnabled:I

    if-nez v1, :cond_2

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v1, :cond_3

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : NFC state change not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    if-nez v1, :cond_4

    const-string/jumbo v1, "NfcEnabler"

    const-string/jumbo v2, "EDM : AndroidBeam not allowed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private getBeamShareActivityState()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.nfc"

    const-string/jumbo v3, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eq v2, v7, :cond_0

    return v6

    :cond_0
    return v7

    :catch_0
    move-exception v1

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v3, "Failed to retrieve PackageManager for user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method private handleNfcStateABeamChanged()V
    .locals 3

    const-string/jumbo v0, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBeamDisallowedBySystem : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfcEnabler"

    const-string/jumbo v1, " beamshare state is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v1, 0x7f0b18af

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v1, 0x7f0b18ae

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private handleNfcStateChanged(I)V
    .locals 6

    const v5, 0x7f0b18af

    const v4, 0x7f0b18ae

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b092c

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_b
    :goto_2
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string/jumbo v0, "GATE"

    const-string/jumbo v1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingsPref:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0932

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_12
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const-string/jumbo v1, "no_outgoing_beam"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_3

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_17
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_19
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_1b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b092c

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1e
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_21
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_22
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0932

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_23
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_24
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/SwitchPreference;->setSummary(I)V

    goto :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_25
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mTapPay:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setEnabled(Z)V

    :cond_27
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_29
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setEnabled(Z)V

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    const v1, 0x7f0b0930

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setSummary(I)V

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->chinaDisabled_offslot(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mPaymentSim:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isNfcTurnOn()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private makeAlertDialog(Ljava/lang/String;)V
    .locals 4

    move-object v0, p1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "NfcSettingsOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0b0954

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b0956

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_0
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1
    const-string/jumbo v2, "AndroidBeamOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b0955

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b0957

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "RwOff"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0b0953

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0b094d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method


# virtual methods
.method public chinaDisabled_offslot(I)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone2_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "ril.ICC_TYPE"

    const-string/jumbo v5, "0"

    invoke-static {v8, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v4, "ril.ICC_TYPE"

    const-string/jumbo v5, "0"

    invoke-static {v7, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NfcEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SimState_2 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    if-eqz v0, :cond_0

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    return v7

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v7, :cond_5

    if-eqz v1, :cond_4

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    return v7

    :cond_5
    return v8
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "NfcEnabler"

    const-string/jumbo v5, "onPreferenceChange - NfcSetting switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez v4, :cond_0

    const-string/jumbo v2, "NfcEnabler"

    const-string/jumbo v4, "EDM : NFC state change not allowed. so can\'t change toggle button"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1000ac

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sput v4, Lcom/samsung/android/settings/nfc/NfcEnabler;->CONNECTION_NFC_AND_PAYMENT:I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1002f4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sget v6, Lcom/samsung/android/settings/nfc/NfcEnabler;->CONNECTION_NFC_AND_PAYMENT:I

    if-eqz v0, :cond_5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_2
    :goto_2
    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "NfcSettingsOff"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    const-string/jumbo v4, "NfcEnabler"

    const-string/jumbo v5, "onPreferenceChange - AndroidBeam switch"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v5, 0x7f0b18ae

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    :goto_3
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v4, v0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setChecked(Z)V

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_a

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "AndroidBeamOff"

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    const v5, 0x7f0b18af

    invoke-virtual {v4, v5}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setSummary(I)V

    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_4
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 5

    const v2, 0x7f1000b1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setChecked(Z)V

    const-string/jumbo v0, "RwOff"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result v1

    if-ne v1, p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->NFC_AND_PAYMENT_ON_OFF:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget v3, Lcom/samsung/android/settings/nfc/NfcEnabler;->NFC_AND_PAYMENT_ON_OFF:I

    if-eqz p2, :cond_2

    const/16 v0, 0x3e8

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDomesticUi()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "NfcSettingsOff"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAndroidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    :cond_4
    return-void
.end method
