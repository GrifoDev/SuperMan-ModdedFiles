.class final synthetic Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f0:I

    iget v4, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f1:I

    iget-object v5, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$-com_android_systemui_util_AsyncSensorManager_2518(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)V

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f0:I

    iput p2, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$6;->$m$0()V

    return-void
.end method
