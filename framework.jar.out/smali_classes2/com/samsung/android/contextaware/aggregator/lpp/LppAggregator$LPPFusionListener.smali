.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;
.super Ljava/lang/Object;
.source "LppAggregator.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LPPFusionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)V

    return-void
.end method


# virtual methods
.method public gpsAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsAvailable()V

    return-void
.end method

.method public gpsBatchStarted()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsBatchStarted()V

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsOffBatchStopped()V

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsOnBatchStopped()V

    return-void
.end method

.method public gpsUnavailable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->gpsUnavailable()V

    return-void
.end method

.method public lppStatus(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public lppUpdate(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "LppAggregator"

    const-string/jumbo v1, "LPPUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    const-string/jumbo v0, "LppAggregator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loc time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$LPPFusionListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->-get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->locationUpdate(Landroid/location/Location;)V

    :cond_0
    return-void
.end method
