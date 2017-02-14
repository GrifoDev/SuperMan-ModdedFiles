.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/app/AlertDialog;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$5;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V

    goto :goto_0
.end method
