.class Lcom/android/settings/fuelgauge/PowerUsageBase$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x64

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->-wrap0(Lcom/android/settings/fuelgauge/PowerUsageBase;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->-get0(Lcom/android/settings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageBase$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageBase;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->-get0(Lcom/android/settings/fuelgauge/PowerUsageBase;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
