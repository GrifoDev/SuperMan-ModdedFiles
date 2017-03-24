.class Lcom/android/systemui/BatteryMeterView$1;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateStatusBarBatteryColour()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$1;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->-get0(Lcom/android/systemui/BatteryMeterView;)Lcom/android/systemui/BatteryMeterDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/BatteryMeterDrawable;->updateBatteryColor()V

    return-void
.end method
