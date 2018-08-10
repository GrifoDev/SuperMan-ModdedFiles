.class Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;
.super Ljava/lang/Object;
.source "SemGenericImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemGenericImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericAnimationListener"
.end annotation


# instance fields
.field private mFilterPassCount:I

.field private mFinishCbHitCount:I

.field private mGenericFilterAnimListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

.field private mStartCbHitCount:I


# direct methods
.method public constructor <init>(ILcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFilterPassCount:I

    iput-object p2, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mGenericFilterAnimListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFinishCbHitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFinishCbHitCount:I

    iget v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFinishCbHitCount:I

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFilterPassCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mGenericFilterAnimListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mStartCbHitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mStartCbHitCount:I

    iget v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mStartCbHitCount:I

    iget v1, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mFilterPassCount:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemGenericImageFilter$GenericAnimationListener;->mGenericFilterAnimListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;->onAnimationStart()V

    :cond_0
    return-void
.end method
