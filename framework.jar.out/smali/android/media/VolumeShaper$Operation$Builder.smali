.class public final Landroid/media/VolumeShaper$Operation$Builder;
.super Ljava/lang/Object;
.source "VolumeShaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeShaper$Operation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mFlags:I

.field mReplaceId:I

.field mXOffset:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method public constructor <init>(Landroid/media/VolumeShaper$Operation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->-get1(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->-get0(Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    invoke-static {p1}, Landroid/media/VolumeShaper$Operation;->-get2(Landroid/media/VolumeShaper$Operation;)F

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-void
.end method

.method private setFlags(I)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 3

    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "flag has unknown bits set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x4

    or-int/2addr v0, p1

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method


# virtual methods
.method public build()Landroid/media/VolumeShaper$Operation;
    .locals 5

    new-instance v0, Landroid/media/VolumeShaper$Operation;

    iget v1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    iget v2, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    iget v3, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/VolumeShaper$Operation;-><init>(IIFLandroid/media/VolumeShaper$Operation;)V

    return-object v0
.end method

.method public createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public defer()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mReplaceId:I

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    :goto_0
    return-object p0

    :cond_0
    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    goto :goto_0
.end method

.method public reverse()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    xor-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method

.method public setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;
    .locals 2

    const/high16 v0, -0x80000000

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative xOffset not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "xOffset > 1.f not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Landroid/media/VolumeShaper$Operation$Builder;->mXOffset:F

    return-object p0
.end method

.method public terminate()Landroid/media/VolumeShaper$Operation$Builder;
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/VolumeShaper$Operation$Builder;->mFlags:I

    return-object p0
.end method
