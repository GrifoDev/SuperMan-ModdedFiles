.class public Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.super Landroid/widget/RelativeLayout;
.source "CallerInfoCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallerInfoCardView"


# instance fields
.field private final CALLER_INFO_QUERY_COMPELETE:I

.field private final CALLER_INFO_QUERY_COMPELETE_DELAYED:I

.field isCallplus:Z

.field private mCallPlusAddress:Landroid/widget/TextView;

.field private mCallPlusImageMap:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceText:Landroid/widget/TextView;

.field private mCallPlusMap:Landroid/widget/ImageView;

.field private mCallPlusMapViewStub:Landroid/view/ViewStub;

.field private mCallPlusSubject:Landroid/widget/TextView;

.field private mCallPlusSubjectIcon:Landroid/widget/ImageView;

.field private mCallerInfoCardItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mMarkUpTop:Z

.field private mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mQueryRequest:I

.field private mQueryState:I

.field private mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mTopContent:Landroid/widget/TextView;

.field private mTopDate:Landroid/widget/TextView;

.field private mTopIcon:Landroid/widget/ImageView;

.field private mTopItmemIsAcitionMemo:Z

.field private mTopSubContent:Landroid/widget/TextView;

.field private mTopThumbnail:Landroid/widget/ImageView;

.field private mTopView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE_DELAYED:I

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addItemToList(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPersonalItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProfileItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized applyItemToView()V
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    const-string v4, "CallerInfoCardView"

    const-string v5, "applyItemToView() - remove query complete handler"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    if-le v3, v6, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_9

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-lez v1, :cond_9

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v3, v6

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_0
    const-string v7, "CallerInfoCardView"

    const-string v8, "arrangeContent..."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    const-string v7, "CallerInfoCardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- firstLineEnd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-string v7, "CallerInfoCardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- secondLineEnd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    add-int/lit8 v9, v5, -0x3

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v7, "CallerInfoCardView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "arrangeContent..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v6

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_4
    const/16 v7, 0x8

    :try_start_4
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_5

    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "CallerInfoCardView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryCompleted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    if-ne v0, v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    :goto_1
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-ne v1, v2, :cond_0

    const-string v1, "CallerInfoCardView"

    const-string v2, "all of query request is completed...."

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addItemToList(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_1
.end method

.method private setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const-string v2, "CallerInfoCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTopItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v2, "ims_callplus"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private sort()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    const-string v0, "CallerInfoCardView"

    const-string v1, "onFinishInflate : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public removeInfo(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallPlusAddress(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCallPlusImportance(ZI)V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-ne p2, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-ne p2, v4, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public setCallPlusMap(ZLjava/lang/String;Z)V
    .locals 7

    const v6, 0x7f100235

    const v5, 0x7f100232

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method public setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 7

    const v6, 0x7f100235

    const v5, 0x7f100232

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method public setCallPlusSubject(ZLjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public declared-synchronized setProfileContent(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileForwardingContent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppType(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDate(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartCallContent()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "CallerInfoCardView"

    const-string v2, "setSmartCallContent "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallBizText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v1}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const v2, 0x7f020364

    invoke-virtual {v1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5

    const/16 v4, 0x64

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already required...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-eqz v0, :cond_2

    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already completed...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    iput-object p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
