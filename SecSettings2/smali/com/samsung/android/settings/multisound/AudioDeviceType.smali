.class public Lcom/samsung/android/settings/multisound/AudioDeviceType;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AudioDeviceType.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

.field private mContext:Landroid/content/Context;

.field private mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/multisound/AudioDeviceType;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getBTConnectedState()Z
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "my_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v1, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType$1;-><init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "bluetooth_device"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/RadioPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    new-instance v1, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType$2;-><init>(Lcom/samsung/android/settings/multisound/AudioDeviceType;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getBTConnectedState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getPinDeviceName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->updateRadioState()V

    return-void
.end method

.method public setMultiSound(I)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "multisound_app"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisound/AudioDeviceType;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/media/AudioManager;->setAppDevice(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return v6
.end method

.method public updateRadioState()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "multisound_devicetype"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mMyPhone:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/AudioDeviceType;->mBluetoothDevice:Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/notification/RadioPreference;->setChecked(Z)V

    goto :goto_0
.end method
