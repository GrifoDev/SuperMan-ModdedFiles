.class public final Landroid/media/VolumeShaper$Configuration$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDurationMs:D

.field private mId:I

.field private mInterpolatorType:I

.field private mOptionFlags:I

.field private mTimes:[F

.field private mType:I

.field private mVolumes:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Configuration;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iput v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iput-object v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getId()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getAllOptionFlags()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getInterpolatorType()I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getDuration()J

    move-result-wide v0

    long-to-double v0, v0

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getTimes()[F

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    invoke-virtual {p1}, Landroid/media/VolumeShaper$Configuration;->getVolumes()[F

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-void
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Configuration;
    .locals 11

    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v10, 0x1

    :goto_0
    iget-object v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v2, 0x1

    invoke-static {v0, v1, v10, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mType:I

    iget v2, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    iget v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    iget-wide v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/media/VolumeShaper$Configuration;-><init>(IIIDI[F[FLandroid/media/VolumeShaper$Configuration;)V

    return-object v0

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public invertVolumes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 9

    const/4 v8, 0x0

    iget v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v7, 0x1

    invoke-static {v5, v6, v1, v7}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v5, v8

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v5, v8

    const/4 v0, 0x1

    :goto_1
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_2

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v4, v5, v0

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v5, v0

    cmpl-float v5, v5, v2

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v5, v0

    goto :goto_2

    :cond_3
    add-float v3, v2, v4

    const/4 v0, 0x0

    :goto_3
    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v6, v6, v0

    sub-float v6, v3, v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public reflectTimes()Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v5, 0x1

    invoke-static {v3, v4, v1, v5}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v2, v3, v0

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v4, v4, v5

    sub-float v4, v6, v4

    aput v4, v3, v0

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    sub-float v5, v6, v2

    aput v5, v3, v4

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v2, v3, v0

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v5, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v0

    aget v4, v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    array-length v3, v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v4, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v4, v4, v0

    sub-float v4, v6, v4

    aput v4, v3, v0

    :cond_2
    return-object p0
.end method

.method public scaleToEndVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 10

    const/4 v9, 0x0

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v8, 0x1

    invoke-static {v6, v7, v2, v8}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    invoke-static {p1, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap1(FZ)V

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v6, v9

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    cmpl-float v6, v0, v5

    if-nez v6, :cond_1

    sub-float v3, p1, v5

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v8, v8, v1

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sub-float v6, p1, v5

    sub-float v7, v0, v5

    div-float v4, v6, v7

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    sub-float/2addr v7, v5

    mul-float/2addr v7, v4

    add-float/2addr v7, v5

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v6, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap2([FZ)V

    return-object p0
.end method

.method public scaleToStartVolume(F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 10

    const/4 v9, 0x0

    iget v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    const/4 v8, 0x1

    invoke-static {v6, v7, v2, v8}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    invoke-static {p1, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap1(FZ)V

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v5, v6, v9

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget v0, v6, v7

    cmpl-float v6, v0, v5

    if-nez v6, :cond_1

    sub-float v3, p1, v5

    const/4 v1, 0x0

    :goto_1
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    iget-object v8, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    aget v8, v8, v1

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v8, v9, v8

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    sub-float v6, p1, v0

    sub-float v7, v5, v0

    div-float v4, v6, v7

    const/4 v1, 0x0

    :goto_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    iget-object v7, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    aget v7, v7, v1

    sub-float/2addr v7, v0

    mul-float/2addr v7, v4

    add-float/2addr v7, v0

    aput v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    invoke-static {v6, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap2([FZ)V

    return-object p0
.end method

.method public setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, p2, v0, v2}, Landroid/media/VolumeShaper$Configuration;->-wrap0([F[FZZ)V

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mTimes:[F

    invoke-virtual {p2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mVolumes:[F

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-double v0, p1

    iput-wide v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mDurationMs:D

    return-object p0
.end method

.method public setId(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mId:I

    return-object p0
.end method

.method public setInterpolatorType(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid interpolatorType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput p1, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mInterpolatorType:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;
    .locals 3

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid bits in flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Configuration$Builder;->mOptionFlags:I

    return-object p0
.end method
