.class public Lcom/samsung/vsf/SpeechRecognizer$Config;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vsf/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field private config:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    return-object v0
.end method

.method public setASRDictationModel(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "asrDictModels"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "epdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    const/16 p1, 0x190

    goto :goto_0
.end method

.method public setIsEncodingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "needEncoding"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsPCMDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "pcmDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsRecordingRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "clientOwnsRecorder"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSPXDumpRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "spxDumpNeeded"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSpeechDetectionNotificationRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "requireSpeechDetection"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIsSpeechDetectionRequired(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "clientOwnsSpeechDetector"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSPDThresholdDuration(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "spdDurationThreshHold"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setSamplingRate(I)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "samplingRate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public setServerDetails(Ljava/lang/String;IZLjava/lang/String;)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "serverAddress"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "portNumber"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "useTLS"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "certPath"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTOSAccepted(ZZ)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "tos_full"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "tos_optional"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setUsePLM(Z)Lcom/samsung/vsf/SpeechRecognizer$Config;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vsf/SpeechRecognizer$Config;->config:Landroid/os/Bundle;

    const-string/jumbo v1, "usePLM"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method
