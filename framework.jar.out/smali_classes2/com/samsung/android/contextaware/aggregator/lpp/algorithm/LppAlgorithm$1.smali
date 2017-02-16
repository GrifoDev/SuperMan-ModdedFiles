.class Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)I
    .locals 4
    .param p1, "LppLoc1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p2, "LppLoc2"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 212
    iget-wide v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-wide v2, p2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 213
    :cond_0
    iget-wide v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-wide v2, p2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "LppLoc1"    # Ljava/lang/Object;
    .param p2, "LppLoc2"    # Ljava/lang/Object;

    .prologue
    .line 210
    check-cast p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .end local p1    # "LppLoc1":Ljava/lang/Object;
    check-cast p2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .end local p2    # "LppLoc2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;->compare(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)I

    move-result v0

    return v0
.end method
