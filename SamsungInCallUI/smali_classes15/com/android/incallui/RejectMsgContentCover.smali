.class public Lcom/android/incallui/RejectMsgContentCover;
.super Lcom/android/incallui/BaseRejectMsgContent;
.source "RejectMsgContentCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 39
    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 45
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040087

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 7
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
    const/4 v6, 0x0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configureRejectMsgList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    new-instance v3, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContentCover;->mContext:Landroid/content/Context;

    const v5, 0x7f04008a

    invoke-direct {v3, v4, v5, p1}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 76
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v4, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v4, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentCover;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 82
    .local v2, "padding":I
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 83
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 86
    .end local v2    # "padding":I
    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 87
    .local v0, "calls":Lcom/android/incallui/CallList;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "isVoicePartyCall":Z
    const-string v3, "feature_kdi"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 93
    :cond_3
    const-string v3, "automatic_answering_machine"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_4

    .line 96
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 97
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_4

    .line 98
    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v1, :cond_0

    .line 100
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    .line 51
    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const v0, 0x7f1001ac

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    .line 53
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 54
    :cond_0
    const v0, 0x7f1001e7

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f1001e8

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentCover$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentCover$1;-><init>(Lcom/android/incallui/RejectMsgContentCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_2
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentCover;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    .line 107
    return-void
.end method
