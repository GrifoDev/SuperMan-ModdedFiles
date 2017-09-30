.class public Lcom/android/incallui/RejectMsgContentCover;
.super Lcom/android/incallui/BaseRejectMsgContent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;
    }
.end annotation


# instance fields
.field private amRejectStub:Landroid/view/ViewStub;

.field private mAgifMessageLayout:Landroid/view/View;

.field private mAnsMemoButton:Landroid/widget/LinearLayout;

.field private mAnsMemoImg:Landroid/widget/ImageView;

.field protected mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/BaseRejectMsgContent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040099

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public configureRejectMsgList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureRejectMsgList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentCover;->mContext:Landroid/content/Context;

    const v3, 0x7f04009c

    invoke-direct {v1, v2, v3, p1}, Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentCover;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/incallui/RejectMsgContentCover;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    invoke-virtual {p0}, Lcom/android/incallui/RejectMsgContentCover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a022c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v0, v1, v0}, Landroid/widget/ListView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/incallui/RejectMsgContentCover;->mRejectMsgList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "feature_kdi"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SecCallExtraUtils;->getIsVoicePartyCall(Lcom/android/incallui/Call;)Z

    move-result v0

    :cond_3
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasActiveCall()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isSystemSettingAllSoundOff()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/BaseRejectMsgContent;->onFinishInflate()V

    const-string v0, "automatic_answering_machine"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f100223

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->amRejectStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f10025e

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    const v0, 0x7f10025f

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoImg:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAnsMemoButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/incallui/RejectMsgContentCover$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/RejectMsgContentCover$1;-><init>(Lcom/android/incallui/RejectMsgContentCover;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f1003e7

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAgifMessageLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/RejectMsgContentCover;->showAgifList(Z)V

    :cond_3
    return-void
.end method

.method public setOnAnswerMemoClickListener(Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectMsgContentCover;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectMsgContentCover$OnAnswerMemoClickListener;

    return-void
.end method

.method public showAgifList(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAgifMessageLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectMsgContentCover;->mAgifMessageLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
