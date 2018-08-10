.class Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;
.super Ljava/lang/Object;
.source "SemAddDeleteHorizontalListAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->deleteFromAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->-get1(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;)Landroid/widget/SemHorizontalListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemHorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$1;->this$0:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    iput-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->mDeleteRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
