.class Lcom/android/settings/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/ZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-static {v5}, Lcom/android/settings/ZonePicker;->-get0(Lcom/android/settings/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v5, v0}, Lcom/android/settings/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v5, "SetHomeTimeZoneSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "CityName"

    const-string/jumbo v7, "match"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "SetHomeTimeZone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v5}, Lcom/android/settings/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "homecity_timezone"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "CityName"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "yes"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "SetHomeTimeZone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v5}, Lcom/android/settings/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    invoke-virtual {v6}, Lcom/android/settings/ZonePicker;->getView()Landroid/view/View;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v5, v6, v3, v8, v9}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "CityName"

    const-string/jumbo v7, "AlreadySet"

    const-string/jumbo v8, "no"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v6, "SetHomeTimeZone"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/ZonePicker$1;->this$0:Lcom/android/settings/ZonePicker;

    iget-object v5, v5, Lcom/android/settings/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
