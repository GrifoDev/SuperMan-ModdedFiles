.class public Lcom/android/settings/language/TtsPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "TtsPreferenceController.java"


# instance fields
.field private final mTtsEngines:Landroid/speech/tts/TtsEngines;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TtsEngines;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "tts_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/TtsPreferenceController;->mTtsEngines:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
