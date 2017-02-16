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

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 62
    new-instance v0, Lcom/android/incallui/fragment/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/fragment/AnswerFragment$1;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isWaitingCallPopupShowing()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall(I)V
    .locals 0
    .param p1, "videoState"    # I

    .prologue
    .line 432
    return-void
.end method

.method public arrangeIncomingHandle(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 487
    return-void
.end method

.method public closeDrawer()V
    .locals 0

    .prologue
    .line 142
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

    .prologue
    .line 133
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .prologue
    .line 150
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogues()V
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    .line 463
    :cond_0
    return-void
.end method

.method public dismissWaitingCallPopup()V
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup(Z)V

    .line 401
    return-void
.end method

.method public dismissWaitingCallPopup(Z)V
    .locals 10
    .param p1, "bShowToast"    # Z

    .prologue
    .line 404
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 405
    iget-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 406
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 407
    if-eqz p1, :cond_0

    .line 408
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 409
    .local v1, "callList":Lcom/android/incallui/CallList;
    if-nez v1, :cond_1

    .line 421
    .end local v1    # "callList":Lcom/android/incallui/CallList;
    :cond_0
    :goto_0
    return-void

    .line 410
    .restart local v1    # "callList":Lcom/android/incallui/CallList;
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 411
    .local v0, "activeCall":Lcom/android/incallui/Call;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 412
    .local v2, "disconnectedCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v6, v0}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v3

    .line 414
    .local v3, "mActiveCallerName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v6, v2}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "mDisconnectedCallerName":Ljava/lang/String;
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

    .line 416
    .local v5, "mToast":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/util/InCallUtils;->displayToast(Ljava/lang/String;)V

    .line 417
    const-string v6, "dismissWaitingCallPopup and make toast"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableButtonAnswerAsShowOrHide()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerUi;
    .locals 0

    .prologue
    .line 82
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getUi()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public isAlreadyAnimationProcessing()Z
    .locals 1

    .prologue
    .line 445
    const/4 v0, 0x0

    return v0
.end method

.method public isAnswerAnimationRunning()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public isShowIncomingHideShowLayout()Z
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 1
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 479
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const-string v1, "onCreateView"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "parent":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 98
    invoke-direct {p0}, Lcom/android/incallui/fragment/AnswerFragment;->isWaitingCallPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->dismissWaitingCallPopup()V

    .line 101
    :cond_0
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "grabbedState"    # I

    .prologue
    .line 146
    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method

.method public resetAnswerCallAnimator()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public showAnswerUi(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 106
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bike_mode"

    .line 107
    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 111
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

    .line 110
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public showMessageDialog()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public showQuoteMark(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 474
    return-void
.end method

.method public showRejectCallWithMessage(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 158
    return-void
.end method

.method public showTargets(I)V
    .locals 0
    .param p1, "targetSet"    # I

    .prologue
    .line 121
    return-void
.end method

.method public showTargets(II)V
    .locals 0
    .param p1, "targetSet"    # I
    .param p2, "videoState"    # I

    .prologue
    .line 125
    return-void
.end method

.method public showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3
    .param p1, "dialog"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 385
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 386
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 387
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 388
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 389
    iget-object v1, p0, Lcom/android/incallui/fragment/AnswerFragment;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 390
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 394
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "videoState"    # I

    .prologue
    const/4 v4, 0x0

    .line 325
    const-string v3, "wating_calloption_invisible"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    const-string v3, "showWaitingCallDialog : call answered without poup"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    const-string v3, "wating_calloption_hold"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, p4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v3, "wating_calloption_end"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v4, p4}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    .line 334
    :cond_2
    move v0, p4

    .line 335
    .local v0, "VIDEO_STATE":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 337
    .local v2, "dialogItems":[Ljava/lang/String;
    aput-object p2, v2, v4

    .line 338
    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 339
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$8;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$8;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 365
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$9;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$9;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    goto :goto_0
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "thirdDialogItem"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    .line 170
    .local v1, "dialogItems":[Ljava/lang/String;
    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 171
    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 172
    const/4 v2, 0x2

    aput-object p4, v1, v2

    .line 174
    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerFragment$2;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 206
    new-instance v2, Lcom/android/incallui/fragment/AnswerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/fragment/AnswerFragment$3;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    .line 212
    return-void
.end method

.method public showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "thirdDialogItem"    # Ljava/lang/String;
    .param p5, "videoState"    # I

    .prologue
    .line 218
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    .line 220
    .local v2, "dialogItems":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 221
    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 222
    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 224
    move v0, p5

    .line 225
    .local v0, "VIDEO_STATE":I
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$4;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 257
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$5;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 264
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    .line 265
    return-void
.end method

.method public showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "firstDialogItem"    # Ljava/lang/String;
    .param p3, "secondDialogItem"    # Ljava/lang/String;
    .param p4, "thirdDialogItem"    # Ljava/lang/String;
    .param p5, "videoState"    # I

    .prologue
    .line 271
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/AnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 272
    .local v1, "dialog":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    .line 273
    .local v2, "dialogItems":[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 274
    const/4 v3, 0x1

    aput-object p3, v2, v3

    .line 275
    const/4 v3, 0x2

    aput-object p4, v2, v3

    .line 277
    move v0, p5

    .line 278
    .local v0, "VIDEO_STATE":I
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$6;

    invoke-direct {v3, p0, v0}, Lcom/android/incallui/fragment/AnswerFragment$6;-><init>(Lcom/android/incallui/fragment/AnswerFragment;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    new-instance v3, Lcom/android/incallui/fragment/AnswerFragment$7;

    invoke-direct {v3, p0}, Lcom/android/incallui/fragment/AnswerFragment$7;-><init>(Lcom/android/incallui/fragment/AnswerFragment;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/AnswerFragment;->showWaitingCallDialog(Landroid/app/AlertDialog$Builder;)V

    .line 321
    return-void
.end method

.method public updateIncomingCallWidgetLayout()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public updateSmartCallRejectMsg(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 483
    return-void
.end method
