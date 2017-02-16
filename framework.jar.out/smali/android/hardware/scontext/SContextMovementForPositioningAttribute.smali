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

    .prologue
    const/16 v0, 0x3c

    .line 42
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 43
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 42
    return-void
.end method

.method public constructor <init>(IIDI)V
    .locals 3
    .param p1, "nomoveDurationThrs"    # I
    .param p2, "moveDurationThrs"    # I
    .param p3, "moveDistanceThrs"    # D
    .param p5, "moveMinDurationThrs"    # I

    .prologue
    const/16 v0, 0x3c

    .line 64
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 31
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 33
    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 35
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 37
    const/4 v0, 0x5

    iput v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 66
    iput p1, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    .line 67
    iput p2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    .line 68
    iput-wide p3, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    .line 69
    iput p5, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    .line 70
    invoke-direct {p0}, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "nomove_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string/jumbo v1, "move_duration_thrs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 99
    const-string/jumbo v1, "move_distance_thrs"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 100
    const-string/jumbo v1, "move_min_duration_trhs"

    iget v2, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const/16 v1, 0x9

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 95
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 76
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    if-gez v0, :cond_0

    .line 77
    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The nomove duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v4

    .line 80
    :cond_0
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    if-gez v0, :cond_1

    .line 81
    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return v4

    .line 84
    :cond_1
    iget-wide v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 85
    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move distance threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v4

    .line 88
    :cond_2
    iget v0, p0, Landroid/hardware/scontext/SContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    if-gez v0, :cond_3

    .line 89
    const-string/jumbo v0, "SContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move minimum duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v4

    .line 92
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
