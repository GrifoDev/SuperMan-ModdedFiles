.class public Landroid/widget/Editor$SFEffectsAPI$Effect;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Effect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;
    }
.end annotation


# instance fields
.field private final mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

.field private final mEffectRegion:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

.field private final mGeometryAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Editor$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Editor$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;


# direct methods
.method public constructor <init>(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectRegion:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get0(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get2(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get5(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectRegion:Ljava/util/Vector;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get1(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get4(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-static {p1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->-get3(Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectRegion:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    mul-int/lit8 v15, v15, 0x4

    add-int/lit8 v15, v15, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    mul-int/lit8 v16, v16, 0x3

    add-int v15, v15, v16

    add-int/lit8 v8, v15, 0x5

    new-array v3, v8, [I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/Vector;->size()I

    move-result v16

    add-int v15, v15, v16

    new-array v11, v15, [F

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mAnimationMode:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->id:I

    move/from16 v16, v0

    aput v16, v3, v15

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectTarget:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->id:I

    aput v15, v3, v1

    add-int/lit8 v1, v2, 0x1

    const/4 v15, 0x1

    aput v15, v3, v2

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelEffectType:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->id:I

    aput v15, v3, v1

    const/4 v7, 0x0

    move v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectRegion:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v7, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mEffectRegion:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, 0x1

    iget v15, v10, Landroid/graphics/Rect;->left:I

    aput v15, v3, v1

    add-int/lit8 v1, v2, 0x1

    iget v15, v10, Landroid/graphics/Rect;->top:I

    aput v15, v3, v2

    add-int/lit8 v2, v1, 0x1

    iget v15, v10, Landroid/graphics/Rect;->right:I

    aput v15, v3, v1

    add-int/lit8 v1, v2, 0x1

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    aput v15, v3, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    const/4 v15, -0x1

    aput v15, v3, v1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_2

    add-int/lit8 v1, v2, 0x1

    const/4 v15, 0x1

    aput v15, v3, v2

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v7, v15, :cond_1

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget-object v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->animParam:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->id:I

    aput v15, v3, v1

    add-int/lit8 v1, v2, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->frame:I

    aput v15, v3, v2

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->value:F

    aput v15, v11, v12

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget-object v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->mode:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->id:I

    aput v15, v3, v1

    add-int/lit8 v7, v7, 0x1

    move v12, v13

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    const/4 v15, -0x1

    aput v15, v3, v1

    move v1, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-lez v15, :cond_3

    add-int/lit8 v2, v1, 0x1

    const/4 v15, 0x1

    aput v15, v3, v1

    const/4 v7, 0x0

    move v1, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    if-ge v7, v15, :cond_4

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget-object v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->animParam:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->id:I

    aput v15, v3, v1

    add-int/lit8 v1, v2, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->frame:I

    aput v15, v3, v2

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->value:F

    aput v15, v11, v12

    add-int/lit8 v2, v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor$SFEffectsAPI$Effect;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v15, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/Editor$SFEffectsAPI$Animation;

    iget-object v15, v15, Landroid/widget/Editor$SFEffectsAPI$Animation;->mode:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    iget v15, v15, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->id:I

    aput v15, v3, v1

    add-int/lit8 v7, v7, 0x1

    move v12, v13

    move v1, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v2, 0x1

    const/4 v15, 0x0

    aput v15, v3, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v1, 0x1

    const/4 v15, 0x0

    aput v15, v3, v1

    move v1, v2

    :cond_4
    const-string/jumbo v15, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v15, "SFEffectsAPI"

    const-string/jumbo v16, "wm.getClass().getMethod "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string/jumbo v16, "startSurfaceAnimation"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const-class v18, Landroid/os/IBinder;

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const-class v18, [I

    const/16 v19, 0x1

    aput-object v18, v17, v19

    const-class v18, [F

    const/16 v19, 0x2

    aput-object v18, v17, v19

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_4
    const/4 v15, 0x3

    new-array v6, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p2, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    const/4 v15, 0x2

    aput-object v11, v6, v15

    :try_start_1
    invoke-virtual {v9, v14, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v15, "SFEffectsAPI"

    const-string/jumbo v16, "wm.getClass().getMethod NoSuchMethodException !"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v4

    const-string/jumbo v15, "SFEffectsAPI"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
