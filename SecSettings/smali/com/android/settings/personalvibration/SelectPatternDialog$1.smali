.class Lcom/android/settings/personalvibration/SelectPatternDialog$1;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalvibration/SelectPatternDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/personalvibration/SelectPatternDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v0, "SetVibrationpattern"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, -0x1

    const-string/jumbo v0, "basic call"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get2(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get2(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v6

    :cond_1
    const/4 v0, -0x1

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPatterns"

    const-string/jumbo v2, "Match"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string/jumbo v0, "heartbeat"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "ticktock"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x2

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "waltz"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v3, 0x3

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "zig-zig-zig"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    iget v0, v0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v3, v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPatterns"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPatterns"

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get1(Lcom/android/settings/personalvibration/SelectPatternDialog;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/personalvibration/SelectPatternDialog;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPatterns"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "VibrationPatterns"

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "Vibrationpattern"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings/personalvibration/SelectPatternDialog;

    invoke-static {v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->-get0(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2
.end method
