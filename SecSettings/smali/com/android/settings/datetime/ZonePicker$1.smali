.class Lcom/android/settings/datetime/ZonePicker$1;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datetime/ZonePicker;


# direct methods
.method constructor <init>(Lcom/android/settings/datetime/ZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 14

    const/4 v12, -0x1

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/datetime/ZonePicker;->-get1(Lcom/android/settings/datetime/ZonePicker;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v10, v0}, Lcom/android/settings/datetime/ZonePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v10, "SetHomeTimeZoneSet"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_2

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v3, -0x1

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/datetime/ZonePicker;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "homecity_timezone"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v3

    :cond_3
    invoke-virtual {v0, v3}, Landroid/widget/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string/jumbo v10, "display_label"

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/datetime/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v11}, Lcom/android/settings/datetime/ZonePicker;->getView()Landroid/view/View;

    move-result-object v11

    int-to-long v12, v5

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "CityName"

    invoke-virtual {v10, v11, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetHomeTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v10, "SetTimeZone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_8
    invoke-static {v0, v1}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndexForBixby(Landroid/widget/SimpleAdapter;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v12, :cond_9

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Match"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/settings/datetime/ZonePicker;->getTimeZoneIndex(Landroid/widget/SimpleAdapter;Ljava/util/TimeZone;)I

    move-result v2

    if-ne v5, v2, :cond_a

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v10}, Lcom/android/settings/datetime/ZonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-virtual {v11}, Lcom/android/settings/datetime/ZonePicker;->getView()Landroid/view/View;

    move-result-object v11

    int-to-long v12, v5

    invoke-virtual {v10, v11, v5, v12, v13}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SetTimeZone"

    const-string/jumbo v12, "Exist"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "SelectTimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v10, "SortAlphabetically"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/datetime/ZonePicker;->-get0(Lcom/android/settings/datetime/ZonePicker;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "Alphabetical"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "HometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-static {v10, v11}, Lcom/android/settings/datetime/ZonePicker;->-wrap0(Lcom/android/settings/datetime/ZonePicker;Z)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "Alphabetical"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "HometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_e
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v10, "SortByTimeZone"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    invoke-static {v10}, Lcom/android/settings/datetime/ZonePicker;->-get0(Lcom/android/settings/datetime/ZonePicker;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "TimezoneOrder"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "yes"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "HometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/settings/datetime/ZonePicker;->-wrap0(Lcom/android/settings/datetime/ZonePicker;Z)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "TimezoneOrder"

    const-string/jumbo v12, "AlreadySet"

    const-string/jumbo v13, "no"

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v11, "HometimeZone"

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_11
    iget-object v10, p0, Lcom/android/settings/datetime/ZonePicker$1;->this$0:Lcom/android/settings/datetime/ZonePicker;

    iget-object v10, v10, Lcom/android/settings/datetime/ZonePicker;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v11, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
