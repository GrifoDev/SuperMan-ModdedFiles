.class Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureWifiPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SecureWifiPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecureWifiPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/SecureWifiPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SecureWifiPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/SecureWifiPrefController;)V

    return-void
.end method
