.class Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;
.super Ljava/lang/Object;
.source "SemAddDeleteGridAnimator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->insertIntoAdapterCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->-get0(Lcom/samsung/android/animation/SemAddDeleteGridAnimator;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iget-object v0, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator$3;->this$0:Lcom/samsung/android/animation/SemAddDeleteGridAnimator;

    iput-object v1, v0, Lcom/samsung/android/animation/SemAddDeleteGridAnimator;->mInsertRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
