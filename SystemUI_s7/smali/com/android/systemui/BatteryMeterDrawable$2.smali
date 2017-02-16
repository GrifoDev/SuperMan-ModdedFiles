.class Lcom/android/systemui/BatteryMeterDrawable$2;
.super Landroid/os/Handler;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable$2;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$2;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-get0(Lcom/android/systemui/BatteryMeterDrawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable$2;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$2;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-get1(Lcom/android/systemui/BatteryMeterDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/android/systemui/BatteryMeterDrawable;->-set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable$2;->this$0:Lcom/android/systemui/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/android/systemui/BatteryMeterDrawable;->-wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
