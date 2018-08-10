.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;
.super Ljava/lang/Object;
.source "VoiceCommandHelper.java"

# interfaces
.implements Lcom/samsung/vsf/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;
    }
.end annotation


# static fields
.field public static ENCODING_DONE_IN_SDK:Z

.field public static RECORDING_DONE_IN_SDK:Z

.field public static SPEECH_DETECTION_DONE_IN_SDK:Z

.field public static USE_TLS:Z


# instance fields
.field private mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mContext:Landroid/content/Context;

.field private mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    sput-boolean v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->USE_TLS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;)V
    .locals 8

    const/4 v7, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->getCurrentLocale()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/vsf/SpeechRecognizer$Config;

    invoke-direct {v2}, Lcom/samsung/vsf/SpeechRecognizer$Config;-><init>()V

    invoke-virtual {v2, v1}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->RECORDING_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x3e80

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->ENCODING_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->SPEECH_DETECTION_DONE_IN_SDK:Z

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const-string/jumbo v3, "noauth-us-dcog-rel-bixby.samsung-svoice.com"

    sget-boolean v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->USE_TLS:Z

    const-string/jumbo v5, "/system/etc/security/cacerts/399e7759.0"

    const/16 v6, 0x1bb

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const-string/jumbo v3, "dcog"

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x29a

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/vsf/SpeechRecognizer$Config;->setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/vsf/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Lcom/samsung/vsf/SpeechRecognizer$Config;)Lcom/samsung/vsf/SpeechRecognizer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v2, p0}, Lcom/samsung/vsf/SpeechRecognizer;->setListener(Lcom/samsung/vsf/RecognitionListener;)V

    return-void
.end method

.method private getCurrentLocale()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v3, "VoiceCommandHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "curLocaleIso : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ko_kr"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v2, "ko-KR"

    const-string/jumbo v3, "VoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_KOREAN"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const-string/jumbo v3, "en_us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "en-US"

    const-string/jumbo v3, "VoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_ENG_US"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "es_us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v2, "es-US"

    const-string/jumbo v3, "VoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_SPANISH_US"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "zh_cn"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "zh-CN"

    const-string/jumbo v3, "VoiceCommandHelper"

    const-string/jumbo v4, "set locale to : RecognizerConstants.LOCALE_CHINESE"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onBeginningOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBufferReceived([S)V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onBufferReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onEndOfSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "VoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onErrorString(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "VoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onErrorString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPartialResults(Ljava/util/Properties;)V
    .locals 3

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onPartialResults"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "VoiceCommandHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPartial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "utterance"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onReadyForSpeech"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResults(Ljava/util/Properties;)V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onResults"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    const-string/jumbo v1, "utterance"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRmsChanged(I)V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "onRmsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startListening()V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->startListening()V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const-string/jumbo v0, "VoiceCommandHelper"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->mRecognizer:Lcom/samsung/vsf/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/samsung/vsf/SpeechRecognizer;->stopListening()V

    return-void
.end method
