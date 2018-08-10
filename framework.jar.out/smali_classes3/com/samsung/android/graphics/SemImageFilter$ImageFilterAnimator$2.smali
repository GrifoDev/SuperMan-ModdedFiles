.class Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$2;
.super Ljava/lang/Object;
.source "SemImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->onAnimationEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$2;->this$1:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator$2;->this$1:Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;

    invoke-static {v0}, Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;->-get0(Lcom/samsung/android/graphics/SemImageFilter$ImageFilterAnimator;)Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/graphics/SemImageFilter$AnimationListener;->onAnimationEnd()V

    return-void
.end method
