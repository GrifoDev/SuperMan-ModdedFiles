.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;
.super Ljava/lang/Object;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QData"
.end annotation


# instance fields
.field private listAPDR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field private listLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private loc:Landroid/location/Location;

.field private msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    return-object v0
.end method

.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_PASS_LOC_BATCH_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v4, :cond_4

    :cond_2
    check-cast p2, Landroid/location/Location;

    iput-object p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;

    :cond_3
    return-void

    :cond_4
    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_BATCH_LOC_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v4, :cond_5

    sget-object v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LOCATION_LIST_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v4, :cond_3

    :cond_5
    move-object v4, p2

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v3, v4, [Landroid/location/Location;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/location/Location;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    const/4 v4, 0x0

    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v3, v4

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;

    new-instance v7, Landroid/location/Location;

    invoke-direct {v7, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
