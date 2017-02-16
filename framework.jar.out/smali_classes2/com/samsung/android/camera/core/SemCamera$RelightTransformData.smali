.class Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelightTransformData"
.end annotation


# instance fields
.field private mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

.field private number_of_faces:I

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;)[Lcom/samsung/android/camera/core/SemCamera$TransformData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    return-object v0
.end method

.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 11
    .param p1, "this$0"    # Lcom/samsung/android/camera/core/SemCamera;
    .param p2, "data"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1792
    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1835
    iput v6, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_faces:I

    .line 1841
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    .line 1795
    const/4 v1, 0x1

    .local v1, "index":I
    aget-byte v3, p2, v6

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_faces:I

    .line 1797
    iget v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_faces:I

    new-array v3, v3, [Lcom/samsung/android/camera/core/SemCamera$TransformData;

    iput-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    .line 1799
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    :goto_0
    iget v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_faces:I

    if-ge v0, v3, :cond_0

    .line 1800
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    new-instance v4, Lcom/samsung/android/camera/core/SemCamera$TransformData;

    invoke-direct {v4}, Lcom/samsung/android/camera/core/SemCamera$TransformData;-><init>()V

    aput-object v4, v3, v0

    .line 1802
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    new-array v4, v10, [I

    iput-object v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    .line 1803
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 1804
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v7

    .line 1805
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v8

    .line 1806
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 1808
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    const/4 v4, 0x6

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    .line 1809
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 1810
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v7

    .line 1811
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v8

    .line 1812
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 1813
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v10

    .line 1814
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 1816
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    const/4 v4, 0x6

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    .line 1817
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v6

    .line 1818
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v7

    .line 1819
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v8

    .line 1820
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v9

    .line 1821
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    aput v4, v3, v10

    .line 1822
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    const/4 v5, 0x5

    aput v4, v3, v5

    .line 1824
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    .line 1825
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    .line 1827
    iget-object v3, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v3, v3, v0

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    aget-byte v5, p2, v1

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    aget-byte v5, p2, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;->id:I

    .line 1799
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1792
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$RelightTransformData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camera/core/SemCamera;
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    return-void
.end method
