.class Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiManageNetworkPrefController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController$1;->this$0:Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;->-wrap0(Lcom/samsung/android/settings/wifi/WifiManageNetworkPrefController;)V

    return-void
.end method
