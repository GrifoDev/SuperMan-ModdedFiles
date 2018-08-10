.class Lcom/samsung/android/settings/wifi/WifiWarning$3;
.super Ljava/lang/Object;
.source "WifiWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarning;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const v8, 0x7f121180

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-ne v2, v6, :cond_5

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get3(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set1(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-wrap4(Lcom/samsung/android/settings/wifi/WifiWarning;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Landroid/net/wifi/WifiManager;->semSetWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "VZW"

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get3(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get5(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "SAMSUNG_HOTSPOT"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiWarning;->-set1(Lcom/samsung/android/settings/wifi/WifiWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get7(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get4(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get4(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_8
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get10(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get1(Lcom/samsung/android/settings/wifi/WifiWarning;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->-get9(Lcom/samsung/android/settings/wifi/WifiWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiWarning$3;->this$0:Lcom/samsung/android/settings/wifi/WifiWarning;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiWarning;->finish()V

    return-void
.end method
