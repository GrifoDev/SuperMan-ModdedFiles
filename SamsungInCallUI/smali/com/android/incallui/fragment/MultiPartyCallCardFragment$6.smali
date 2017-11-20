.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "manage animation end..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->updateManageAndHideConferenceCallButton(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v0, v0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryPanel:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
