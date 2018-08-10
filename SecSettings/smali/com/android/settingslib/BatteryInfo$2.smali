.class final Lcom/android/settingslib/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/os/BatteryStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/settingslib/BatteryInfo$2;->val$shortString:Z

    iput-object p3, p0, Lcom/android/settingslib/BatteryInfo$2;->val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;
    .locals 3

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Landroid/os/BatteryStats;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/BatteryStats;)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/settingslib/BatteryInfo$2;->val$shortString:Z

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/BatteryInfo$2;->val$callback:Lcom/android/settingslib/BatteryInfo$Callback;

    invoke-interface {v1, v0}, Lcom/android/settingslib/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settingslib/BatteryInfo;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/BatteryStats;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/BatteryInfo$2;->onPostExecute(Landroid/os/BatteryStats;)V

    return-void
.end method
