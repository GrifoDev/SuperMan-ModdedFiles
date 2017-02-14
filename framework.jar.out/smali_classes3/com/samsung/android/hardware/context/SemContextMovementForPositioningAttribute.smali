.class public Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextMovementForPositioningAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextMovementForPositioningAttribute"


# instance fields
.field private mMoveDistanceThrs:D

.field private mMoveDurationThrs:I

.field private mMoveMinDurationThrs:I

.field private mNomoveDurationThrs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v0, 0x3c

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(IIDI)V
    .locals 3

    const/16 v0, 0x3c

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    iput-wide p3, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    iput p5, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/16 v0, 0x3c

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    return-void
.end method

.method private setAttribute()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "nomove_duration_thrs"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "move_duration_thrs"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "move_distance_thrs"

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string/jumbo v1, "move_min_duration_trhs"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x9

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mNomoveDurationThrs:I

    if-gez v0, :cond_0

    const-string/jumbo v0, "SemContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The nomove duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDurationThrs:I

    if-gez v0, :cond_1

    const-string/jumbo v0, "SemContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveDistanceThrs:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    const-string/jumbo v0, "SemContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move distance threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextMovementForPositioningAttribute;->mMoveMinDurationThrs:I

    if-gez v0, :cond_3

    const-string/jumbo v0, "SemContextMovementForPositioningAttribute"

    const-string/jumbo v1, "The move minimum duration threshold is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
