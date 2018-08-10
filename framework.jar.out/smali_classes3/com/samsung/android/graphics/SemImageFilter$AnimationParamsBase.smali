.class public abstract Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;
.super Ljava/lang/Object;
.source "SemImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/SemImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AnimationParamsBase"
.end annotation


# instance fields
.field public mDelay:J

.field public mDuration:J

.field public mInterpolator:Landroid/animation/TimeInterpolator;

.field public mListener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;JJLandroid/animation/TimeInterpolator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDuration:J

    iput-wide p4, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDelay:J

    iput-object p6, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public abstract getAnimator()Lcom/samsung/android/graphics/SemImageFilter$Animator;
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    return v0
.end method

.method public isValidated()Z
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDelay:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Delay can not be negative"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;->mDuration:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Duration can not be negative"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
