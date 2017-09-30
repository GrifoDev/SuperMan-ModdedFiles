.class Lcom/android/incallui/fragment/AnswerFragment$15;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerFragment;->animateShowForMaskPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerFragment$15;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$15;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment$15;->this$0:Lcom/android/incallui/fragment/AnswerFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerFragment;->mMaskPanelForSlidingDrawer:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
