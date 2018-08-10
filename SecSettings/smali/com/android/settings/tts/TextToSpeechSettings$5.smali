.class Lcom/android/settings/tts/TextToSpeechSettings$5;
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

    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/16 v9, 0x64

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const-string/jumbo v6, "TextToSpeechSet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_2

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1

    if-gt v2, v9, :cond_1

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v6, "TextToSpeechUpByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_5

    :try_start_1
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_4

    if-gt v2, v9, :cond_4

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_4
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "TextToSpeechDownByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_8

    :try_start_3
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_7

    if-gt v2, v9, :cond_7

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v6, "TextToSpeechUp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "TextToSpeechMax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_a
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x258

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SpeechRate"

    const-string/jumbo v8, "AlreadyMax"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v6, "TextToSpeechUp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, 0x14

    :goto_1
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap7(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x258

    goto :goto_1

    :cond_d
    const-string/jumbo v6, "TextToSpeechDown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "TextToSpeechMin"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_e
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "SpeechRate"

    const-string/jumbo v8, "AlreadyMin"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v6, "TextToSpeechDown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, -0x14

    :goto_2
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_rate"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap7(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xa

    goto :goto_2

    :cond_11
    const-string/jumbo v6, "IncreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_12

    const-string/jumbo v6, "MaximizePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_12
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x190

    if-ne v6, v7, :cond_13

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "AlreadyMax"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v6, "IncreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, 0x14

    :goto_3
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap6(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0x190

    goto :goto_3

    :cond_15
    const-string/jumbo v6, "MinimizePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string/jumbo v6, "DecreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    :cond_16
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    const/16 v7, 0x19

    if-ne v6, v7, :cond_17

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "AlreadyMin"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v6, "DecreasePitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v6

    add-int/lit8 v4, v6, -0x14

    :goto_4
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    invoke-static {v6, v7, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6, v3}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap6(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap5(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_18
    const/16 v4, 0x19

    goto :goto_4

    :cond_19
    const-string/jumbo v6, "SetPitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_1b

    :try_start_5
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1a

    if-gt v2, v9, :cond_1a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1a
    :try_start_6
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :cond_1b
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v6, "IncreasePitchByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_1e

    :try_start_7
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_1d

    if-gt v2, v9, :cond_1d

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1d
    :try_start_8
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :cond_1e
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v6, "DecreasePitchByPercentage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v6

    if-lez v6, :cond_21

    :try_start_9
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v2

    const-string/jumbo v6, "EmSettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stateId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_20

    if-gt v2, v9, :cond_20

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v7, "tts_default_pitch"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;II)I

    move-result v0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "Yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    const-string/jumbo v6, "TextToSpeechSettings"

    const-string/jumbo v7, "failed to get param for bixby. "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_20
    :try_start_a
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    :cond_21
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeechSet"

    const-string/jumbo v8, "Valid"

    const-string/jumbo v9, "No"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_22
    const-string/jumbo v6, "ResetSpeechRate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ResetSpeechRate"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_23
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get9(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    :cond_24
    const-string/jumbo v6, "ResetPitch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "ResetPitch"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get9(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    :cond_26
    const-string/jumbo v6, "ListenToAnExample"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_28

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_27

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "Yes"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_27
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    :cond_28
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "Available"

    const-string/jumbo v8, "No"

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "TextToSpeech"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v6, "PreferredEngine"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    const-string/jumbo v7, "PreferredEngine"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2a
    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings$5;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v6}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/preference/Preference;->performClick()V

    goto/16 :goto_0
.end method
