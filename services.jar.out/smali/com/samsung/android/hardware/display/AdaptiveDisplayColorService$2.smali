.class Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v3

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v6

    float-to-int v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v0, v0, v6

    float-to-int v5, v0

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIIII)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v7, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v0, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    goto :goto_0
.end method
