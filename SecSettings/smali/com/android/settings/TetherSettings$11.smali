.class Lcom/android/settings/TetherSettings$11;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "pre_wifi_state_for_usb_tether"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v4, "TetheringSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DIALOG_USB_TETHER_WARNING_WIFI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "pre_wifi_state_for_usb_tether"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4}, Lcom/android/settings/TetherSettings;->-get10(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4}, Lcom/android/settings/TetherSettings;->-get4(Lcom/android/settings/TetherSettings;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "TetherPref"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_dns_first_usb_tether_dialog"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4}, Lcom/android/settings/TetherSettings;->-get5(Lcom/android/settings/TetherSettings;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4, v8}, Lcom/android/settings/TetherSettings;->-set2(Lcom/android/settings/TetherSettings;Z)Z

    iget-object v4, p0, Lcom/android/settings/TetherSettings$11;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v4, v8}, Lcom/android/settings/TetherSettings;->-wrap4(Lcom/android/settings/TetherSettings;I)V

    goto :goto_1
.end method
