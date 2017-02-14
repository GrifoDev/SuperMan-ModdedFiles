.class public Lcom/android/systemui/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationIcon"
.end annotation


# instance fields
.field private final mAnimatedResId:I

.field private mFromAlphaResId:I

.field private mFromTintColorResId:I

.field private mToAlphaResId:I

.field private mToTintColorResId:I

.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile;II)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(ILcom/android/systemui/qs/QSTile$ResourceIcon;)V

    iput p2, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimatedResId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile;IIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/QSTile$AnimationIcon;-><init>(Lcom/android/systemui/qs/QSTile;II)V

    iput p4, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mFromTintColorResId:I

    iput p5, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mToTintColorResId:I

    iput p6, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mFromAlphaResId:I

    iput p7, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mToAlphaResId:I

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mAnimatedResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setColor(Landroid/content/Context;Lcom/android/systemui/qs/QSTile$State;Landroid/graphics/drawable/Drawable;)Z
    .locals 26

    if-eqz p3, :cond_0

    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v3, Lcom/android/systemui/qs/QSTile$BooleanState;->dim:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    const/16 v23, 0x0

    return v23

    :cond_0
    const/16 v23, 0x0

    return v23

    :cond_1
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mFromTintColorResId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mToTintColorResId:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v22

    shr-int/lit8 v23, v9, 0x18

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mFromAlphaResId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v24

    mul-float v5, v23, v24

    shr-int/lit8 v23, v9, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v8, v0

    shr-int/lit8 v23, v9, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v7, v0

    and-int/lit16 v0, v9, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v6, v0

    shr-int/lit8 v23, v22, 0x18

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/qs/QSTile$AnimationIcon;->mToAlphaResId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v24

    mul-float v18, v23, v24

    shr-int/lit8 v23, v22, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v2, p3

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v11

    add-int/lit8 v16, v11, -0x1

    sub-float v23, v18, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v12, v23, v24

    sub-float v23, v21, v8

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v15, v23, v24

    sub-float v23, v20, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v14, v23, v24

    sub-float v23, v19, v6

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v13, v23, v24

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    invoke-virtual {v2, v10}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v0, v10

    move/from16 v23, v0

    mul-float v23, v23, v15

    add-float v23, v23, v8

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v23

    shl-int/lit8 v23, v23, 0x10

    int-to-float v0, v10

    move/from16 v24, v0

    mul-float v24, v24, v14

    add-float v24, v24, v7

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    shl-int/lit8 v24, v24, 0x8

    or-int v23, v23, v24

    int-to-float v0, v10

    move/from16 v24, v0

    mul-float v24, v24, v13

    add-float v24, v24, v6

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    or-int v23, v23, v24

    const v24, 0xffffff

    and-int v17, v23, v24

    const/high16 v23, -0x1000000

    or-int v17, v17, v23

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    int-to-float v0, v10

    move/from16 v23, v0

    mul-float v23, v23, v12

    add-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const/16 v23, 0x1

    return v23

    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->setColor(Landroid/content/Context;Lcom/android/systemui/qs/QSTile$State;Landroid/graphics/drawable/Drawable;)Z

    move-result v23

    return v23
.end method
