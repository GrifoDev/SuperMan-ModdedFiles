.class Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;->this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail$1;->this$1:Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;->-wrap2(Lcom/android/systemui/qs/tiles/BatterySaverTile$BatteryDetail;)V

    return-void
.end method
