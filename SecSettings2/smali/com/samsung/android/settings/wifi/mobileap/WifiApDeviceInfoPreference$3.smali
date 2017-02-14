.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Ssid changed so need to apply new ssid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->creatApConfigWithCurrentSsid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
