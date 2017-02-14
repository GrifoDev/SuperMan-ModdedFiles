.class Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;
.super Ljava/lang/Object;
.source "BatteryInfoSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BatteryStatus"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get1(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "BatteryLevel"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "FCCCertification"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "fcc_id"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "RATED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "rated_value"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v4, "BatteryCapacity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    const-string/jumbo v5, "battery_capacity"

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-virtual {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings$3;->this$0:Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/BatteryInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
