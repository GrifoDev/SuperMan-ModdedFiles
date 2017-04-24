.class Lcom/android/incallui/fragment/EndCallButtonFragment$2;
.super Ljava/lang/Object;
.source "EndCallButtonFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/EndCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/EndCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getView()Landroid/view/View;

    move-result-object v2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/EndCallButtonFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/incallui/fragment/EndCallButtonFragment$2;->this$0:Lcom/android/incallui/fragment/EndCallButtonFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/fragment/EndCallButtonFragment;->setEnabled(Z)V

    new-instance v2, Lcom/android/incallui/fragment/EndCallButtonFragment$2$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/EndCallButtonFragment$2$1;-><init>(Lcom/android/incallui/fragment/EndCallButtonFragment$2;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
