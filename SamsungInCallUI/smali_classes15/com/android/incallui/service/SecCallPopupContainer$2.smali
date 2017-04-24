.class Lcom/android/incallui/service/SecCallPopupContainer$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupContainer.java"


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

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v3, v1, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$300(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$400(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$300(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v3

    const/4 v1, 0x2

    new-array v4, v1, [I

    const v1, 0x7f0902af

    aput v1, v4, v2

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$200(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0902a6

    :goto_1
    aput v1, v4, v2

    invoke-static {v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[I)V

    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const v1, 0x7f0902a5

    goto :goto_1
.end method
