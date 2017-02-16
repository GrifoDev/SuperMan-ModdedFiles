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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    .line 53
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 54
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 55
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    .line 84
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE:I

    .line 85
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE_DELAYED:I

    .line 131
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    .line 97
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    .line 98
    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 99
    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .param p1, "x1"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addItemToList(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
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

    .line 175
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I

    move-result v0

    if-lez v0, :cond_1

    .line 176
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_1
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
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

    .line 167
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized applyItemToView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    const-string v4, "CallerInfoCardView"

    const-string v5, "applyItemToView() - remove query complete handler"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 195
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_2

    .line 196
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 197
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

    .line 198
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 199
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_4

    .line 200
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 203
    .local v3, "size":I
    if-eqz v3, :cond_1

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 205
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 207
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 204
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "content":Ljava/lang/String;
    :cond_7
    if-le v3, v6, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    .line 211
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_9

    .line 212
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-lez v1, :cond_9

    .line 213
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 212
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 216
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 217
    if-lez v3, :cond_1

    .line 218
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 219
    .local v2, "item":Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    invoke-direct {p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 10
    .param p1, "content"    # Landroid/widget/TextView;
    .param p2, "subContent"    # Landroid/widget/TextView;
    .param p3, "date"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 404
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v3, v6

    .line 448
    :goto_0
    monitor-exit p0

    return v3

    .line 405
    :cond_1
    :try_start_0
    const-string v7, "CallerInfoCardView"

    const-string v8, "arrangeContent..."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const/4 v3, 0x0

    .line 407
    .local v3, "isMultiLine":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 409
    .local v0, "contentText":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 410
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 411
    .local v2, "firstLineEnd":I
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

    .line 412
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 413
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 414
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 415
    .local v5, "secondLineEnd":I
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

    .line 416
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

    .line 430
    .end local v5    # "secondLineEnd":I
    :goto_1
    const/4 v3, 0x1

    .line 431
    goto/16 :goto_0

    .line 418
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 444
    .end local v2    # "firstLineEnd":I
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
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

    .line 446
    goto/16 :goto_0

    .line 421
    .end local v1    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v2    # "firstLineEnd":I
    :cond_3
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 427
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 428
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 404
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v2    # "firstLineEnd":I
    .end local v3    # "isMultiLine":Z
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 432
    .restart local v0    # "contentText":Ljava/lang/String;
    .restart local v3    # "isMultiLine":Z
    :cond_4
    const/16 v7, 0x8

    :try_start_4
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 433
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

    .line 434
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 435
    .restart local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 436
    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 437
    const/4 v3, 0x1

    .line 441
    :goto_2
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 439
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
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    const/4 v4, 0x1

    .line 143
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 144
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

    .line 146
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    .line 147
    .local v0, "appType":I
    if-ne v0, v4, :cond_2

    .line 148
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    .line 154
    :goto_1
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 156
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-ne v1, v2, :cond_0

    .line 158
    const-string v1, "CallerInfoCardView"

    const-string v2, "all of query request is completed...."

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 159
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    .line 149
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 150
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_1

    .line 152
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addItemToList(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_1
.end method

.method private setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 255
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

    .line 256
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 259
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    .line 271
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    const-string v2, "ims_callplus"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 275
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 289
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
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

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
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

    .line 298
    :cond_3
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 299
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 301
    :cond_4
    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 302
    return-void

    .line 263
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 264
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 267
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 452
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 453
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;>;"
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 456
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 460
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 461
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 462
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 466
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 467
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 104
    const-string v0, "CallerInfoCardView"

    const-string v1, "onFinishInflate : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 107
    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    .line 108
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    .line 114
    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    .line 116
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 117
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    .line 118
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    .line 125
    :cond_1
    return-void
.end method

.method public removeInfo(Z)V
    .locals 2
    .param p1, "iscallplus"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    .line 338
    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallPlusAddress(ZLjava/lang/String;)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    :cond_0
    return-void

    .line 308
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCallPlusImportance(ZI)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "imp"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 313
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 314
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-ne p2, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-ne p2, v4, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 314
    goto :goto_0

    :cond_3
    move v1, v2

    .line 318
    goto :goto_1
.end method

.method public setCallPlusMap(ZLjava/lang/String;Z)V
    .locals 7
    .param p1, "show"    # Z
    .param p2, "map_uri"    # Ljava/lang/String;
    .param p3, "map_only"    # Z

    .prologue
    const v6, 0x7f100235

    const v5, 0x7f100232

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 375
    if-eqz p3, :cond_4

    .line 376
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 377
    .local v1, "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 378
    .local v0, "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 380
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 381
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 397
    if-eqz p2, :cond_2

    .line 398
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 399
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    :cond_3
    return-void

    .line 386
    .end local v0    # "imageLayout":Landroid/widget/LinearLayout;
    .end local v1    # "mapLayout":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 387
    .restart local v1    # "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 388
    .restart local v0    # "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_5

    .line 389
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 390
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 391
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 399
    goto :goto_1
.end method

.method public setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 7
    .param p1, "show"    # Z
    .param p2, "img_uri"    # Ljava/lang/String;
    .param p3, "img_only"    # Z

    .prologue
    const v6, 0x7f100235

    const v5, 0x7f100232

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 346
    if-eqz p3, :cond_4

    .line 347
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 348
    .local v1, "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 349
    .local v0, "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 351
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 352
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 367
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 368
    if-eqz p2, :cond_2

    .line 369
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 370
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 372
    :cond_3
    return-void

    .line 357
    .end local v0    # "imageLayout":Landroid/widget/LinearLayout;
    .end local v1    # "mapLayout":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 358
    .restart local v1    # "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 359
    .restart local v0    # "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_5

    .line 360
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 361
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 362
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    if-eqz v1, :cond_1

    .line 365
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 370
    goto :goto_1
.end method

.method public setCallPlusSubject(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 323
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 328
    goto :goto_0

    :cond_4
    move v1, v2

    .line 331
    goto :goto_1
.end method

.method public declared-synchronized setProfileContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 225
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

    .line 226
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 228
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProfileForwardingContent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "iconRes"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 234
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

    .line 235
    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 236
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppType(I)V

    .line 237
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    .line 238
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDate(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartCallContent()V
    .locals 3

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    const-string v1, "CallerInfoCardView"

    const-string v2, "setSmartCallContent "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallBizText()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "bizText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v1}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 248
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const v2, 0x7f020364

    invoke-virtual {v1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "bizText":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public update(Landroid/content/Context;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p4, "updated"    # Z

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x1

    .line 470
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already required...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-eqz v0, :cond_2

    .line 475
    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already completed...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 476
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 482
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 483
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    .line 484
    iput-object p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 486
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
