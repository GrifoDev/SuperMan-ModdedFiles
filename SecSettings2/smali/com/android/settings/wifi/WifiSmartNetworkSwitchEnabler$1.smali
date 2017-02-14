.class Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;
.super Landroid/database/ContentObserver;
.source "WifiSmartNetworkSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler$1;->this$0:Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;->-wrap0(Lcom/android/settings/wifi/WifiSmartNetworkSwitchEnabler;)V

    return-void
.end method
