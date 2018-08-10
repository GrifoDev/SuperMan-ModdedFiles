.class Lcom/samsung/android/animation/SemListSortAnimator$2$1;
.super Ljava/lang/Object;
.source "SemListSortAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemListSortAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemListSortAnimator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemListSortAnimator$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemListSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemListSortAnimator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemListSortAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemListSortAnimator$2$1;->this$1:Lcom/samsung/android/animation/SemListSortAnimator$2;

    iget-object v0, v0, Lcom/samsung/android/animation/SemListSortAnimator$2;->this$0:Lcom/samsung/android/animation/SemListSortAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemListSortAnimator;->-wrap0(Lcom/samsung/android/animation/SemListSortAnimator;)V

    const/4 v0, 0x1

    return v0
.end method
