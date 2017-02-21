.class public Landroid/opengl/GLU;
.super Ljava/lang/Object;
.source "GLU.java"


# static fields
.field private static final sScratch:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [F

    sput-object v0, Landroid/opengl/GLU;->sScratch:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluErrorString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "no error"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "invalid enum"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "invalid value"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "invalid operation"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "stack overflow"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "stack underflow"

    return-object v0

    :sswitch_6
    const-string/jumbo v0, "out of memory"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x500 -> :sswitch_1
        0x501 -> :sswitch_2
        0x502 -> :sswitch_3
        0x503 -> :sswitch_4
        0x504 -> :sswitch_5
        0x505 -> :sswitch_6
    .end sparse-switch
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 11

    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v0

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    :try_start_0
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 7

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    return-void
.end method

.method public static gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 10

    float-to-double v6, p1

    const-wide v8, 0x3f81df46a2529d39L    # 0.008726646259971648

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    double-to-float v0, v6

    mul-float v4, p3, v0

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    return-void
.end method

.method public static gluProject(FFF[FI[FI[II[FI)I
    .locals 11

    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v0

    const/4 v6, 0x0

    const/16 v8, 0x10

    const/16 v7, 0x14

    const/4 v1, 0x0

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v1, 0x10

    aput p0, v0, v1

    const/16 v1, 0x11

    aput p1, v0, v1

    const/16 v1, 0x12

    aput p2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x13

    aput v1, v0, v2

    const/16 v1, 0x14

    const/4 v3, 0x0

    const/16 v5, 0x10

    move-object v2, v0

    move-object v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/16 v1, 0x17

    aget v10, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float v9, v1, v10

    :try_start_1
    aget v1, p7, p8

    int-to-float v1, v1

    add-int/lit8 v2, p8, 0x2

    aget v2, p7, v2

    int-to-float v2, v2

    const/16 v3, 0x14

    aget v3, v0, v3

    mul-float/2addr v3, v9

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p9, p10

    add-int/lit8 v1, p10, 0x1

    add-int/lit8 v2, p8, 0x1

    aget v2, p7, v2

    int-to-float v2, v2

    add-int/lit8 v3, p8, 0x3

    aget v3, p7, v3

    int-to-float v3, v3

    const/16 v4, 0x15

    aget v4, v0, v4

    mul-float/2addr v4, v9

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p9, v1

    add-int/lit8 v1, p10, 0x2

    const/16 v2, 0x16

    aget v2, v0, v2

    mul-float/2addr v2, v9

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    aput v2, p9, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 10

    sget-object v0, Landroid/opengl/GLU;->sScratch:[F

    monitor-enter v0

    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v9, 0x0

    const/4 v1, 0x0

    move-object v2, p5

    move/from16 v3, p6

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v0, v1, v0, v2}, Landroid/opengl/Matrix;->invertM([FI[FI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    add-int/lit8 v1, p8, 0x0

    :try_start_1
    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p0, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-int/lit8 v2, p8, 0x2

    aget v2, p7, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    add-int/lit8 v1, p8, 0x1

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    add-int/lit8 v2, p8, 0x3

    aget v2, p7, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    aput v1, v0, v2

    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v1, p9

    move/from16 v2, p10

    move-object v3, v0

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
