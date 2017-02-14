.class public Lcom/samsung/android/settings/powersaving/BatteryWorker;
.super Ljava/lang/Object;
.source "BatteryWorker.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/BatteryWorker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBatteryLevel()D
    .locals 10

    const/4 v9, -0x1

    iget-object v6, p0, Lcom/samsung/android/settings/powersaving/BatteryWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "level"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "scale"

    invoke-virtual {v0, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-double v4, v6

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-ltz v1, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_0

    int-to-double v6, v1

    div-double v2, v6, v4

    :cond_0
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v2

    return-wide v6
.end method
