.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;
.super Ljava/lang/Object;
.source "EdgeLightingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeLightingHistory"
.end annotation


# static fields
.field private static final MAX_EDGE_LIGHTING_HISTORY:I = 0x14

.field private static final MAX_HOST_HISTORY:I = 0x7


# instance fields
.field private mEdgeLightingHistory:[Ljava/lang/String;

.field private mEdgeLightingHistoryIdx:I

.field private mHostHistory:[Ljava/lang/String;

.field private mHostHistoryIdx:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    return-void
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v0, v3

    const-string/jumbo v2, "  [Host History] :"

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  [EL History] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method updateEdgeLightingHistory(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    aput-object v0, v2, v3

    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-lt v2, v1, :cond_1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    :cond_1
    return-void
.end method

.method updateHostHistory(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v1, v2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    if-ge v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    aput-object v0, v2, v3

    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    if-lt v2, v1, :cond_1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingManager$EdgeLightingHistory;->mHostHistoryIdx:I

    :cond_1
    return-void
.end method
