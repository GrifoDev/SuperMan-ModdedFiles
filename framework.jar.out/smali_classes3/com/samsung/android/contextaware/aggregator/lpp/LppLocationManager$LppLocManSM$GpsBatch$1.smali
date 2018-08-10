.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;
.super Ljava/lang/Object;
.source "LppLocationManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->processMessage(Landroid/os/Message;)Z
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
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;->this$2:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/location/Location;Landroid/location/Location;)I
    .locals 4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/location/Location;

    check-cast p2, Landroid/location/Location;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;->compare(Landroid/location/Location;Landroid/location/Location;)I

    move-result v0

    return v0
.end method
