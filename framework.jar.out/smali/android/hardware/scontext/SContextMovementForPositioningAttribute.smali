.class public Landroid/hardware/scontext/SContextMovementForPositioningAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextMovementForPositioningAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextMovementForPositioningAttribute"


# instance fields
.field private mMoveDistanceThrs:D

.field private mMoveDurationThrs:I

.field private mMoveMinDurationThrs:I

.field private mNomoveDurationThrs:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v0, 0x3c

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIDI)V
    .locals 3

    const/16 v0, 0x3c

    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    iput p1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput p2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    iput-wide p3, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    iput p5, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "nomove_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "move_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "move_distance_thrs"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "move_min_duration_trhs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The nomove duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move distance threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    if-gez v0, :cond_3

    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move minimum duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
