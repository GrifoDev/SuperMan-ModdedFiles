.class Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

.field final synthetic val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->this$1:Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    iput-object p2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->this$1:Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    iget-object v0, v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    iget-object v1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap1(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;IZ)V

    const-string/jumbo v0, " SmartNetworkSwitchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "skipInternetCheck value (changed) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2$1;->this$1:Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;

    iget-object v0, v0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
