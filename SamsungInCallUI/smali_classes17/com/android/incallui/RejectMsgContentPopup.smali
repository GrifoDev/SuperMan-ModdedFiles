.class public Lcom/android/incallui/RejectMsgContentPopup;
.super Lcom/android/incallui/BaseRejectMsgContent;
.source "RejectMsgContentPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field private mCreateMessage:Landroid/widget/LinearLayout;

.field private mCreateMessageLayout:Landroid/view/View;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 43
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040088

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 52
    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 10
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
    .local p1, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 95
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRejectMsgList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const/4 v2, 0x1

    .line 97
    .local v2, "isShowCreateButton":Z
    const-string v5, "support_smart_call"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 99
    const/4 v2, 0x0

    .line 102
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isConnectedMirrorLink()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 103
    const/4 v2, 0x0

    .line 106
    :cond_1
    const-string v5, "show_reminder_button"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "com.samsung.android.app.reminder"

    .line 107
    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->isApplicationEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 108
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/RejectMsgContentPopup;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    .line 113
    :goto_0
    if-nez p1, :cond_7

    .line 114
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    .line 119
    :goto_1
    new-instance v5, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mContext:Landroid/content/Context;

    const v7, 0x7f040089

    iget-object v8, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v5, :cond_2

    .line 121
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v6, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v6, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 126
    :cond_2
    if-nez v2, :cond_3

    .line 127
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 130
    :cond_3
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 131
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .local v4, "mRejectMsgListLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_8

    .line 133
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a021e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 134
    .local v1, "height":I
    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 138
    .end local v1    # "height":I
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .end local v4    # "mRejectMsgListLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 142
    .local v0, "calls":Lcom/android/incallui/CallList;
    if-nez v0, :cond_9

    .line 158
    :cond_5
    :goto_3
    return-void

    .line 110
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/RejectMsgContentPopup;->showAddReminderCheckBox(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 116
    :cond_7
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mTextResponses:Ljava/util/List;

    goto :goto_1

    .line 136
    .restart local v4    # "mRejectMsgListLp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    const/4 v5, -0x2

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 144
    .end local v4    # "mRejectMsgListLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v0    # "calls":Lcom/android/incallui/CallList;
    :cond_9
    const/4 v3, 0x0

    .line 145
    .local v3, "isVoicePartyCall":Z
    const-string v5, "feature_kdi"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 146
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v3

    .line 148
    :cond_a
    const-string v5, "automatic_answering_machine"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v5, :cond_5

    .line 149
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v5

    if-nez v5, :cond_b

    .line 150
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v5

    if-nez v5, :cond_b

    .line 151
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v5

    if-nez v5, :cond_b

    .line 152
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v5

    if-nez v5, :cond_b

    .line 153
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v3, :cond_5

    .line 155
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_3
.end method

.method public getReminderCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentPopup;->mReminderCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 56
    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    .line 58
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040101

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    .line 60
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessageLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 61
    const v1, 0x7f100348

    invoke-virtual {p0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessage:Landroid/widget/LinearLayout;

    .line 62
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mCreateMessage:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/RejectMsgContentPopup$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/RejectMsgContentPopup$1;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const-string v1, "automatic_answering_machine"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const v1, 0x7f1001ac

    invoke-virtual {p0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    .line 72
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 73
    :cond_0
    const v1, 0x7f1001e7

    invoke-virtual {p0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 74
    const v1, 0x7f1001e8

    invoke-virtual {p0, v1}, Lcom/android/incallui/RejectMsgContentPopup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 75
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoImg:Landroid/widget/ImageView;

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/incallui/RejectMsgContentPopup$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/RejectMsgContentPopup$2;-><init>(Lcom/android/incallui/RejectMsgContentPopup;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    :cond_2
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentPopup;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentPopup$OnAnswerMemoClickListener;

    .line 162
    return-void
.end method
