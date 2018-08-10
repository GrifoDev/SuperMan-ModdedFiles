.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocManListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public batchLocListUpdate(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v2, v3, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LppLocMan: Batch PosIn => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public batchLocUpdate(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method public gpsAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsAvailable()V

    return-void
.end method

.method public gpsBatchStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsBatchStarted()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsBatchStopped()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get7(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setGPSBatchingStatus(Z)V

    return-void
.end method

.method public gpsOffBatchStopped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOffBatchStopped()V

    return-void
.end method

.method public gpsOnBatchStopped()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsOnBatchStopped()V

    return-void
.end method

.method public gpsUnavailable()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->gpsUnavailable()V

    return-void
.end method

.method public locPassBatchUpdate(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LppLocMan: Passive Batch PosIn => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public locPassUpdate(Landroid/location/Location;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LppLocMan: Passive PosIn => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public locUpdate(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    sget-object v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-static {v2, v3, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/location/Location;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/Location;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "LppLocMan: GPS/NLP PosIn => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v6, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Landroid/location/Location;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public locationNotFound()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get9(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_NOT_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    return-void
.end method

.method public logData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public logNmeaData(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    return-void
.end method
