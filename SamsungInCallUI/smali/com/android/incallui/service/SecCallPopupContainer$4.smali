.class Lcom/android/incallui/service/SecCallPopupContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->animateForToggleRejectMsg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const v2, 0x7f090316

    const v3, 0x7f090315

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v4, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$600(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$800(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090191

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090193

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v4}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$600(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_1
    :goto_2
    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->isShowingRejectMsgContent()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$900(Lcom/android/incallui/service/SecCallPopupContainer;Z)V

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v4

    new-array v5, v7, [I

    const v0, 0x7f090321

    aput v0, v5, v1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$600(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_3
    aput v0, v5, v6

    invoke-static {v4, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[I)V

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_3
.end method
