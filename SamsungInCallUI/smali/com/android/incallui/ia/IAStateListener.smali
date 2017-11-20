.class public Lcom/android/incallui/ia/IAStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/bixby/a$d;
.implements Lcom/samsung/android/sdk/bixby/a$i;


# static fields
.field private static final TAG:Ljava/lang/String; = "IAStateListener"

.field private static sInstance:Lcom/android/incallui/ia/IAStateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/ia/IAStateListener;
    .locals 1

    sget-object v0, Lcom/android/incallui/ia/IAStateListener;->sInstance:Lcom/android/incallui/ia/IAStateListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/ia/IAStateListener;

    invoke-direct {v0}, Lcom/android/incallui/ia/IAStateListener;-><init>()V

    sput-object v0, Lcom/android/incallui/ia/IAStateListener;->sInstance:Lcom/android/incallui/ia/IAStateListener;

    :cond_0
    sget-object v0, Lcom/android/incallui/ia/IAStateListener;->sInstance:Lcom/android/incallui/ia/IAStateListener;

    return-object v0
.end method

.method private isAlreadySetReminder(Z)Z
    .locals 4

    const/4 v1, 0x1

    const-string v0, "IAStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bixby_InCall - isAlreadySetReminder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v2, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IAStateListener"

    const-string v3, "Bixby_InCall - isAlreadySetReminder drawer is closed - open it"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContentPopup;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContentPopup;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->showRejectMsgContent(Z)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rejectCallWithMsg()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/AnswerImageFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/fragment/AnswerImageFragment;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setReminder(Z)V
    .locals 3

    const-string v0, "IAStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bixby_InCall - setReminder to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/incallui/InCallUISystemDB;->setAddReminder(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IAStateListener"

    const-string v2, "Bixby_InCall - setReminder drawer is closed - open it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    :cond_0
    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v1}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getReminderCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    return-void

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->showRejectMsgContent(Z)V

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->setReminderChecked(Z)V

    goto :goto_0
.end method

.method private showSendMessage()V
    .locals 2

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - showSendMessage : Reminder or Agif"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    instance-of v1, v1, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    return-void

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->getPopupContainer()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->showRejectMsgContent(Z)V

    goto :goto_0
.end method

.method private spamBlockClicked()V
    .locals 6

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - spamBlockClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IAStateListener"

    const-string v3, "Bixby_InCall - spamBlockClicked drawer is closed - open it"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    :cond_0
    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallSpam"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "MoreSpamScore2"

    const-string v3, "Value"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private spamReportClicked()V
    .locals 6

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - spamReportClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->b:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v2

    instance-of v2, v2, Lcom/android/incallui/fragment/AnswerImageFragment;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getAnswerFragment()Lcom/android/incallui/AnswerUi;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/incallui/fragment/AnswerImageFragment;

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IAStateListener"

    const-string v3, "Bixby_InCall - spamReportClicked drawer is closed - open it"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->toggle()V

    :cond_0
    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v0}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mRejectCallWithMsgContent:Lcom/android/incallui/RejectMsgContent;

    invoke-virtual {v2}, Lcom/android/incallui/RejectMsgContent;->getRejectMsgList()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallReport"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "MoreSpamScore2"

    const-string v3, "Value"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    sget-object v0, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/c;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-string v1, "InCall"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v1, "IncomingCall"

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "IncomingVideoCall"

    :cond_0
    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/c;

    invoke-direct {v2, v1}, Lcom/samsung/android/sdk/bixby/data/c;-><init>(Ljava/lang/String;)V

    const-string v3, "IAStateListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bixby_InCall - onScreenStatesRequested - currentState1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/bixby/data/c;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/c;

    const-string v1, "IAStateListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bixby_InCall - onScreenStatesRequested - currentState2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :cond_2
    const-string v0, "IncomingVoiceCall"

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 10

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v7, 0x0

    invoke-static {v0, v7, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v7

    const-string v0, "IAStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bixby_InCall - onStateReceived, stateId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - There is no incoming call now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "IncomingCall"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCall"

    const-string v3, "Valid"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - This is not a samsung call application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "IncomingCall"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "3rdPartyCallApp"

    const-string v3, "Valid"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto :goto_0

    :sswitch_0
    const-string v9, "IncomingCall"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v9, "CallAccept"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v9, "VoiceCallAccept"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string v9, "CallReject"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v9, "RejectCallWithMessage"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "CrossMessagesConversationViewShare"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v9, "OutgoingCall"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v9, "SpeakerControl"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string v9, "ReminderOn"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v5

    goto :goto_1

    :sswitch_9
    const-string v9, "ReminderOff"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v9, "ShowReminder"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_b
    const-string v9, "SmartCallSpam"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string v9, "SmartCallReport"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v9, "BlockSmartCall"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string v9, "ReportSmartCall"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :pswitch_1
    const-string v0, "IAStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accept call - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "IAStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bixby_InCall - accept VT call - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    :goto_2
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_2

    :cond_4
    const-string v0, "IAStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bixby_InCall - accept VO call - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_2

    :pswitch_2
    const-string v0, "IAStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accept call - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    :goto_3
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/incallui/TelecomAdapter;->answerCall(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck()V

    goto :goto_3

    :pswitch_3
    const-string v0, "IAStateListener"

    const-string v1, "reject call"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->declineIncomingCall(Landroid/content/Context;)V

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg CallReject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "CallReject"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - IncomingCall, IncomingCallNumber, Exist, no"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "IncomingCall"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCallNumber"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/ia/IAStateListener;->rejectCallWithMsg()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "IAStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bixby_InCall - OutgoingCall, call : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const-string v1, "IAStateListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bixby_InCall - current Audio stat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", call : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_8

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SpeakerControl"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - ReminderOn, IncomingCallNumber, Exist, no"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOn"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCallNumber"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v2}, Lcom/android/incallui/ia/IAStateListener;->isAlreadySetReminder(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - ReminderOn, ReminderOn, AlreadySet, yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOn"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "ReminderOn"

    const-string v3, "AlreadySet"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v2}, Lcom/android/incallui/ia/IAStateListener;->setReminder(Z)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOn"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "ReminderOn"

    const-string v3, "AlreadySet"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - ReminderOff, IncomingCallNumber, Exist, no"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOff"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCallNumber"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v1}, Lcom/android/incallui/ia/IAStateListener;->isAlreadySetReminder(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - ReminderOff, ReminderOff, AlreadySet, yes"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOff"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "ReminderOff"

    const-string v3, "AlreadySet"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v1}, Lcom/android/incallui/ia/IAStateListener;->setReminder(Z)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ReminderOff"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "ReminderOff"

    const-string v3, "AlreadySet"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "IAStateListener"

    const-string v1, "Bixby_InCall - requestNlg - ShowReminder, IncomingCallNumber, Exist, no"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ShowReminder"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCallNumber"

    const-string v3, "Exist"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "ShowReminder"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "IncomingCallNumber"

    const-string v3, "Exist"

    const-string v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-direct {p0}, Lcom/android/incallui/ia/IAStateListener;->showSendMessage()V

    goto/16 :goto_0

    :pswitch_b
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallSpam"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "SmartCall"

    const-string v3, "Value"

    const-string v4, "Off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallReport"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "SmartCall"

    const-string v3, "Value"

    const-string v4, "Off"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_f
    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->c:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :pswitch_d
    const/4 v0, 0x0

    if-eqz v7, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    :cond_10
    if-eqz v0, :cond_11

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallSpam"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "UnsavedNumber"

    const-string v3, "Value"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_11
    invoke-static {v7}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    if-ge v0, v3, :cond_12

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallSpam"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "MoreSpamScore2"

    const-string v3, "Value"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_12
    invoke-direct {p0}, Lcom/android/incallui/ia/IAStateListener;->spamBlockClicked()V

    goto/16 :goto_0

    :pswitch_e
    const/4 v0, 0x0

    if-eqz v7, :cond_13

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    :cond_13
    if-eqz v0, :cond_14

    iget-boolean v0, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallReport"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "UnsavedNumber"

    const-string v3, "Value"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_14
    invoke-static {v7}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v0

    if-ge v0, v3, :cond_15

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/a;

    const-string v2, "SmartCallReport"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/bixby/data/a;-><init>(Ljava/lang/String;)V

    const-string v2, "MoreSpamScore2"

    const-string v3, "Value"

    const-string v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/data/a;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/a;->a()Lcom/samsung/android/sdk/bixby/a;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/bixby/a$h;->d:Lcom/samsung/android/sdk/bixby/a$h;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/a;->a(Lcom/samsung/android/sdk/bixby/a$h;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0}, Lcom/android/incallui/ia/IAStateListener;->spamReportClicked()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x6331483c -> :sswitch_0
        -0x4b676b2d -> :sswitch_e
        -0x4a2cc6da -> :sswitch_1
        -0x47e5f951 -> :sswitch_a
        -0x3c41c335 -> :sswitch_5
        -0x2d0b0843 -> :sswitch_3
        -0x8f32870 -> :sswitch_b
        0xf66dda -> :sswitch_d
        0x3a0fef7d -> :sswitch_9
        0x43b8e00a -> :sswitch_6
        0x4be34564 -> :sswitch_4
        0x605e7bb8 -> :sswitch_2
        0x64ec3fbb -> :sswitch_c
        0x6d3a5211 -> :sswitch_8
        0x7fe13c7e -> :sswitch_7
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
