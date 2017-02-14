.class public final Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
.super Ljava/lang/Object;
.source "SparseRectFArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/SparseRectFArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SparseRectFArrayBuilder"
.end annotation


# static fields
.field private static INITIAL_SIZE:I


# instance fields
.field private mCoordinates:[F

.field private mCount:I

.field private mFlagsArray:[I

.field private mKeys:[I


# direct methods
.method static synthetic -get0(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[F
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)I
    .locals 1

    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;)[I
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    return-void
.end method

.method private checkIndex(I)V
    .locals 2

    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-lt v0, p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key must be greater than all existing keys."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private ensureBufferSize()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    if-nez v5, :cond_0

    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    :cond_0
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    if-nez v5, :cond_1

    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    :cond_1
    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    if-nez v5, :cond_2

    sget v5, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->INITIAL_SIZE:I

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    :cond_2
    iget v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v4, v5, 0x1

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    array-length v5, v5

    if-gt v5, v4, :cond_3

    mul-int/lit8 v5, v4, 0x2

    new-array v1, v5, [I

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    :cond_3
    iget v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v2, v5, 0x4

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    array-length v5, v5

    if-gt v5, v2, :cond_4

    mul-int/lit8 v5, v2, 0x2

    new-array v0, v5, [F

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    iput-object v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    :cond_4
    move v3, v4

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    array-length v5, v5

    if-gt v5, v4, :cond_5

    mul-int/lit8 v5, v4, 0x2

    new-array v1, v5, [I

    iget-object v5, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    iget v6, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    invoke-static {v5, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    :cond_5
    return-void
.end method


# virtual methods
.method public append(IFFFFI)Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->checkIndex(I)V

    invoke-direct {p0}, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->ensureBufferSize()V

    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    mul-int/lit8 v0, v2, 0x4

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    add-int/lit8 v3, v0, 0x0

    aput p2, v2, v3

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    add-int/lit8 v3, v0, 0x1

    aput p3, v2, v3

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    add-int/lit8 v3, v0, 0x2

    aput p4, v2, v3

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    add-int/lit8 v3, v0, 0x3

    aput p5, v2, v3

    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    aput p6, v2, v1

    iget-object v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    iget v3, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    aput p1, v2, v3

    iget v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    return-object p0
.end method

.method public build()Landroid/view/inputmethod/SparseRectFArray;
    .locals 2

    new-instance v0, Landroid/view/inputmethod/SparseRectFArray;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/SparseRectFArray;-><init>(Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;Landroid/view/inputmethod/SparseRectFArray;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v0, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mKeys:[I

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCoordinates:[F

    iput-object v1, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mFlagsArray:[I

    :cond_0
    iput v2, p0, Landroid/view/inputmethod/SparseRectFArray$SparseRectFArrayBuilder;->mCount:I

    return-void
.end method
