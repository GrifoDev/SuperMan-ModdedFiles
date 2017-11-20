.class Lcom/android/incallui/agif/AgifFragment$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifFragment;->animateForPopupOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mButtonContainer:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifSlidingTrayIcons:Lcom/android/incallui/agif/AgifSlidingTrayIcons;

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifSlidingTrayIcons;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifFragment;->mAgifListContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallButtonUi()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/agif/AgifFragment$5;->this$0:Lcom/android/incallui/agif/AgifFragment;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifFragment;->access$300(Lcom/android/incallui/agif/AgifFragment;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
