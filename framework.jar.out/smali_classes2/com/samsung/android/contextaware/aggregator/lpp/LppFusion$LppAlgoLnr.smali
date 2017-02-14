.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;
.super Ljava/lang/Object;
.source "LppFusion.java"

# interfaces
.implements Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LppAlgoLnr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;


# direct methods
.method private constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)V

    return-void
.end method


# virtual methods
.method public logData(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    return-void
.end method

.method public onUpdate(Landroid/location/Location;)V
    .locals 2

    const-string/jumbo v0, "LppFusion"

    const-string/jumbo v1, "LppAlgoLnr: onUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpdateLPPtraj(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v1, "LppFusion"

    const-string/jumbo v2, "onUpdateLPPtraj"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get5(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->lppUpdate(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->AddCoordinate(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get6(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->AddGPSCoordinate(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get4(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public requestLoc()V
    .locals 0

    return-void
.end method

.method public status(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    iput-object p1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    invoke-static {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->-wrap3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    return-void
.end method
