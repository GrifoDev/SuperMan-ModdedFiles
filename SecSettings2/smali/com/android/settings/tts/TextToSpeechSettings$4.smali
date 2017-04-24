.class Lcom/android/settings/tts/TextToSpeechSettings$4;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const-string/jumbo v5, "TextToSpeechSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v1

    mul-int/lit8 v3, v1, 0x6

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v6, "tts_default_rate"

    invoke-static {v5, v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap0(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v2

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v5}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_1
    const-string/jumbo v5, "TextToSpeechUp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v6, "tts_default_rate"

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x14

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "TextToSpeechDown"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v6, "tts_default_rate"

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings$4;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, -0x14

    const-string/jumbo v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStateReceived: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " curruentSpeech : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "TextToSpeechMax"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v3, 0x258

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v5, "TextToSpeechMin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0
.end method
