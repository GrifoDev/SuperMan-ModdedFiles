.class public Landroid/view/SurfaceEffects;
.super Ljava/lang/Object;
.source "SurfaceEffects.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceEffects$AnimKeyFrame;,
        Landroid/view/SurfaceEffects$AnimParam;,
        Landroid/view/SurfaceEffects$AnimationMode;,
        Landroid/view/SurfaceEffects$Effect;,
        Landroid/view/SurfaceEffects$EffectTarget;,
        Landroid/view/SurfaceEffects$InterpMode;,
        Landroid/view/SurfaceEffects$PixEffectType;
    }
.end annotation


# static fields
.field public static final EMPTY_EFFECT:Landroid/view/SurfaceEffects$Effect;

.field private static final FRAME_LENGTH_NANOS:J = 0xfe502aL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v0

    sput-object v0, Landroid/view/SurfaceEffects;->EMPTY_EFFECT:Landroid/view/SurfaceEffects$Effect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertDeprecatedArguments([I[F)[I
    .locals 34

    const/4 v5, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v30, 0x0

    const/4 v5, 0x1

    aget v4, p0, v30

    add-int/lit8 v6, v5, 0x1

    aget v8, p0, v5

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v6, v5, 0x1

    aget v21, p0, v5

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v5, v6, 0x1

    aget v24, p0, v6

    move v6, v5

    :goto_0
    const/16 v30, -0x1

    move/from16 v0, v24

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    move/from16 v16, v24

    add-int/lit8 v5, v6, 0x1

    aget v27, p0, v6

    add-int/lit8 v6, v5, 0x1

    aget v26, p0, v5

    add-int/lit8 v5, v6, 0x1

    aget v7, p0, v6

    add-int/lit8 v6, v5, 0x1

    aget v24, p0, v5

    new-instance v30, Landroid/graphics/Rect;

    move-object/from16 v0, v30

    move/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v5, v6, 0x1

    aget v30, p0, v6

    if-eqz v30, :cond_1

    const/4 v11, 0x1

    :goto_1
    if-eqz v11, :cond_3

    :goto_2
    aget v30, p0, v5

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    new-instance v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;

    invoke-direct {v13}, Landroid/view/SurfaceEffects$1AnimKeyFrame;-><init>()V

    add-int/lit8 v6, v5, 0x1

    aget v30, p0, v5

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->animParam:I

    add-int/lit8 v5, v6, 0x1

    aget v30, p0, v6

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->frame:I

    add-int/lit8 v29, v28, 0x1

    aget v30, p1, v28

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->value:F

    add-int/lit8 v6, v5, 0x1

    aget v30, p0, v5

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->interp:I

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v28, v29

    move v5, v6

    goto :goto_2

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v6, v5, 0x1

    aget v30, p0, v5

    if-eqz v30, :cond_4

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_a

    move/from16 v29, v28

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    new-instance v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;

    invoke-direct {v13}, Landroid/view/SurfaceEffects$1AnimKeyFrame;-><init>()V

    add-int/lit8 v5, v6, 0x1

    aget v30, p0, v6

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->animParam:I

    add-int/lit8 v6, v5, 0x1

    aget v30, p0, v5

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->frame:I

    add-int/lit8 v28, v29, 0x1

    aget v30, p1, v29

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->value:F

    add-int/lit8 v5, v6, 0x1

    aget v30, p0, v6

    move/from16 v0, v30

    iput v0, v13, Landroid/view/SurfaceEffects$1AnimKeyFrame;->interp:I

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v29, v28

    move v6, v5

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    :cond_5
    move/from16 v28, v29

    move v5, v6

    :goto_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->animParam:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->frame:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/32 v32, 0xfe502a

    mul-long v30, v30, v32

    const-wide/32 v32, 0xf4240

    div-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->value:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->interp:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->animParam:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->frame:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide/32 v32, 0xfe502a

    mul-long v30, v30, v32

    const-wide/32 v32, 0xf4240

    div-long v30, v30, v32

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->value:F

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v14, Landroid/view/SurfaceEffects$1AnimKeyFrame;->interp:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/4 v12, 0x0

    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v12, v0, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v30

    aput v30, v17, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_9
    return-object v17

    :cond_a
    move v5, v6

    goto/16 :goto_5
.end method

.method public static newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;
    .locals 2

    new-instance v0, Landroid/view/SurfaceEffects$Effect$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SurfaceEffects$Effect$Builder;-><init>(Landroid/view/SurfaceEffects$Effect$Builder;)V

    return-object v0
.end method
