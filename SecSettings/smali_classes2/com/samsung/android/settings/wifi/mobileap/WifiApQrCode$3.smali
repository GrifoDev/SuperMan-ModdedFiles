.class Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;
.super Ljava/lang/Object;
.source "WifiApQrCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->mSaveQrWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_qr_code_generated"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrCode;->updateView(Z)V

    return-void
.end method
