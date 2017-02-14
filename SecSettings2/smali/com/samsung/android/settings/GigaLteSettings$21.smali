.class Lcom/samsung/android/settings/GigaLteSettings$21;
.super Ljava/lang/Object;
.source "GigaLteSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaLteSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaLteSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set1(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set0(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get7(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/GigaLteSettings;->-set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings$21;->this$0:Lcom/samsung/android/settings/GigaLteSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaLteSettings;->-get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method
