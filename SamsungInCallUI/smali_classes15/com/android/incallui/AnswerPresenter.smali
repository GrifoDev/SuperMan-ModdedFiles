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

    .prologue
    .line 65
    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 78
    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    .line 86
    new-instance v0, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    .line 763
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->GSM_CONFERENCECALL_MAX_SIZE:I

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V
    .locals 17
    .param p1, "videoState"    # I

    .prologue
    .line 770
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v14, 0x0

    .line 772
    .local v14, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    .line 774
    .local v9, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v12

    .line 775
    .local v12, "fgCall":Lcom/android/incallui/Call;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 777
    .local v15, "ringingCall":Lcom/android/incallui/Call;
    invoke-static {v12}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v15}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v13, 0x1

    .line 778
    .local v13, "isVideoCallActiveOrRinging":Z
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

    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 781
    .local v10, "context":Landroid/content/Context;
    const/4 v8, 0x0

    .line 783
    .local v8, "activeCallsCounts":I
    if-nez v12, :cond_3

    .line 846
    :cond_1
    :goto_1
    return-void

    .line 777
    .end local v8    # "activeCallsCounts":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v13    # "isVideoCallActiveOrRinging":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 785
    .restart local v8    # "activeCallsCounts":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v13    # "isVideoCallActiveOrRinging":Z
    :cond_3
    invoke-virtual {v12}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 786
    invoke-virtual {v12}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008b

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

    .line 793
    :goto_2
    if-nez v14, :cond_4

    .line 794
    const-string v14, " "

    .line 797
    :cond_4
    const-string v7, "%s"

    .line 799
    .local v7, "SRC_TAGS":Ljava/lang/String;
    const/16 v16, 0x0

    .line 801
    .local v16, "showMergeOption":Z
    const-string v1, "att_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 802
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->hasVideoOneway()Z

    move-result v1

    if-nez v1, :cond_5

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_TX:I

    move/from16 v0, p1

    if-eq v0, v1, :cond_5

    sget v1, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_ONEWAY_RX:I

    move/from16 v0, p1

    if-ne v0, v1, :cond_8

    .line 806
    :cond_5
    const/16 v16, 0x0

    .line 807
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "not support mrge option with one way vt(ATT)"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
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

    .line 824
    if-eqz v16, :cond_b

    const/4 v1, 0x5

    if-ge v8, v1, :cond_b

    .line 825
    const/4 v1, 0x3

    new-array v11, v1, [Ljava/lang/String;

    .line 826
    .local v11, "dialogItems":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    .line 827
    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090326

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    .line 828
    const/4 v1, 0x2

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    .line 829
    const v1, 0x7f090329

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 832
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

    .line 790
    .end local v2    # "dialogTitle":Ljava/lang/String;
    .end local v7    # "SRC_TAGS":Ljava/lang/String;
    .end local v11    # "dialogItems":[Ljava/lang/String;
    .end local v16    # "showMergeOption":Z
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 809
    .restart local v7    # "SRC_TAGS":Ljava/lang/String;
    .restart local v16    # "showMergeOption":Z
    :cond_8
    const/16 v16, 0x1

    goto/16 :goto_3

    .line 811
    :cond_9
    const-string v1, "tmo_volte_ui"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "mpcs_volte_ui"

    .line 812
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "common_volte_in"

    .line 813
    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 814
    :cond_a
    const/16 v16, 0x1

    .line 816
    const-string v1, "jansky_info_for_tmo"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 817
    invoke-static {v12, v15}, Lcom/android/incallui/util/InCallUtils;->checkIsShowMergeforJansky(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 818
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 835
    :cond_b
    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    .line 836
    .restart local v11    # "dialogItems":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090325

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    .line 838
    const/4 v1, 0x1

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090324

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v1

    .line 840
    const v1, 0x7f090329

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 842
    .restart local v2    # "dialogTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 843
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
    .param p1, "videoState"    # I

    .prologue
    .line 853
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v15, 0x0

    .line 855
    .local v15, "foreName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 856
    .local v8, "backName":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    .line 859
    .local v10, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v14

    .line 860
    .local v14, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v9

    .line 862
    .local v9, "bgCall":Lcom/android/incallui/Call;
    const v17, 0x7f090329

    .line 863
    .local v17, "titleTextID":I
    const v13, 0x7f090112

    .line 864
    .local v13, "endOrEndingTextID":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 866
    .local v11, "context":Landroid/content/Context;
    if-eqz v14, :cond_0

    if-nez v9, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-virtual {v14}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 869
    invoke-virtual {v14}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    .line 870
    .local v16, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 871
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 872
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 885
    .end local v16    # "size":I
    :goto_1
    const/4 v1, 0x3

    new-array v12, v1, [Ljava/lang/String;

    .line 886
    .local v12, "dialogItems":[Ljava/lang/String;
    const-string v7, "%s"

    .line 888
    .local v7, "SRC_TAGS":Ljava/lang/String;
    if-nez v15, :cond_2

    const-string v15, ""

    .line 889
    :cond_2
    if-nez v8, :cond_3

    const-string v8, ""

    .line 892
    :cond_3
    const v1, 0x7f090324

    if-ne v13, v1, :cond_6

    .line 893
    const/4 v1, 0x0

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    .line 894
    invoke-virtual {v3, v4, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    .line 895
    const/4 v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%s"

    .line 896
    invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    .line 901
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090113

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v1

    .line 902
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 904
    .local v2, "dialogTitle":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 905
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

    .line 873
    .end local v2    # "dialogTitle":Ljava/lang/String;
    .end local v7    # "SRC_TAGS":Ljava/lang/String;
    .end local v12    # "dialogItems":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 874
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v15

    .line 875
    invoke-virtual {v9}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v16

    .line 876
    .restart local v16    # "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090121

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

    .line 878
    goto/16 :goto_1

    .line 879
    .end local v16    # "size":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v15

    .line 880
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v8

    .line 881
    const v17, 0x7f090329

    .line 882
    const v13, 0x7f090324

    goto/16 :goto_1

    .line 898
    .restart local v7    # "SRC_TAGS":Ljava/lang/String;
    .restart local v12    # "dialogItems":[Ljava/lang/String;
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

    .line 899
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
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;
    .param p1, "x1"    # Lcom/android/incallui/Call;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/AnswerPresenter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    return v0
.end method

.method private configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
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

    .prologue
    .local p2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-nez v1, :cond_1

    .line 997
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 965
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1}, Lcom/android/incallui/AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    .line 966
    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-eqz v1, :cond_3

    move v0, v2

    .line 968
    .local v0, "withSms":Z
    :goto_2
    invoke-static {p1}, Lcom/android/incallui/VideoUtils;->isBidirectionalVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 969
    if-eqz v0, :cond_4

    .line 970
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    .line 971
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 972
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto :goto_0

    .end local v0    # "withSms":Z
    :cond_2
    move v1, v3

    .line 964
    goto :goto_1

    :cond_3
    move v0, v3

    .line 966
    goto :goto_2

    .line 975
    .restart local v0    # "withSms":Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_5

    .line 976
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto :goto_0

    .line 980
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    goto :goto_0

    .line 983
    :cond_6
    if-eqz v0, :cond_7

    .line 984
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    .line 985
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureMessageDialog(Ljava/util/List;)V

    .line 986
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 987
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 989
    :cond_7
    iget-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v1, :cond_8

    .line 990
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 991
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p2}, Lcom/android/incallui/AnswerUi;->configureRejectMsgList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 994
    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerUi;->showTargets(I)V

    goto/16 :goto_0
.end method

.method private isVideoUpgradePending(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 314
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
    .param p1, "time"    # I
    .param p2, "audioMode"    # I

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStopAutoAnswerTimer()V

    .line 439
    new-instance v0, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;-><init>(Lcom/android/incallui/AnswerPresenter;JJI)V

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    .line 440
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->start()Landroid/os/CountDownTimer;

    .line 441
    return-void
.end method

.method private knoxCustomStopAutoAnswerTimer()V
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;->cancel()V

    .line 446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mKnoxCustomAutoAnswerTimer:Lcom/android/incallui/AnswerPresenter$KnoxCustomAutoAnswerTimer;

    .line 448
    :cond_0
    return-void
.end method

.method private processIncomingCall(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 332
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    .line 333
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 335
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isCarModeOn()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isVibrateWhenRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    :cond_1
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "[CarModeON] Do not show QuoteMark ..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v6}, Lcom/android/incallui/AnswerUi;->showQuoteMark(Z)V

    .line 347
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 349
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v7}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 353
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 354
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v2

    .line 358
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    .line 361
    .end local v2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 362
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    .line 363
    .local v1, "showing":Z
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v1}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    .line 365
    const-string v3, "roaming_enhancement"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 366
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 367
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    invoke-static {}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->getInstance()Lcom/android/incallui/operator/usa/InCallUIExtensionManager;

    move-result-object v3

    invoke-virtual {v3, v0, p1, v6}, Lcom/android/incallui/operator/usa/InCallUIExtensionManager;->showCallRoamingGuardDialog(Landroid/content/Context;Lcom/android/incallui/Call;Z)V

    .line 371
    .end local v0    # "activity":Lcom/android/incallui/InCallActivity;
    .end local v1    # "showing":Z
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCallForKNOX(Lcom/android/incallui/Call;)V

    .line 372
    return-void

    .line 340
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 341
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "[CarModeON] Show QuoteMark ..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v7}, Lcom/android/incallui/AnswerUi;->showQuoteMark(Z)V

    goto/16 :goto_0

    .line 356
    .restart local v2    # "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallList;->getTextResponses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_1
.end method

.method private processIncomingCallForKNOX(Lcom/android/incallui/Call;)V
    .locals 13
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/16 v7, 0x8

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 375
    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v9, "processIncomingCallForKNOX START"

    invoke-static {v8, v9, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 376
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallPickupState(Landroid/content/Context;)I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 377
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

    .line 379
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 380
    .local v6, "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 381
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "callNumber":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 383
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "autoNumber":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 385
    sget-object v8, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v9, "KnoxCustom: matched in auto call number list"

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberDelay(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 387
    .local v4, "delay":I
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/android/incallui/wrapper/KnoxCustomManagerWrapper;->getAutoCallNumberAnswerMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 388
    .local v0, "answerMode":I
    if-eq v4, v12, :cond_5

    if-eq v0, v12, :cond_5

    .line 389
    if-ne v0, v11, :cond_2

    move v1, v7

    .line 391
    .local v1, "audioMode":I
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

    .line 393
    if-lez v4, :cond_4

    .line 394
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

    .line 395
    invoke-direct {p0, v4, v1}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStartAutoAnswerTimer(II)V

    .line 409
    .end local v0    # "answerMode":I
    .end local v1    # "audioMode":I
    .end local v2    # "autoNumber":Ljava/lang/String;
    .end local v3    # "callNumber":Ljava/lang/String;
    .end local v4    # "delay":I
    .end local v5    # "number":Ljava/lang/String;
    .end local v6    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v8, "processIncomingCallForKNOX END"

    invoke-static {v7, v8, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 410
    return-void

    .line 389
    .restart local v0    # "answerMode":I
    .restart local v2    # "autoNumber":Ljava/lang/String;
    .restart local v3    # "callNumber":Ljava/lang/String;
    .restart local v4    # "delay":I
    .restart local v5    # "number":Ljava/lang/String;
    .restart local v6    # "numberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    .line 391
    .restart local v1    # "audioMode":I
    :cond_3
    const-string v7, "off"

    goto :goto_1

    .line 397
    :cond_4
    sget-object v7, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v8, "KnoxCustom: auto answering call immediately"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget v7, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0, v7}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    .line 399
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_2

    .line 402
    .end local v1    # "audioMode":I
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 452
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 456
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 458
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 459
    .local v0, "currentVideoState":I
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getRequestedVideoState()I

    move-result v1

    .line 461
    .local v1, "modifyToVideoState":I
    if-ne v0, v1, :cond_0

    .line 462
    const-string v3, "processVideoUpgradeRequestCall: Video states are same. Return."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    .line 468
    .local v2, "ui":Lcom/android/incallui/AnswerUi;
    if-nez v2, :cond_1

    .line 469
    const-string v3, "Ui is null. Can\'t process upgrade request"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    .line 473
    const/4 v3, 0x4

    invoke-interface {v2, v3, v1}, Lcom/android/incallui/AnswerUi;->showTargets(II)V

    goto :goto_0
.end method

.method private showAnswerUi(Z)Z
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 319
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 320
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    invoke-interface {v1, p1}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    .line 325
    :cond_0
    const/4 v1, 0x1

    .line 327
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateSmartCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 1051
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1052
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1055
    :cond_0
    new-instance v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;

    invoke-direct {v0}, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;-><init>()V

    .line 1056
    .local v0, "cookie":Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;
    iput-object p1, v0, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    .line 1058
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1059
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1060
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1061
    return-void
.end method


# virtual methods
.method public checkAndHandleDuringEpdgCall(I)V
    .locals 9
    .param p1, "videoState"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1000
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1001
    .local v0, "call":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 1002
    .local v1, "hasEpdgCall":Z
    sget-object v6, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v7, "checkAndHandleDuringEpdgCall"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    if-nez v0, :cond_0

    .line 1004
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1030
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "wifi_call_enable"

    invoke-static {v6, v7, v5}, Lcom/android/incallui/operator/usa/VoWifiSettingsDataBaseManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v3, v4

    .line 1008
    .local v3, "isWifiCallStatus":Z
    :goto_1
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 1009
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 1010
    .local v2, "incomingcall":Lcom/android/incallui/Call;
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

    .line 1011
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

    .line 1010
    invoke-static {v6, v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1012
    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    .line 1013
    const-string v4, "support_vowifi"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1014
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/incallui/util/CallTypeUtils;->isVideoTwoWay(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1015
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    .end local v2    # "incomingcall":Lcom/android/incallui/Call;
    .end local v3    # "isWifiCallStatus":Z
    :cond_1
    move v3, v5

    .line 1006
    goto :goto_1

    .line 1017
    .restart local v2    # "incomingcall":Lcom/android/incallui/Call;
    .restart local v3    # "isWifiCallStatus":Z
    :cond_2
    if-eqz v3, :cond_3

    .line 1018
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1020
    :cond_3
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto/16 :goto_0

    .line 1024
    :cond_4
    invoke-virtual {p0, v5, p1}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto/16 :goto_0

    .line 1027
    :cond_5
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v4, v5, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public controlWaitingCall(Ljava/lang/String;I)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 681
    sget-object v5, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v6, "controlWaitingCall"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 683
    .local v0, "callList":Lcom/android/incallui/CallList;
    if-nez v0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 685
    .local v1, "hasActiveCall":Z
    :goto_1
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 687
    .local v2, "hasBackgroundCall":Z
    :goto_2
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 688
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v5, "internalAnswerCall: answering (both lines in use!)..."

    invoke-static {v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 691
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 692
    :cond_2
    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    goto :goto_0

    .end local v1    # "hasActiveCall":Z
    .end local v2    # "hasBackgroundCall":Z
    :cond_3
    move v1, v4

    .line 684
    goto :goto_1

    .restart local v1    # "hasActiveCall":Z
    :cond_4
    move v2, v4

    .line 685
    goto :goto_2

    .line 694
    .restart local v2    # "hasBackgroundCall":Z
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenHaveHoldingCall(I)V

    goto :goto_0

    .line 696
    :cond_6
    if-eqz v1, :cond_9

    .line 698
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 699
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "vzw_volte_ui"

    .line 700
    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 701
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    .line 703
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/incallui/AnswerPresenter;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall(I)V

    goto :goto_0

    .line 706
    :cond_9
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 707
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v3, 0x1

    .line 712
    if-nez p1, :cond_0

    .line 713
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getCallerName: call is empty"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 714
    const/4 v1, 0x0

    .line 721
    :goto_0
    return-object v1

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 717
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isSrvccConference(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "getCallerName: isSrvccConference"

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 719
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09024d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/AnswerPresenter;->getCallerName(Ljava/lang/String;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCallerName(Ljava/lang/String;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    .line 726
    .local v1, "contactCacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v1, :cond_3

    .line 727
    iget-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    .line 728
    .local v2, "name":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 729
    .local v3, "number":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 730
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

    .line 760
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 733
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "number":Ljava/lang/String;
    :cond_1
    const-string v4, "cnap_supplementary_service"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 734
    iget-object v0, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->message:Ljava/lang/String;

    .line 735
    .local v0, "cnapName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 736
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

    .line 737
    goto :goto_0

    .line 740
    .end local v0    # "cnapName":Ljava/lang/String;
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

    .line 744
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_6

    .line 745
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 746
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SystemServiceUtils;->getCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 748
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

    .line 749
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 750
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

    .line 751
    :cond_5
    invoke-virtual {p2}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09005d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 757
    .end local v2    # "name":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v5, "getCallerName: call and contactCacheEntry is empty"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 760
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public hangUpThenAnswer(I)V
    .locals 1
    .param p1, "requestType"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->hangUpThenAnswer(II)V

    .line 605
    return-void
.end method

.method public hangUpThenAnswer(II)V
    .locals 9
    .param p1, "requestType"    # I
    .param p2, "videoState"    # I

    .prologue
    const/4 v5, 0x1

    .line 608
    iput p2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    .line 610
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 612
    .local v3, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    .line 613
    .local v4, "fgCall":Lcom/android/incallui/Call;
    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 616
    .local v2, "bgCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v1

    .line 617
    .local v1, "audioMode":I
    const/16 v6, 0x8

    if-ne v1, v6, :cond_0

    .line 618
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    .line 621
    :cond_0
    invoke-static {v5}, Lcom/android/incallui/InCallUISystemDB;->setInComingCallDisconnect(Z)V

    .line 623
    packed-switch p1, :pswitch_data_0

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 625
    :pswitch_0
    if-eqz v4, :cond_1

    .line 626
    const-string v6, "us_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "canada_volte_ui"

    .line 627
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "common_volte_in"

    .line 628
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "thl_volte_ui"

    .line 629
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "ect_volte_ui"

    .line 630
    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    move v0, v5

    .line 631
    .local v0, "answerAfterDisconnect":Z
    :goto_1
    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 632
    invoke-virtual {v4}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v0, :cond_6

    .line 633
    :cond_3
    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 634
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 638
    :goto_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 639
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

    .line 630
    .end local v0    # "answerAfterDisconnect":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 636
    .restart local v0    # "answerAfterDisconnect":Z
    :cond_5
    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_2

    .line 643
    :cond_6
    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto :goto_0

    .line 648
    .end local v0    # "answerAfterDisconnect":Z
    :pswitch_1
    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 650
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 654
    :goto_3
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto/16 :goto_0

    .line 652
    :cond_7
    iput v5, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_3

    .line 659
    :pswitch_2
    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 660
    const-string v6, "us_volte_ui"

    invoke-static {v6}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/android/incallui/util/CallTypeUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 661
    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 662
    invoke-virtual {v4}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 668
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

    .line 670
    :cond_8
    invoke-virtual {p0, v2, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    .line 671
    invoke-virtual {p0, v4, p2}, Lcom/android/incallui/AnswerPresenter;->onHangUpThenAnswer(Lcom/android/incallui/Call;I)V

    goto/16 :goto_0

    .line 663
    :cond_9
    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 664
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_4

    .line 666
    :cond_a
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    goto :goto_4

    .line 623
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAnswer(I)V
    .locals 1
    .param p1, "videoState"    # I

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 530
    return-void
.end method

.method public onAnswer(ILandroid/content/Context;)V
    .locals 2
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 537
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

    .line 538
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    goto :goto_0

    .line 540
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

    .line 541
    sget v0, Lcom/android/incallui/service/vt/VideoCallCapability;->EPDG_CALL:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallCapability;->can(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->checkAndHandleDuringEpdgCall(I)V

    .line 546
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto :goto_0

    .line 544
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
    .param p1, "videoState"    # I

    .prologue
    const/4 v4, 0x1

    .line 551
    iget-object v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 554
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

    .line 555
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 556
    const-string v5, "canada_bmc_volte_ui"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 557
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 559
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    .line 560
    .local v1, "fgcall":Lcom/android/incallui/Call;
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 562
    .local v3, "ringingcall":Lcom/android/incallui/Call;
    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    move v2, v4

    .line 563
    .local v2, "isVideoCallActiveOrRinging":Z
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

    .line 565
    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    .line 566
    :cond_3
    const-string v5, "onAnswerWithMerge Showing Toast"

    invoke-static {p0, v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 567
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    const v6, 0x7f0900db

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 569
    :cond_4
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    .line 573
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "fgcall":Lcom/android/incallui/Call;
    .end local v2    # "isVideoCallActiveOrRinging":Z
    .end local v3    # "ringingcall":Lcom/android/incallui/Call;
    :goto_2
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/AnswerUi;

    invoke-interface {v4, p1}, Lcom/android/incallui/AnswerUi;->animateForAnswerCall(I)V

    goto/16 :goto_0

    .line 562
    .restart local v0    # "callList":Lcom/android/incallui/CallList;
    .restart local v1    # "fgcall":Lcom/android/incallui/Call;
    .restart local v3    # "ringingcall":Lcom/android/incallui/Call;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 571
    .end local v0    # "callList":Lcom/android/incallui/CallList;
    .end local v1    # "fgcall":Lcom/android/incallui/Call;
    .end local v3    # "ringingcall":Lcom/android/incallui/Call;
    :cond_6
    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->setMergeAfterAnswer(Z)V

    goto :goto_2
.end method

.method public onAnswerWithWaitingCheck()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerPresenter;->onAnswerWithWaitingCheck(I)V

    .line 578
    return-void
.end method

.method public onAnswerWithWaitingCheck(I)V
    .locals 4
    .param p1, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    .line 581
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 584
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

    .line 585
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 587
    .local v0, "isWaitingCall":Z
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/AnswerPresenter;->controlWaitingCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 585
    .end local v0    # "isWaitingCall":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 590
    .restart local v0    # "isWaitingCall":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onAnswer(I)V

    goto :goto_0
.end method

.method public onCallChanged(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 479
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

    .line 480
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "Skip onCallChanged when answer animation is running"

    invoke-static {v3, v4, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 483
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

    .line 484
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v3

    if-nez v3, :cond_0

    .line 486
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 487
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 488
    .local v1, "isUpgradePending":Z
    if-nez v1, :cond_2

    .line 490
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 493
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 494
    .local v0, "incall":Lcom/android/incallui/Call;
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 495
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 500
    :goto_1
    iput-boolean v6, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    .line 503
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 504
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

    .line 505
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v7}, Lcom/android/incallui/AnswerUi;->showAnswerUi(Z)V

    .line 508
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerUi;

    invoke-interface {v3, v6}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    goto/16 :goto_0

    .line 497
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    .line 512
    .end local v0    # "incall":Lcom/android/incallui/Call;
    .end local v1    # "isUpgradePending":Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mHasTextMessages:Z

    if-nez v3, :cond_0

    .line 513
    if-eqz p1, :cond_0

    .line 514
    const/4 v2, 0x0

    .line 515
    .local v2, "textMsgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "support_smart_call"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 516
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_6

    .line 517
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getBlockReportMessage()Ljava/util/List;

    move-result-object v2

    .line 521
    :goto_2
    if-eqz v2, :cond_0

    .line 522
    invoke-direct {p0, p1, v2}, Lcom/android/incallui/AnswerPresenter;->configureAnswerTargetsForSms(Lcom/android/incallui/Call;Ljava/util/List;)V

    goto/16 :goto_0

    .line 519
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
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 210
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 211
    .local v0, "firstcall":Lcom/android/incallui/Call;
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

    .line 212
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
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

    .line 214
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    .line 216
    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerUi;

    const/16 v4, 0x20

    .line 219
    invoke-virtual {v0, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 218
    :goto_0
    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->showRejectCallWithMessage(Z)V

    .line 233
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 219
    goto :goto_0

    .line 223
    :cond_2
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    .line 226
    :cond_3
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 227
    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1

    .line 229
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    goto :goto_1
.end method

.method public onChildNumberChange()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public onDecline(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 914
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

    .line 915
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 917
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    .line 921
    :goto_0
    return-void

    .line 919
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v6, 0x0

    .line 237
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

    .line 238
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

    .line 239
    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-lez v2, :cond_3

    .line 240
    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 241
    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    if-nez v2, :cond_0

    .line 242
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerCallAfterThisDisconnect:I

    .line 243
    iget v2, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    .line 249
    :cond_0
    :goto_0
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
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

    .line 251
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    .line 252
    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    .line 253
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 254
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/incallui/AnswerPresenter$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerPresenter$2;-><init>(Lcom/android/incallui/AnswerPresenter;)V

    const-wide/16 v4, 0x4b0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    invoke-direct {p0, v6}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 261
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getCallCardUi()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    .line 262
    .local v0, "callCardUi":Lcom/android/incallui/CallCardUi;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/incallui/CallCardUi;->clearAMView()V

    .line 266
    .end local v0    # "callCardUi":Lcom/android/incallui/CallCardUi;
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_1
    const-string v2, "smart_auto_answering"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
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

    .line 269
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->isSmartAnswered()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_2

    .line 270
    invoke-static {}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->stopGuidance()V

    .line 271
    invoke-static {v6}, Lcom/android/incallui/operator/kor/SmartAnswerUtils;->setSmartAnswered(Z)V

    .line 274
    :cond_2
    return-void

    .line 246
    :cond_3
    iput v6, p0, Lcom/android/incallui/AnswerPresenter;->mAnswerVideoStateAfterThisDisconnect:I

    goto/16 :goto_0
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 958
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 959
    return-void
.end method

.method public onHangUpThenAnswer(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 600
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
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 280
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

    .line 281
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 136
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

    .line 137
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 141
    .local v0, "modifyCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 142
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 143
    const-string v1, "declining upgrade request id: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 145
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest()V

    .line 147
    :cond_2
    invoke-virtual {p3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-direct {p0, p3}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onLastForwardedNumberChange()V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public onSessionModificationStateChange(I)V
    .locals 4
    .param p1, "sessionModificationState"    # I

    .prologue
    const/4 v1, 0x0

    .line 293
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    const/4 v0, 0x1

    .line 296
    .local v0, "isUpgradePending":Z
    :goto_0
    if-nez v0, :cond_0

    .line 298
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    .line 299
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 301
    :cond_0
    return-void

    .end local v0    # "isUpgradePending":Z
    :cond_1
    move v0, v1

    .line 293
    goto :goto_0
.end method

.method public onSmartImageQueryComplete()V
    .locals 0

    .prologue
    .line 1044
    return-void
.end method

.method public onSmartInfoQueryComplete()V
    .locals 2

    .prologue
    .line 1034
    const-string v0, "SmartCallback onQueryComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->updateSmartCall(Lcom/android/incallui/Call;)V

    .line 1040
    :cond_0
    return-void
.end method

.method public onSmartInfoQueryStart()V
    .locals 0

    .prologue
    .line 1048
    return-void
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 924
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 925
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 926
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerUi;->showMessageDialog()V

    .line 928
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/AnswerUi;)V
    .locals 4
    .param p1, "ui"    # Lcom/android/incallui/AnswerUi;

    .prologue
    .line 160
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "onUiReady()..."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 162
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 164
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 165
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 171
    :cond_1
    const-string v2, "support_smart_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 172
    sget-object v2, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v3, "addListener"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/smartcall/SmartCallController;->addListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 175
    :cond_2
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/android/incallui/AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerUi;)V

    return-void
.end method

.method public onUiResume()V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onUiReady()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 4
    .param p1, "showing"    # Z

    .prologue
    .line 104
    if-eqz p1, :cond_3

    .line 105
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 106
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 108
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 109
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 112
    :cond_0
    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/incallui/Call;)V

    .line 115
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 116
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

    .line 117
    if-eqz v0, :cond_2

    .line 118
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerPresenter;->showAnswerUi(Z)Z

    .line 119
    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    .line 132
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "calls":Lcom/android/incallui/CallList;
    :cond_2
    :goto_0
    return-void

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->knoxCustomStopAutoAnswerTimer()V

    .line 125
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 128
    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 129
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:Ljava/lang/String;

    invoke-virtual {v2, v3, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(Ljava/lang/String;Lcom/android/incallui/CallList$CallUpdateListener;)V

    goto :goto_0
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/AnswerUi;

    .prologue
    .line 179
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "onUiUnready()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 182
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v1, "removeListener"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallController;->getInstance()Lcom/android/incallui/smartcall/SmartCallController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/smartcall/SmartCallController;->removeListener(Lcom/android/incallui/smartcall/SmartCallController$SmartCallEventListener;)V

    .line 186
    :cond_0
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 60
    check-cast p1, Lcom/android/incallui/AnswerUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerUi;)V

    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 190
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

    .line 191
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    const-string v2, "onUpgradeToVideo ui is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->isVideoUpgradePending(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 196
    .local v1, "isUpgradePending":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 197
    .local v0, "inCallPresenter":Lcom/android/incallui/InCallPresenter;
    if-eqz v1, :cond_2

    .line 198
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_2

    .line 199
    const-string v2, "declining upgrade request"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerUi;

    invoke-interface {v2}, Lcom/android/incallui/AnswerUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->declineUpgradeRequest(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_2
    if-eqz v1, :cond_0

    .line 203
    const-string v2, "process upgrade request as no MT call"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processVideoUpgradeRequestCall(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 931
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "sendTextToDefaultActivity()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    .line 934
    .local v0, "activity":Lcom/android/incallui/InCallActivity;
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 935
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v2, "rejectCallWithMessage DISMISS KEYGUARD for create MSG"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->clearFlags(I)V

    .line 937
    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->addFlags(I)V

    .line 941
    :cond_0
    if-nez p1, :cond_1

    .line 942
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_sendCustomMessage(Lcom/android/incallui/Call;)V

    .line 948
    :goto_0
    const-string v1, "support_smart_call"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 949
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 950
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 954
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 955
    return-void

    .line 944
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_sendMessage(Lcom/android/incallui/Call;)V

    .line 945
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartRejectMessageAppLogging(Landroid/content/Context;)V

    goto :goto_0

    .line 952
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
