.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->addPasswordPreference(I)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    const v3, 0x7f121763

    const v4, 0x7f120a40

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get26(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get26(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiApSettings"

    const-string/jumbo v3, "FirstTime Configuration dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap23(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set7(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get27(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "wifi_ap_powersave_mode_checked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-static {v2, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set11(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Z)Z

    :cond_2
    :goto_0
    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "WifiApSettings"

    const-string/jumbo v2, "Dialog is already shown"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap23(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;I)V

    goto :goto_0
.end method
