.class Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;
.super Ljava/lang/Object;
.source "SemContextLocationCoreAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FusedBatchOption"
.end annotation


# instance fields
.field final distance_thrs:F

.field final flags:I

.field final max_power:D

.field final period:J

.field final user_info:I


# direct methods
.method constructor <init>(JIIDF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    iput p3, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    iput p4, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    iput-wide p5, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    iput p7, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    return-void
.end method


# virtual methods
.method isValid()Z
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.period is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->user_info:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.user_info is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->flags:I

    if-gez v0, :cond_2

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.flags is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->max_power:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.max_power is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextLocationCoreAttribute$FusedBatchOption;->distance_thrs:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    const-string/jumbo v0, "SemContextLocationCoreAttribute"

    const-string/jumbo v1, "FusedBatchOption.distance_thrs is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    const/4 v0, 0x1

    return v0
.end method
