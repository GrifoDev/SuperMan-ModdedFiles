.class Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;
.super Ljava/lang/Object;
.source "SprDrawableAnimationValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimatorData"
.end annotation


# instance fields
.field public animatorSet:Landroid/animation/AnimatorSet;

.field public duration:J

.field public fillPaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

.field public isRunning:Z

.field public matrix:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeMatrix;

.field public object:Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

.field public repeatCount:I

.field public startTime:J

.field public strokePaint:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeStroke;

.field public updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;->updateParameter:Lcom/samsung/android/graphics/spr/document/animator/SprAnimatorBase$UpdateParameter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue$AnimatorData;-><init>()V

    return-void
.end method
