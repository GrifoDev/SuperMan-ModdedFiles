.class public Lcom/android/settings/tts/TtsEngineSettingsFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEngineSettingsFragment$1;,
        Lcom/android/settings/tts/TtsEngineSettingsFragment$2;
    }
.end annotation


# instance fields
.field private mEngineSettingsIntent:Landroid/content/Intent;

.field private mEngineSettingsPreference:Landroid/preference/Preference;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mInstallVoicesPreference:Landroid/preference/Preference;

.field private final mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocalePreference:Landroid/preference/ListPreference;

.field private mSelectedLocaleIndex:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mVoiceDataDetails:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$1;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$2;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private final checkTtsData()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEngineLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "label"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private installVoiceData()V
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.speech.tts.engine.INSTALL_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    const-string/jumbo v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Installing voice data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to install TTS data, no acitivty found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLocalePreference(I)V
    .locals 2

    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDefaultLocalePref(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/speech/tts/TtsEngines;->isLocaleSetToDefaultForEngine(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    iget-object v10, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v8

    if-eqz v8, :cond_3

    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v8}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance v9, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;

    invoke-direct {v9, p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment$3;-><init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V

    invoke-static {v4, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v11, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v5, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b0087

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v11

    const-string/jumbo v9, ""

    aput-object v9, v5, v11

    const/4 v6, 0x1

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/Locale;

    invoke-virtual {v9, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    :cond_5
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    aput-object v9, v1, v6

    add-int/lit8 v7, v6, 0x1

    iget-object v9, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    move v6, v7

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget v9, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    invoke-direct {p0, v9}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->setLocalePreference(I)V

    return-void
.end method

.method private updateLanguageTo(Ljava/util/Locale;)V
    .locals 5

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v0

    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    const-string/jumbo v3, "TtsEngineSettings"

    const-string/jumbo v4, "updateLanguageTo called with unknown locale argument"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iput v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mSelectedLocaleIndex:I

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/speech/tts/TtsEngines;->updateLocalePrefForEngine(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v3, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_2
.end method

.method private updateVoiceDetails(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "TtsEngineSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string/jumbo v3, "availableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    const-string/jumbo v3, "unavailableVoices"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string/jumbo v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    if-nez v0, :cond_4

    const-string/jumbo v2, "TtsEngineSettings"

    const-string/jumbo v3, "TTS data check failed (available == null)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    return-void

    :cond_2
    const-string/jumbo v2, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateDefaultLocalePref(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateVoiceDetails(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "TtsEngineSettings"

    const-string/jumbo v1, "CheckVoiceData activity failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f080132

    invoke-virtual {p0, v4}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->addPreferencesFromResource(I)V

    new-instance v4, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string/jumbo v4, "tts_default_lang"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v4, "tts_engine_settings"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v4, "tts_install_data"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v4, "CHM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v8, 0x64

    if-lt v4, v8, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineLabel()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    const v10, 0x7f0b0096

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/speech/tts/TtsEngines;->getSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    if-nez p1, :cond_3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v5, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    new-array v5, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "voices"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    new-instance v4, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTtsInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getEngineName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->checkTtsData()V

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v7, "android.speech.tts.engine.TTS_DATA_INSTALLED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_3
    const-string/jumbo v4, "locale_entries"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v4, "locale_entry_values"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v4, "locale_value"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v8, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    array-length v4, v0

    if-lez v4, :cond_5

    move v4, v6

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move-object v4, v5

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLanguagesChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TtsEngines;->parseLocaleString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateLanguageTo(Ljava/util/Locale;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mInstallVoicesPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->installVoiceData()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mEngineSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mVoiceDataDetails:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->updateVoiceDetails(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "locale_entries"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "locale_entry_values"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "locale_value"

    iget-object v1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method
