.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final POSITION_MATRIX_FLAG:I = 0x1

.field public static final TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private mPath:Landroid/graphics/Path;

.field private native_instance:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 33
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;Z)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 50
    return-void

    .line 53
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static native native_create(JZ)J
.end method

.method private static native native_destroy(J)V
.end method

.method private static native native_getLength(J)F
.end method

.method private static native native_getMatrix(JFJI)Z
.end method

.method private static native native_getPosTan(JF[F[F)Z
.end method

.method private static native native_getSegment(JFFJZ)Z
.end method

.method private static native native_isClosed(J)Z
.end method

.method private static native native_nextContour(J)Z
.end method

.method private static native native_setPath(JJZ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 157
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 156
    return-void
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result v0

    return v0
.end method

.method public getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 6
    .param p1, "distance"    # F
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "flags"    # I

    .prologue
    .line 108
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    iget-wide v3, p2, Landroid/graphics/Matrix;->native_instance:J

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result v0

    return v0
.end method

.method public getPosTan(F[F[F)Z
    .locals 2
    .param p1, "distance"    # F
    .param p2, "pos"    # [F
    .param p3, "tan"    # [F

    .prologue
    const/4 v1, 0x2

    .line 87
    if-eqz p2, :cond_1

    array-length v0, p2

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 88
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    if-lt v0, v1, :cond_0

    .line 91
    :cond_2
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    move-result v0

    return v0
.end method

.method public getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 8
    .param p1, "startD"    # F
    .param p2, "stopD"    # F
    .param p3, "dst"    # Landroid/graphics/Path;
    .param p4, "startWithMoveTo"    # Z

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    .line 127
    .local v7, "length":F
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 128
    const/4 p1, 0x0

    .line 130
    :cond_0
    cmpl-float v0, p2, v7

    if-lez v0, :cond_1

    .line 131
    move p2, v7

    .line 133
    :cond_1
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_2

    .line 134
    return v1

    .line 137
    :cond_2
    iput-boolean v1, p3, Landroid/graphics/Path;->isSimplePath:Z

    .line 138
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p3}, Landroid/graphics/Path;->ni()J

    move-result-wide v4

    move v2, p1

    move v3, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result v0

    return v0
.end method

.method public nextContour()Z
    .locals 2

    .prologue
    .line 153
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result v0

    return v0
.end method

.method public setPath(Landroid/graphics/Path;Z)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "forceClosed"    # Z

    .prologue
    .line 61
    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    .line 62
    iget-wide v2, p0, Landroid/graphics/PathMeasure;->native_instance:J

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()J

    move-result-wide v0

    .line 62
    :goto_0
    invoke-static {v2, v3, v0, v1, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    .line 60
    return-void

    .line 63
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
