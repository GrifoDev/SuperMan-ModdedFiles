.class Lcom/samsung/android/settings/display/AutoBrightness$3;
.super Ljava/lang/Object;
.source "AutoBrightness.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AutoBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get1(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ResetBrightnessUsagePatterns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get3(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get1(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get1(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "State"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get1(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AutoBrightness"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$3;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get1(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    return-void
.end method
