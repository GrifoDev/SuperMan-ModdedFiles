.class Lcom/android/incallui/CircularRevealFragment$2;
.super Ljava/lang/Object;
.source "CircularRevealFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CircularRevealFragment;->startOutgoingAnimation(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CircularRevealFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/CircularRevealFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    iput-object p2, p0, Lcom/android/incallui/CircularRevealFragment$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CircularRevealFragment$2;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    iget-object v3, p0, Lcom/android/incallui/CircularRevealFragment$2;->this$0:Lcom/android/incallui/CircularRevealFragment;

    invoke-static {v3}, Lcom/android/incallui/CircularRevealFragment;->access$000(Lcom/android/incallui/CircularRevealFragment;)Landroid/graphics/Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/CircularRevealFragment;->access$100(Lcom/android/incallui/CircularRevealFragment;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/incallui/CircularRevealFragment$2$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CircularRevealFragment$2$1;-><init>(Lcom/android/incallui/CircularRevealFragment$2;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    const/4 v2, 0x0

    return v2
.end method
