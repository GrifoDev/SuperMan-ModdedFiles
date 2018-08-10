.class Lcom/android/settings/wifi/WifiSummaryUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->-get0(Lcom/android/settings/wifi/WifiSummaryUpdater;)Lcom/android/settingslib/wifi/WifiStatusTracker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/wifi/WifiStatusTracker;->handleBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater$1;->this$0:Lcom/android/settings/wifi/WifiSummaryUpdater;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;->-wrap0(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    return-void
.end method
