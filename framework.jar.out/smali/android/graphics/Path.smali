.class public Landroid/graphics/Path;
.super Ljava/lang/Object;
.source "Path.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Path$Direction;,
        Landroid/graphics/Path$FillType;,
        Landroid/graphics/Path$Op;
    }
.end annotation


# static fields
.field static final sFillTypeArray:[Landroid/graphics/Path$FillType;


# instance fields
.field public isSimplePath:Z

.field private mLastDirection:Landroid/graphics/Path$Direction;

.field public mNativePath:J

.field public rects:Landroid/graphics/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Path$FillType;

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    invoke-static {}, Landroid/graphics/Path;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    iput-object v3, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-boolean v2, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-object v2, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Region;

    iget-object v3, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v2, v3}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v2, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    :cond_0
    invoke-static {v0, v1}, Landroid/graphics/Path;->nInit(J)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    return-void
.end method

.method private detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V
    .locals 6

    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-nez v0, :cond_0

    iput-object p5, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    :cond_0
    iget-object v0, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    if-eq v0, p5, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    :cond_2
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    float-to-int v3, p3

    float-to-int v4, p4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method private static native nAddArc(JFFFFFF)V
.end method

.method private static native nAddCircle(JFFFI)V
.end method

.method private static native nAddOval(JFFFFI)V
.end method

.method private static native nAddPath(JJ)V
.end method

.method private static native nAddPath(JJFF)V
.end method

.method private static native nAddPath(JJJ)V
.end method

.method private static native nAddRect(JFFFFI)V
.end method

.method private static native nAddRoundRect(JFFFFFFI)V
.end method

.method private static native nAddRoundRect(JFFFF[FI)V
.end method

.method private static native nApproximate(JF)[F
.end method

.method private static native nArcTo(JFFFFFFZ)V
.end method

.method private static native nClose(J)V
.end method

.method private static native nComputeBounds(JLandroid/graphics/RectF;)V
.end method

.method private static native nCubicTo(JFFFFFF)V
.end method

.method private static native nFinalize(J)V
.end method

.method private static native nGetFillType(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIncReserve(JI)V
.end method

.method private static native nInit()J
.end method

.method private static native nInit(J)J
.end method

.method private static native nIsConvex(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsRect(JLandroid/graphics/RectF;)Z
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nLineTo(JFF)V
.end method

.method private static native nMoveTo(JFF)V
.end method

.method private static native nOffset(JFF)V
.end method

.method private static native nOp(JJIJ)Z
.end method

.method private static native nQuadTo(JFFFF)V
.end method

.method private static native nRCubicTo(JFFFFFF)V
.end method

.method private static native nRLineTo(JFF)V
.end method

.method private static native nRMoveTo(JFF)V
.end method

.method private static native nRQuadTo(JFFFF)V
.end method

.method private static native nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nRewind(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSet(JJ)V
.end method

.method private static native nSetFillType(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLastPoint(JFF)V
.end method

.method private static native nTransform(JJ)V
.end method

.method private static native nTransform(JJJ)V
.end method


# virtual methods
.method public addArc(FFFFFF)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nAddArc(JFFFFFF)V

    return-void
.end method

.method public addArc(Landroid/graphics/RectF;FF)V
    .locals 7

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addArc(FFFFFF)V

    return-void
.end method

.method public addCircle(FFFLandroid/graphics/Path$Direction;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v5, p4, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddCircle(JFFFI)V

    return-void
.end method

.method public addOval(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddOval(JFFFFI)V

    return-void
.end method

.method public addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nAddPath(JJ)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;FF)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddPath(JJFF)V

    return-void
.end method

.method public addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 6

    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v4, p2, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nAddPath(JJJ)V

    return-void
.end method

.method public addRect(FFFFLandroid/graphics/Path$Direction;)V
    .locals 7

    invoke-direct/range {p0 .. p5}, Landroid/graphics/Path;->detectSimplePath(FFFFLandroid/graphics/Path$Direction;)V

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v6, p5, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nAddRect(JFFFFI)V

    return-void
.end method

.method public addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V
    .locals 6

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V
    .locals 11

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    move-object/from16 v0, p7

    iget v10, v0, Landroid/graphics/Path$Direction;->nativeInt:I

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Landroid/graphics/Path;->nAddRoundRect(JFFFFFFI)V

    return-void
.end method

.method public addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V
    .locals 8

    array-length v0, p5

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string/jumbo v1, "radii[] needs 8 values"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v7, p6, Landroid/graphics/Path$Direction;->nativeInt:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nAddRoundRect(JFFFF[FI)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    .locals 8

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need rect parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public approximate(F)[F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AcceptableError must be greater than or equal to 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nApproximate(JF)[F

    move-result-object v0

    return-object v0
.end method

.method public arcTo(FFFFFFZ)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Path;->nArcTo(JFFFFFFZ)V

    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FF)V
    .locals 8

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    return-void
.end method

.method public arcTo(Landroid/graphics/RectF;FFZ)V
    .locals 8

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nClose(J)V

    return-void
.end method

.method public computeBounds(Landroid/graphics/RectF;Z)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nComputeBounds(JLandroid/graphics/RectF;)V

    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nCubicTo(JFFFFFF)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nFinalize(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Path;->mNativePath:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getFillType()Landroid/graphics/Path$FillType;
    .locals 4

    sget-object v0, Landroid/graphics/Path;->sFillTypeArray:[Landroid/graphics/Path$FillType;

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public incReserve(I)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIncReserve(JI)V

    return-void
.end method

.method public isConvex()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsConvex(J)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nIsEmpty(J)Z

    move-result v0

    return v0
.end method

.method public isInverseFillType()Z
    .locals 4

    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    sget-object v2, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v2, v2, Landroid/graphics/Path$FillType;->nativeInt:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isRect(Landroid/graphics/RectF;)Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Path;->nIsRect(JLandroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public lineTo(FF)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nLineTo(JFF)V

    return-void
.end method

.method public moveTo(FF)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nMoveTo(JFF)V

    return-void
.end method

.method final mutateNI()J
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public offset(FF)V
    .locals 4

    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v0, :cond_1

    float-to-double v0, p1

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    float-to-double v0, p2

    float-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->translate(II)V

    :goto_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nOffset(JFF)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    goto :goto_0
.end method

.method public offset(FFLandroid/graphics/Path;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    :goto_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Path;->offset(FF)V

    return-void

    :cond_0
    move-object p3, p0

    goto :goto_0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 1

    invoke-virtual {p0, p0, p1, p2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-result v0

    return v0
.end method

.method public op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z
    .locals 8

    const/4 v7, 0x0

    iget-wide v0, p1, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p2, Landroid/graphics/Path;->mNativePath:J

    invoke-virtual {p3}, Landroid/graphics/Path$Op;->ordinal()I

    move-result v4

    iget-wide v5, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static/range {v0 .. v6}, Landroid/graphics/Path;->nOp(JJIJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Landroid/graphics/Path;->isSimplePath:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    const/4 v0, 0x1

    return v0

    :cond_0
    return v7
.end method

.method public quadTo(FFFF)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nQuadTo(JFFFF)V

    return-void
.end method

.method public rCubicTo(FFFFFF)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/Path;->nRCubicTo(JFFFFFF)V

    return-void
.end method

.method public rLineTo(FF)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRLineTo(JFF)V

    return-void
.end method

.method public rMoveTo(FF)V
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nRMoveTo(JFF)V

    return-void
.end method

.method public rQuadTo(FFFF)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nRQuadTo(JFFFF)V

    return-void
.end method

.method public final readOnlyNI()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    return-wide v0
.end method

.method public reset()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/graphics/Path;->isSimplePath:Z

    iput-object v2, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->getFillType()Landroid/graphics/Path$FillType;

    move-result-object v0

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->nReset(J)V

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    return-void
.end method

.method public rewind()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iput-object v1, p0, Landroid/graphics/Path;->mLastDirection:Landroid/graphics/Path$Direction;

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1}, Landroid/graphics/Path;->nRewind(J)V

    return-void
.end method

.method public set(Landroid/graphics/Path;)V
    .locals 4

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Landroid/graphics/Path;->isSimplePath:Z

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nSet(JJ)V

    iget-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Region;

    iget-object v1, p1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    invoke-direct {v0, v1}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    iput-object v0, p0, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    goto :goto_0
.end method

.method public setFillType(Landroid/graphics/Path$FillType;)V
    .locals 3

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget v2, p1, Landroid/graphics/Path$FillType;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Path;->nSetFillType(JI)V

    return-void
.end method

.method public setLastPoint(FF)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Path;->nSetLastPoint(JFF)V

    return-void
.end method

.method public toggleInverseFillType()V
    .locals 4

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3}, Landroid/graphics/Path;->nGetFillType(J)I

    move-result v0

    sget-object v1, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    iget v1, v1, Landroid/graphics/Path$FillType;->nativeInt:I

    xor-int/2addr v0, v1

    iget-wide v2, p0, Landroid/graphics/Path;->mNativePath:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Path;->nSetFillType(JI)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Path;->nTransform(JJ)V

    return-void
.end method

.method public transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/graphics/Path;->isSimplePath:Z

    iget-wide v4, p2, Landroid/graphics/Path;->mNativePath:J

    :cond_0
    iget-wide v0, p0, Landroid/graphics/Path;->mNativePath:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static/range {v0 .. v5}, Landroid/graphics/Path;->nTransform(JJJ)V

    return-void
.end method
