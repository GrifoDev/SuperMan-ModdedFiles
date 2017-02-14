.class public Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;
.super Ljava/lang/Object;
.source "BNRItem.java"


# instance fields
.field private data:Ljava/lang/String;

.field private localId:Ljava/lang/String;

.field private size:J

.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->localId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->data:Ljava/lang/String;

    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->setTimestamp(J)V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->size:J

    return-wide v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->timestamp:J

    return-wide v0
.end method

.method public setTimestamp(J)V
    .locals 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int/lit8 v0, v1, 0xd

    if-gtz v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->timestamp:J

    return-void

    :cond_0
    long-to-double v2, p1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long p1, v2

    goto :goto_0
.end method
