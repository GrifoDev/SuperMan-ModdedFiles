.class public Lcom/android/settings/applications/ManageAssist;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageAssist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContextPref:Landroid/preference/SwitchPreference;

.field private mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

.field private mHandler:Landroid/os/Handler;

.field private mScreenshotPref:Landroid/preference/SwitchPreference;

.field private mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageAssist;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private confirmNewAssist(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultAssistPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    aget-object v0, v7, v5

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1a28

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v10

    const v8, 0x7f0b1a29

    invoke-virtual {p0, v8, v7}, Lcom/android/settings/applications/ManageAssist;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/applications/ManageAssist$2;

    invoke-direct {v4, p0, p1}, Lcom/android/settings/applications/ManageAssist$2;-><init>(Lcom/android/settings/applications/ManageAssist;Ljava/lang/String;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b1a2a

    invoke-virtual {v7, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b1a2b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private isCurrentAssistVoiceService()Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v2}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v2}, Lcom/android/settings/voice/VoiceInputListPreference;->getCurrentService()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private postUpdateUi()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/ManageAssist$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageAssist$1;-><init>(Lcom/android/settings/applications/ManageAssist;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDefaultAssist(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/DefaultAssistPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void
.end method

.method private updateUi()V
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->refreshAssistApps()V

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5}, Lcom/android/settings/voice/VoiceInputListPreference;->refreshVoiceInputs()I

    move-result v0

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultAssistPreference;->getCurrentAssist()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->isCurrentAssistVoiceService()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "assist_screenshot_enabled"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-virtual {v5, v1}, Lcom/android/settings/voice/VoiceInputListPreference;->setAssistRestrict(Landroid/content/ComponentName;)V

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xc9

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "default_assist"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/DefaultAssistPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/DefaultAssistPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "context"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "assist_structure_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "screenshot"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "voice_input_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageAssist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/voice/VoiceInputListPreference;

    iput-object v0, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mContextPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_structure_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->postUpdateUi()V

    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ManageAssist;->mScreenshotPref:Landroid/preference/SwitchPreference;

    if-ne p1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assist_screenshot_enabled"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-ne p1, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10010b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string/jumbo v3, ""

    invoke-direct {p0, v3}, Lcom/android/settings/applications/ManageAssist;->setDefaultAssist(Ljava/lang/String;)V

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    invoke-virtual {v3}, Lcom/android/settings/applications/DefaultAssistPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    return v2

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageAssist;->confirmNewAssist(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    return v2
.end method

.method public onResume()V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageAssist;->updateUi()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ASSIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageAssist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v5, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v6, "isChangeAssistDefaultAppAllowed"

    new-array v7, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v2, v5, v6, v7}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/applications/ManageAssist;->mDefaultAssitPref:Lcom/android/settings/applications/DefaultAssistPreference;

    if-eqz v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/android/settings/applications/DefaultAssistPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageAssist;->mVoiceInputPref:Lcom/android/settings/voice/VoiceInputListPreference;

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settings/voice/VoiceInputListPreference;->setEnabled(Z)V

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method
