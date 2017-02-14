.class public Lcom/android/incallui/fragment/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerUi;",
        ">;",
        "Lcom/android/incallui/AnswerUi;"
    }
.end annotation


# static fields
.field protected static final EVENT_RESET_ANIM_DELAY:I = 0x1388

.field protected static final EVENT_RESET_ANSWER_ANIM:I = 0x66

.field public static final TARGET_SET_FOR_AUDIO_WITHOUT_SMS:I = 0x0

.field public static final TARGET_SET_FOR_AUDIO_WITH_SMS:I = 0x1

.field public static final TARGET_SET_FOR_VIDEO_ACCEPT_REJECT_REQUEST:I = 0x4

.field public static final TARGET_SET_FOR_VIDEO_WITHOUT_SMS:I = 0x2

.field public static final TARGET_SET_FOR_VIDEO_WITH_SMS:I = 0x3


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/incallui/fragment/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/AnswerFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isWaitingCallPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 0

    return-void
.end method

.method public arrangeIncomingHandle(I)V
    .locals 0

    return-void
.end method

.method public closeDrawer()V
    .locals 0

    return-void
.end method

.method public configureMessageDialog(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogues()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    return-void
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    return-void
.end method

.method public dismissWaitingCallPopup(Z)V
    .locals 10

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v6, v0}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v6, v2}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09031c

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    const-string v6, "dismissWaitingCallPopup and make toast"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerUi;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadyAnimationProcessing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isShowIncomingHideShowLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    :cond_0
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 2

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bike_mode"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show answer UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showMessageDialog()V
    .locals 0

    return-void
.end method

.method public showQuoteMark(Z)V
    .locals 0

    return-void
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 0

    return-void
.end method

.method public showTargets(I)V
    .locals 0

    return-void
.end method

.method public showTargets(II)V
    .locals 0

    return-void
.end method

.method public showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_0
    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "wating_calloption_invisible"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "wating_calloption_hold"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, p4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "wating_calloption_end"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v4, p4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :cond_2
    move v0, p4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p3, v2, v3

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$8;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$9;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerFragment$2;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerFragment$3;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    move v0, p5

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$4;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$5;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    move v0, p5

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$6;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$7;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    return-void
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method
