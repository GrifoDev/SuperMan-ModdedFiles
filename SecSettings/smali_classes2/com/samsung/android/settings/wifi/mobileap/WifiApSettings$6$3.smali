.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get29(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get27(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set18(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_pmf_checked"

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get26(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "wifi_ap_powersave_mode_checked"

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$3;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
