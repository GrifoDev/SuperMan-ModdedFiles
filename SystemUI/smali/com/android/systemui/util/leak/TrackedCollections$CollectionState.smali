.class Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;
.super Ljava/lang/Object;
.source "TrackedCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/TrackedCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollectionState"
.end annotation


# instance fields
.field halfwayCount:I

.field lastCount:I

.field lastUptime:J

.field startUptime:J

.field tag:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    iput v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;-><init>()V

    return-void
.end method

.method private ratePerHour(JIJI)F
    .locals 4

    cmp-long v0, p1, p4

    if-gez v0, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const/high16 v0, 0x7fc00000    # NaNf

    return v0

    :cond_1
    if-ltz p6, :cond_0

    int-to-float v0, p6

    int-to-float v1, p3

    sub-float/2addr v0, v1

    sub-long v2, p4, p1

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    mul-float/2addr v0, v1

    const v1, 0x476a6000    # 60000.0f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-string/jumbo v7, "%s: %.2f (start-30min) / %.2f (30min-now) / %.2f (start-now) (growth rate in #/hour); %d (current size)"

    const/4 v0, 0x5

    new-array v10, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v10, v1

    iget-wide v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    iget-wide v4, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    const-wide/32 v12, 0x1b7740

    add-long/2addr v4, v12

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v10, v1

    iget-wide v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    const-wide/32 v2, 0x1b7740

    add-long v1, v0, v2

    iget v3, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    move-object v0, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v10, v1

    iget-wide v1, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    iget v6, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->ratePerHour(JIJI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v10, v1

    iget v0, p0, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v10, v1

    invoke-virtual {p1, v7, v10}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method
