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

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap1(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get11(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get6(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get4(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    float-to-int v2, v4

    const-string/jumbo v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mLightSensorR : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mLightSensorG : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , mLightSensorB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , lux : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v3, v1, v0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-wrap2(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v4

    if-gt v4, v7, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-get5(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-static {v4, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-set7(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I

    goto :goto_0
.end method
