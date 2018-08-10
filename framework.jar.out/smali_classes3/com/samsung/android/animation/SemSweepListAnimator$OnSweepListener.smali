.class public interface abstract Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSweepListener"
.end annotation


# virtual methods
.method public abstract onSweep(IFLandroid/graphics/Canvas;)V
.end method

.method public abstract onSweepEnd(IF)V
.end method

.method public abstract onSweepStart(IFLandroid/graphics/Rect;)Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;
.end method
