.class Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummarySecondPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummarySecondPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummarySecondPage;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;->this$0:Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->-get1()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "DataUsageSummarySecondPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",update data compression state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;->this$0:Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->-get0(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;->this$0:Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->-get0(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateEnabled()V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummarySecondPage$1;->this$0:Lcom/android/settings/datausage/DataUsageSummarySecondPage;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummarySecondPage;->-get0(Lcom/android/settings/datausage/DataUsageSummarySecondPage;)Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/DataSavingChnPreference;->updateSwitchState()V

    :cond_1
    return-void
.end method
