.class final synthetic Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/TriggerEventListener;

    iget-object v2, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/AsyncSensorManager;->lambda$-com_android_systemui_util_AsyncSensorManager_4418(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/-$Lambda$ciFdFM7iEa_W52MJO7CjiSPHfOo$2;->$m$0()V

    return-void
.end method
