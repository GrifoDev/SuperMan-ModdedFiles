.class Lcom/samsung/android/settings/display/IconBackgrounds$1;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/IconBackgrounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/IconBackgrounds;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/IconBackgrounds;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IconFrameOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/display/IconBackgrounds$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/IconBackgrounds$1$1;-><init>(Lcom/samsung/android/settings/display/IconBackgrounds$1;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "IconFrameOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get0(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-static {v1}, Lcom/samsung/android/settings/display/IconBackgrounds;->-get1(Lcom/samsung/android/settings/display/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/display/IconBackgrounds$1$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/IconBackgrounds$1$2;-><init>(Lcom/samsung/android/settings/display/IconBackgrounds$1;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IconFrame"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    iget-object v1, v1, Lcom/samsung/android/settings/display/IconBackgrounds;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
