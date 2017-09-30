.class Lcom/android/incallui/fragment/VoiceCallCardFragment$15;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->createAgifPhotoAnimatorSet(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$mView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;->val$mView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v0, "animateScaleForCallerInfo... Animation End"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;->val$mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;->val$mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$15;->val$mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
