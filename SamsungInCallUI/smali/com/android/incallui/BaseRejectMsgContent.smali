.class public Lcom/android/incallui/BaseRejectMsgContent;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;,
        Lcom/android/incallui/BaseRejectMsgContent$RejectMsgContentArrayAdapter;,
        Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsClickListener;,
        Lcom/android/incallui/BaseRejectMsgContent$RespondViaSmsItemClickListener;
    }
.end annotation


# instance fields
.field protected mCategoryDividerText:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

.field protected mRejectMsgList:Landroid/widget/ListView;

.field protected mReminderCheckBox:Landroid/widget/CheckBox;

.field protected mReminderDivider:Landroid/view/View;

.field protected mTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mTextResponses:Ljava/util/List;

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addAgifPage()V
    .locals 0

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

.method public getOnItemClickListener()Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    return-object v0
.end method

.method public getRejectMsgContentHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRejectMsgList()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onCheckedReminderCheckBox(Z)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/android/incallui/util/CommonAppLogging;->incomingCall_addReminder(Lcom/android/incallui/Call;J)V

    invoke-static {p1}, Lcom/android/incallui/InCallUISystemDB;->setAddReminder(Z)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->getAddReminder()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/incallui/BaseRejectMsgContent$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/BaseRejectMsgContent$1;-><init>(Lcom/android/incallui/BaseRejectMsgContent;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-void
.end method

.method public onSelectAgifContents(Landroid/net/Uri;)V
    .locals 0

    return-void
.end method

.method public refreshAgifPage()V
    .locals 0

    return-void
.end method

.method public selectAgifPage(I)V
    .locals 0

    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7

    const/4 v1, 0x0

    const-string v0, "setListViewHeightBasedOnChildren"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getWidth()I

    move-result v0

    const/high16 v2, -0x80000000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v0, v1

    move v2, v1

    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configureRejectMsgList "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " totalHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/widget/ListView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnItemClickListener(Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/BaseRejectMsgContent;->mOnItemClickListener:Lcom/android/incallui/BaseRejectMsgContent$OnItemClickListener;

    return-void
.end method

.method public showAddReminderCheckBox(Ljava/lang/Boolean;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- showAddReminderCheckBox:  show  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    if-eqz v0, :cond_2

    const-string v0, "agif_reject_service"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public showAgifList(Z)V
    .locals 0

    return-void
.end method
