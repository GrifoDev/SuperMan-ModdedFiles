.class Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;
.super Ljava/lang/Object;
.source "SmartNetworkSwitchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->buildExcludedApPref(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Landroid/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

.field final synthetic val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field final synthetic val$networkId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->val$networkId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v1, "SmartNetworkSwitchSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Excluded Preference click!, skipInternetCheck value (before) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->skipInternetCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->val$networkId:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f122114

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1213b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$1;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->val$mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$1;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f121fb5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4$2;-><init>(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get0(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings$4;->this$0:Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;->-get1(Lcom/samsung/android/settings/wifi/SmartNetworkSwitchSettings;)I

    move-result v2

    const v3, 0x7f120a6e

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    return v5
.end method
