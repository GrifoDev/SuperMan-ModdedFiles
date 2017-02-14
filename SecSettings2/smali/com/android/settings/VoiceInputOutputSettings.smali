.class public Lcom/android/settings/VoiceInputOutputSettings;
.super Ljava/lang/Object;
.source "VoiceInputOutputSettings.java"


# instance fields
.field private final mFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

.field private mParent:Landroid/preference/PreferenceGroup;

.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;

.field private mTtsSettingsPref:Landroid/preference/Preference;

.field private mVoiceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    return-void
.end method

.method private populateOrRemovePreferences()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemoveTtsPrefs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private populateOrRemoveTtsPrefs()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mFragment:Lcom/samsung/android/settings/SecSettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mParent:Landroid/preference/PreferenceGroup;

    const-string/jumbo v1, "voice_category"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mVoiceCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "tts_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/VoiceInputOutputSettings;->mTtsSettingsPref:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/VoiceInputOutputSettings;->populateOrRemovePreferences()V

    return-void
.end method
