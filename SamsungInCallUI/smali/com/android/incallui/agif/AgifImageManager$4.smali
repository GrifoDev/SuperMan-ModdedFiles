.class Lcom/android/incallui/agif/AgifImageManager$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/agif/AgifImageManager;->animateForSlideOut(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifImageManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/agif/AgifImageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0, v2}, Lcom/android/incallui/agif/AgifImageManager;->access$702(Lcom/android/incallui/agif/AgifImageManager;Z)Z

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-virtual {v0}, Lcom/android/incallui/agif/AgifImageManager;->stopAgifAnimate()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageManager$4;->this$0:Lcom/android/incallui/agif/AgifImageManager;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifImageManager;->access$300(Lcom/android/incallui/agif/AgifImageManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_removeAgif()V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/UiAdapter;->updateAgifContainer(Z)V

    return-void
.end method
