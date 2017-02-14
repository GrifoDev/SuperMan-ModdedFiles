.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/InCallPresenter$InCallUiListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;"
    }
.end annotation


# static fields
.field public static final ALL_CALL:I = 0x2

.field public static final BG_CALL:I = 0x1

.field public static final EVENT_UPDATE_SMART_CALL_INFO:I = 0x1

.field public static final FG_CALL:I = 0x0

.field private static final SET_AUTO_ANSWERING_FALSE_DELAY:I = 0x4b0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final GSM_CONFERENCECALL_MAX_SIZE:I

.field private mAnswerCallAfterThisDisconnect:I

.field private mAnswerVideoStateAfterThisDisconnect:I

.field private mCall:Lcom/android/incallui/Call;

.field private mCallId:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHasTextMessages:Z

.field private mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    new-instance v0, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->GSM_CONFERENCECALL_MAX_SIZE:I

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
    .locals 17

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v15}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v13, 0x1

    :goto_0
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVideoCallActiveOrRinging : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v8, 0x0

    if-nez v12, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v12}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    if-nez v14, :cond_4

    const-string v14, " "

    :cond_4
    const-string v7, "%s"

    const/16 v16, 0x0

    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    :cond_5
    const/16 v16, 0x0

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "not support mrge option with one way vt(ATT)"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show Merge Option : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v16, :cond_b

    const/4 v1, 0x5

    if-ge v8, v1, :cond_b

    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090319

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09031a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x2

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090318

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const v1, 0x7f09031d

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    const/4 v5, 0x2

    aget-object v5, v11, v5

    move/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/incallui/AnswerUi;->showWaitingCallDialogGSM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    :cond_8
    const/16 v16, 0x1

    goto/16 :goto_3

    :cond_9
    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "mpcs_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "canada_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "common_volte_in"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_a
    const/16 v16, 0x1

    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v12, v15}, Lcom/android/incallui/util/InCallUtils;->checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090319

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090318

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    const v1, 0x7f09031d

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    const/4 v4, 0x1

    aget-object v4, v11, v4

    move/from16 v0, p1

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/android/incallui/AnswerUi;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall(I)V
    .locals 18

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v14

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    const v17, 0x7f09031d

    const v13, 0x7f090110

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v14}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v14}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/String;

    const-string v7, "%s"

    if-nez v15, :cond_2

    const-string v15, ""

    :cond_2
    if-nez v8, :cond_3

    const-string v8, ""

    :cond_3
    const v1, 0x7f090318

    if-ne v13, v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090111

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v3, 0x0

    aget-object v3, v12, v3

    const/4 v4, 0x1

    aget-object v4, v12, v4

    const/4 v5, 0x2

    aget-object v5, v12, v5

    move/from16 v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/incallui/AnswerUi;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v9}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    const v17, 0x7f09031d

    const v13, 0x7f090318

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/AnswerPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    return v0
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/incallui/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-eqz v1, :cond_3

    move v0, v2

    :goto_2
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isBidirectionalVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    goto/16 :goto_0
.end method

.method private isVideoUpgradePending(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private knoxCustomStartAutoAnswerTimer(II)V
    .locals 7

    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStopAutoAnswerTimer()V

    new-instance v0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;-><init>(Lcom/android/incallui/AnswerPresenter;JJI)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private knoxCustomStopAutoAnswerTimer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    :cond_0
    return-void
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6

    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isVibrateWhenRinging()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "[CarModeON] Do not show QuoteMark ..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerUi;->showQuoteMark(Z)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Showing incoming for call id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v1

    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    invoke-interface {v2, v0}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    :cond_4
    const-string v2, "roaming_enhancement"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCallForKNOX(Lcom/android/incallui/Call;)V

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "[CarModeON] Show QuoteMark ..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    invoke-interface {v2, v5}, Lcom/android/incallui/AnswerUi;->showQuoteMark(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_1
.end method

.method private processIncomingCallForKNOX(Lcom/android/incallui/Call;)V
    .locals 13

    const/16 v7, 0x8

    const/4 v12, -0x1

    const/4 v11, 0x1

    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v9, "processIncomingCallForKNOX START"

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallPickupState(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v11, :cond_1

    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxCustom: incoming call number: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v9, "KnoxCustom: matched in auto call number list"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberDelay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberAnswerMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v4, v12, :cond_5

    if-eq v0, v12, :cond_5

    if-ne v0, v11, :cond_2

    move v1, v7

    :goto_0
    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "KnoxCustom: auto answering with speaker "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-ne v1, v7, :cond_3

    const-string v7, "on"

    :goto_1
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_4

    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KnoxCustom: auto answering call in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " sec"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, v1}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStartAutoAnswerTimer(II)V

    :cond_1
    :goto_2
    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v8, "processIncomingCallForKNOX END"

    invoke-static {v7, v8, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const-string v7, "off"

    goto :goto_1

    :cond_4
    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v8, "KnoxCustom: auto answering call immediately"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v7, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0, v7}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KnoxCustom: can\'t auto answer, delay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " answerMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string v3, "processVideoUpgradeRequestCall: Video states are same. Return."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    if-nez v2, :cond_1

    const-string v3, "Ui is null. Can\'t process upgrade request"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    const/4 v3, 0x4

    invoke-interface {v2, v3, v1}, Lcom/android/incallui/AnswerUi;->showTargets(II)V

    goto :goto_0
.end method

.method private showAnswerUi(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSmartCall(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    new-instance v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;-><init>()V

    iput-object p1, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public checkAndHandleDuringEpdgCall(I)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v6, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v7, "checkAndHandleDuringEpdgCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi_call_enable"

    invoke-static {v6, v7, v5}, Lcom/android/incallui/operator/usa/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    sget-object v6, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkAndHandleDuringEpdgCall videostate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " hasEpdgCall:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isVoWiFiFeature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "support_vowifi"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isWifiCallStatus:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    const-string v4, "support_vowifi"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public controlWaitingCall(Ljava/lang/String;I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v6, "controlWaitingCall"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_4

    move v2, v3

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v5, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    invoke-direct {p0, p2}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenHaveHoldingCall(I)V

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :cond_8
    invoke-direct {p0, p2}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, p2}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getCallerName: call is empty"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getCallerName: isSrvccConference"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Ljava/lang/String;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallerName(Ljava/lang/String;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerName : number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerName : cnapName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallerName : name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "unknown"

    invoke-virtual {v5, v6, v7}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/StringManager;->getInstance()Lcom/android/incallui/StringManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "private_num"

    invoke-virtual {v5, v6, v7}, Lcom/android/incallui/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_6
    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v5, "getCallerName: call and contactCacheEntry is empty"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public hangUpThenAnswer(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    return-void
.end method

.method public hangUpThenAnswer(II)V
    .locals 9

    const/4 v5, 0x1

    iput p2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    :cond_0
    invoke-static {v5}, Lcom/android/incallui/InCallUISystemDB;->setInComingCallDisconnect(Z)V

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz v4, :cond_1

    const-string v6, "us_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "canada_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "common_volte_in"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "thl_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ect_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    move v0, v5

    :goto_1
    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    sget-object v6, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hangUpThenAnswer mAnswerCallAfterThisDisconnect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto :goto_0

    :pswitch_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_3
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto/16 :goto_0

    :cond_7
    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_3

    :pswitch_2
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    const-string v6, "us_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    :goto_4
    sget-object v6, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hangUpThenAnswer mAnswerCallAfterThisDisconnect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_8
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_4

    :cond_a
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAnswer(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer (upgradeCall) mCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer (answerCall) mCallId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " videoState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->checkAndHandleDuringEpdgCall(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public onAnswerWithMerge(I)V
    .locals 8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v5, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAnswerWithMerge Call ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  VideoState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    const-string v5, "canada_bmc_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v2, v4

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVideoCallActiveOrRinging : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    const-string v5, "onAnswerWithMerge Showing Toast"

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    const v6, 0x7f0900d9

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_4
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerUi;

    invoke-interface {v4, p1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    goto :goto_2
.end method

.method public onAnswerWithWaitingCheck()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    return-void
.end method

.method public onAnswerWithWaitingCheck(I)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnswerWithWaitingCheck Call ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  VideoState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3}, Lcom/android/incallui/AnswerUi;->isAnswerAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "Skip onCallChanged when answer animation is running"

    invoke-static {v3, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCallStateChange() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    :goto_1
    iput-boolean v6, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallChanged : isAutoAnswered - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v7}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v6}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallListChange() => Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1
.end method

.method public onChildNumberChange()V
    .locals 0

    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-nez v2, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    :cond_0
    :goto_0
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect : isAutoAnswered - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/incallui/AnswerPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerPresenter$2;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    const-wide/16 v4, 0x4b0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, v6}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    :cond_1
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDisconnect : isSmartAnswered - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    invoke-static {v6}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    :cond_2
    return-void

    :cond_3
    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    goto/16 :goto_0
.end method

.method public onDismissDialog()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    return-void
.end method

.method public onHangUpThenAnswer(Lcom/android/incallui/Call;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerUi;

    invoke-interface {v0, p2}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 3

    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    const-string v1, "declining upgrade request id: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest()V

    :cond_2
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onSmartImageQueryComplete()V
    .locals 0

    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    const-string v0, "SmartCallback onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->updateSmartCall(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    return-void
.end method

.method public onText()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->showMessageDialog()V

    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/AnswerUi;)V
    .locals 4

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "onUiReady()..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_1
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "addListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 2

    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onUiReady()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUiShowing(Z)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoUpgradeRequestCall call ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStopAutoAnswerTimer()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerUi;)V
    .locals 2

    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onUiUnready()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    check-cast p1, Lcom/android/incallui/AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerUi;)V

    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgradeToVideo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "onUpgradeToVideo ui is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_2

    const-string v2, "declining upgrade request"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    const-string v2, "process upgrade request as no MT call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "sendTextToDefaultActivity()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "rejectCallWithMessage DISMISS KEYGUARD for create MSG"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->clearFlags(I)V

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->addFlags(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_sendCustomMessage(Lcom/android/incallui/Call;)V

    :goto_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_sendMessage(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartRejectMessageAppLogging(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_1
.end method
