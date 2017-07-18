.class public interface abstract Lcom/android/incallui/AnswerUi;
.super Ljava/lang/Object;
.source "AnswerUi.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# virtual methods
.method public abstract animateForAnswerCall(I)V
.end method

.method public abstract arrangeIncomingHandle(I)V
.end method

.method public abstract closeDrawer()V
.end method

.method public abstract configureMessageDialog(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract configureRejectMsgList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract isAlreadyAnimationProcessing()Z
.end method

.method public abstract isAnswerAnimationRunning()Z
.end method

.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract rejectCallWithMessage(Ljava/lang/String;)V
.end method

.method public abstract resetAnswerCallAnimator()V
.end method

.method public abstract showAnswerUi(Z)V
.end method

.method public abstract showMessageDialog()V
.end method

.method public abstract showQuoteMark(Z)V
.end method

.method public abstract showRejectCallWithMessage(Z)V
.end method

.method public abstract showTargets(I)V
.end method

.method public abstract showTargets(II)V
.end method

.method public abstract showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract updateIncomingCallWidgetLayout()V
.end method

.method public abstract updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
.end method
