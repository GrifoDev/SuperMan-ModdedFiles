.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 4

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "PowerSavingModePopupConfirm"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get6(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get7(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "UltraPowerSavingModeHome"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/widget/RoundButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/widget/RoundButtonView;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "PowerSavingModePopupCustomize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "UltraPowerSavingModePopupCustomize"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get3(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->performClick()Z

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$2;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->-get4(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_1
.end method
