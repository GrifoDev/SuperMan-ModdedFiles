.class Lcom/samsung/android/settings/NewModePreview$6;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceIncrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ColorBalanceBlueApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x1

    :goto_0
    const/4 v2, 0x1

    if-ne v8, v2, :cond_1

    if-eqz v14, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "AdaptiveDisplay"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2
    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap0(Lcom/samsung/android/settings/NewModePreview;)V

    :cond_4
    const-string/jumbo v2, "ScreenModeApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "Adaptivedisplay"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v5, 0x0

    :cond_5
    :goto_1
    const/4 v2, -0x1

    if-ne v5, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_6
    :goto_2
    return-void

    :cond_7
    const-string/jumbo v2, "AMOLEDcinema"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "AMOLEDphoto"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v5, 0x2

    goto :goto_1

    :cond_9
    const-string/jumbo v2, "Basic"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-ne v5, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x1

    :goto_3
    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap1(Lcom/samsung/android/settings/NewModePreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluelightFilter"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_c
    const/4 v14, 0x0

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "BluelightFilter"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Object"

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v2, "ColorBalance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_automatic_setting"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v2, 0x1

    if-eq v8, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_14
    const/4 v10, -0x1

    const/16 v16, 0x0

    const-string/jumbo v2, "ColorBalanceStepApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_16
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    :cond_17
    if-nez v16, :cond_19

    if-ltz v10, :cond_18

    const/4 v2, 0x4

    if-le v10, v2, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_0
    move-exception v13

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v4, v4, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_19
    if-eqz v16, :cond_1a

    if-ltz v10, :cond_18

    const/16 v2, 0x64

    if-gt v10, v2, :cond_18

    :cond_1a
    if-eqz v16, :cond_1b

    rem-int/lit8 v2, v10, 0x5

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1d

    mul-int/lit8 v2, v10, 0x5

    div-int/lit8 v10, v2, 0x64

    :cond_1b
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    if-eqz v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    const/4 v4, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    rsub-int/lit8 v18, v17, 0x4

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current preset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ColorBalanceWarm"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x4

    move/from16 v0, v18

    if-lt v0, v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceWarm"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_1d
    mul-int/lit8 v2, v10, 0x5

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v10, v2, 0x1

    goto/16 :goto_4

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    add-int/lit8 v3, v18, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    add-int/lit8 v4, v17, -0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceWarm"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_20
    const-string/jumbo v2, "ColorBalanceCool"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    if-gtz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceCool"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    add-int/lit8 v3, v18, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    add-int/lit8 v4, v17, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ColorBalanceCool"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_23
    move/from16 v0, v18

    if-ne v10, v0, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get11(Lcom/samsung/android/settings/NewModePreview;)Lcom/samsung/android/settings/widget/IntervalSeekBar;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/samsung/android/settings/widget/IntervalSeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sec_display_preset_index"

    rsub-int/lit8 v4, v10, 0x4

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_27
    const-string/jumbo v2, "ColorBalanceIncrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_28
    const/4 v15, 0x1

    const-string/jumbo v2, "ColorBalanceDecrease"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v15, 0x0

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "Red"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "Green"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    const-string/jumbo v2, "Blue"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2d
    const/16 v21, 0x0

    const/4 v12, 0x0

    const-string/jumbo v2, "Red"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_red"

    :goto_5
    if-eqz v21, :cond_35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v19, v2, 0xb

    if-eqz v15, :cond_32

    const/16 v2, 0xb

    move/from16 v0, v19

    if-lt v0, v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_2e
    const-string/jumbo v2, "Green"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_green"

    goto :goto_5

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_blue"

    goto :goto_5

    :cond_30
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v19, 0x1

    add-int/lit8 v3, v3, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v19, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_32
    if-gtz v19, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_33
    add-int/lit8 v2, v19, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v19, -0x1

    add-int/lit8 v3, v3, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    add-int/lit8 v4, v19, -0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_34
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_36
    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string/jumbo v2, "ColorBalanceBlueApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_39
    const/4 v10, -0x1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    if-ltz v10, :cond_3a

    const/16 v2, 0x64

    if-le v10, v2, :cond_3b

    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :catch_1
    move-exception v13

    const-string/jumbo v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmSettingsManager NumberFormatException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v4, v4, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "valid"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_3b
    const/4 v11, -0x1

    rem-int/lit8 v2, v10, 0xb

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3d

    mul-int/lit8 v2, v10, 0xb

    div-int/lit8 v11, v2, 0x64

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get9(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get10()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_3c
    const/16 v21, 0x0

    const/4 v12, 0x0

    const-string/jumbo v2, "ColorBalanceRedApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get3(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_red"

    :goto_7
    if-eqz v21, :cond_42

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v19, v2, 0xb

    move/from16 v0, v19

    if-ne v0, v11, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_3d
    mul-int/lit8 v2, v10, 0xb

    div-int/lit8 v2, v2, 0x64

    add-int/lit8 v11, v2, 0x1

    goto/16 :goto_6

    :cond_3e
    const-string/jumbo v2, "ColorBalanceGreenApply"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_green"

    goto :goto_7

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get1(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v21

    const-string/jumbo v12, "sec_display_temperature_blue"

    goto :goto_7

    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    add-int/lit8 v3, v11, -0xb

    invoke-static {v2, v12, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v3, v4, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "Level"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_43
    const-string/jumbo v2, "ScreenEdgeColorBalance"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isSupportPocSettings(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get5(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-get4(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/NewModePreview;->-wrap2(Lcom/samsung/android/settings/NewModePreview;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_2

    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlgForNotSupportMenu()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/NewModePreview$6;->this$0:Lcom/samsung/android/settings/NewModePreview;

    iget-object v2, v2, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
