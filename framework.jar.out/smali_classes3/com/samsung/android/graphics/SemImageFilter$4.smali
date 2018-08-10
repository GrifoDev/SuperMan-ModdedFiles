.class Lcom/samsung/android/graphics/SemImageFilter$4;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter;->startAnimation(Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mFinishHitCount:I

.field mFinishPassCount:I

.field mIsStarted:Z

.field final synthetic this$0:Lcom/samsung/android/graphics/SemImageFilter;

.field final synthetic val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iput-object p2, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mIsStarted:Z

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    iget-object v0, v0, Lcom/samsung/android/graphics/SemImageFilter;->mAnimationsParams:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishHitCount:I

    iput v1, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishPassCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishPassCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishPassCount:I

    iget v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishHitCount:I

    iget v1, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mFinishPassCount:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;->onAnimationEnd()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->this$0:Lcom/samsung/android/graphics/SemImageFilter;

    invoke-static {v0, v2}, Lcom/samsung/android/graphics/SemImageFilter;->-set0(Lcom/samsung/android/graphics/SemImageFilter;Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;)Lcom/samsung/android/graphics/SemImageFilter$AnimationHandle;

    :cond_1
    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mIsStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->val$listener:Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;->onAnimationStart()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemImageFilter$4;->mIsStarted:Z

    :cond_1
    return-void
.end method
