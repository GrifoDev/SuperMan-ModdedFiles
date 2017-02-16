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
    .param p1, "this$0"    # Lcom/android/incallui/service/SecCallPopupContainer;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v1, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->access$100(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    .line 1115
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    .line 1116
    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupContainer$2;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v0, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    .line 1118
    :cond_0
    return-void

    .line 1114
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
