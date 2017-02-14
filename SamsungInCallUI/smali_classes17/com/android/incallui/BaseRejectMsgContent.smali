.class public Lcom/android/incallui/BaseRejectMsgContent;
.super Landroid/widget/LinearLayout;
.source "BaseRejectMsgContent.java"


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

.method public getRejectMsgList()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f1001ad

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderCheckBox:Landroid/widget/CheckBox;

    const v0, 0x7f1001ae

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    const v0, 0x7f1001af

    invoke-virtual {p0, v0}, Lcom/android/incallui/BaseRejectMsgContent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mRejectMsgList:Landroid/widget/ListView;

    return-void
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

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/BaseRejectMsgContent;->mReminderDivider:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method
