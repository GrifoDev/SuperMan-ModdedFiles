.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    add-int/lit8 v4, p2, -0x1

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v4

    int-to-long v4, v4

    const v6, 0x7f121763

    const v7, 0x7f120a39

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I

    move-result v4

    if-eq v3, v4, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    const-string/jumbo v3, "WifiApSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WIFI_AP_TIMEOUT provider is set to : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "wifi_ap_timeout_setting"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4d

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "feature"

    const-string/jumbo v4, "MHTO"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "NEVER TIMEOUT"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get27(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap21(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v9, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/4 v5, 0x5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiApSettings"

    const-string/jumbo v4, "SettingNotFoundException occurs when Setting WIFI_AP_TIMEOUT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v10, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/16 v5, 0xa

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v11, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/16 v5, 0x1e

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_timeout_setting"

    const/16 v5, 0x3c

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v9, :cond_9

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "5 MINS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v10, :cond_a

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "10 MINS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v11, :cond_b

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "20 MINS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_c

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "30 MINS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$17;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get19(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)I

    move-result v3

    if-ne v3, v8, :cond_1

    const-string/jumbo v3, "extra"

    const-string/jumbo v4, "60 MINS"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
