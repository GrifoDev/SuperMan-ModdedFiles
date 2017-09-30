.class Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/view/CallCardSmartCallView;->animateScaleForSmartCallPhoto(ZLcom/android/incallui/fragment/VoiceCallCardFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

.field final synthetic val$mPhotoContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/view/CallCardSmartCallView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;->this$0:Lcom/android/incallui/fragment/view/CallCardSmartCallView;

    iput-object p2, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;->val$mPhotoContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;->val$mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;->val$mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardSmartCallView$1;->val$mPhotoContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
