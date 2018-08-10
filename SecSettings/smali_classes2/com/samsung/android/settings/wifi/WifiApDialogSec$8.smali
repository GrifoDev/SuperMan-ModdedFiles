.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;
.super Ljava/lang/Object;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0a099c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get19(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "mWifiAp5gDoNotShowAgain  is Checked"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get14(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$8;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get14(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "WIFI_AP_5G_DO_NOTSHOW_AGAIN"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method
