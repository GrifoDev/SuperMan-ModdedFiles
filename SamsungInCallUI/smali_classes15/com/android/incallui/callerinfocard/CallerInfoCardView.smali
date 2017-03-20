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

.field private isImageOnly:Z

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

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

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mImageUri:Ljava/lang/String;

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

.field private popupWindowImage:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    .line 60
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 61
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 62
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 82
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    .line 91
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    .line 92
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    .line 95
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE:I

    .line 99
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE_DELAYED:I

    .line 145
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    .line 527
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 111
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    .line 112
    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 113
    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .param p1, "x1"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
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
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;
    .param p1, "x1"    # Landroid/widget/PopupWindow;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/callerinfocard/CallerInfoCardView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addItemToList(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
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

    .line 189
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {p1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->compareTo(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)I

    move-result v0

    if-lez v0, :cond_1

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_1
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
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

    .line 181
    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized applyItemToView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x64

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    const-string v4, "CallerInfoCardView"

    const-string v5, "applyItemToView() - remove query complete handler"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 209
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 211
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

    .line 212
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 213
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v4, :cond_4

    .line 214
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v4}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_0

    .line 215
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 217
    .local v3, "size":I
    if-eqz v3, :cond_1

    .line 218
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 219
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 221
    :cond_5
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "content":Ljava/lang/String;
    :cond_7
    if-le v3, v6, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    .line 225
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_9

    .line 226
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-lez v1, :cond_9

    .line 227
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 230
    :cond_9
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 231
    if-lez v3, :cond_1

    .line 232
    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 233
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

    .line 442
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v3, v6

    .line 486
    :goto_0
    monitor-exit p0

    return v3

    .line 443
    :cond_1
    :try_start_0
    const-string v7, "CallerInfoCardView"

    const-string v8, "arrangeContent..."

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const/4 v3, 0x0

    .line 445
    .local v3, "isMultiLine":Z
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 447
    .local v0, "contentText":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 448
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 449
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

    .line 450
    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_3

    .line 451
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_2

    .line 452
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 453
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

    .line 454
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

    .line 468
    .end local v5    # "secondLineEnd":I
    :goto_1
    const/4 v3, 0x1

    .line 469
    goto/16 :goto_0

    .line 456
    :cond_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 482
    .end local v2    # "firstLineEnd":I
    :catch_0
    move-exception v1

    .line 483
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

    .line 484
    goto/16 :goto_0

    .line 459
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

    .line 461
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 465
    .local v4, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 466
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 442
    .end local v0    # "contentText":Ljava/lang/String;
    .end local v2    # "firstLineEnd":I
    .end local v3    # "isMultiLine":Z
    .end local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 470
    .restart local v0    # "contentText":Ljava/lang/String;
    .restart local v3    # "isMultiLine":Z
    :cond_4
    const/16 v7, 0x8

    :try_start_4
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 471
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

    .line 472
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 473
    .restart local v4    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    if-le v7, v9, :cond_5

    .line 474
    iget-object v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00fa

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 475
    const/4 v3, 0x1

    .line 479
    :goto_2
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 477
    :cond_5
    const/4 v7, 0x0

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private getLocationFromAddress(Ljava/lang/String;)V
    .locals 6
    .param p1, "strAddress"    # Ljava/lang/String;

    .prologue
    .line 331
    new-instance v1, Landroid/location/Geocoder;

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 332
    .local v1, "coder":Landroid/location/Geocoder;
    const/4 v0, 0x0

    .line 334
    .local v0, "address":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 339
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/Address;

    .line 340
    .local v3, "location":Landroid/location/Address;
    invoke-virtual {v3}, Landroid/location/Address;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    .line 341
    invoke-virtual {v3}, Landroid/location/Address;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    .line 343
    .end local v3    # "location":Landroid/location/Address;
    :cond_0
    return-void

    .line 335
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 5
    .param p1, "item"    # Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .prologue
    const/4 v4, 0x1

    .line 157
    if-nez p1, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 158
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

    .line 160
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    .line 161
    .local v0, "appType":I
    if-ne v0, v4, :cond_2

    .line 162
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    .line 168
    :goto_1
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 170
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    iget v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-ne v1, v2, :cond_0

    .line 172
    const-string v1, "CallerInfoCardView"

    const-string v2, "all of query request is completed...."

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 173
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    .line 163
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 164
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addPersonalItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_1

    .line 166
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

    .line 269
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

    .line 270
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getIconRes()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 271
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 273
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopItmemIsAcitionMemo:Z

    .line 285
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    const-string v2, "ims_callplus"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ims_crane"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    invoke-virtual {p0, v2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 289
    .local v1, "observer":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 303
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "contentDescription":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
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

    .line 308
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
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

    .line 312
    :cond_3
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 313
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 315
    :cond_4
    iput-boolean v7, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    .line 316
    return-void

    .line 277
    .end local v0    # "contentDescription":Ljava/lang/String;
    .end local v1    # "observer":Landroid/view/ViewTreeObserver;
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 278
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 281
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 283
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private sort()V
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 491
    .local v0, "hashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;>;"
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 492
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 493
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 494
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 497
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 498
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 499
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 500
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 504
    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 505
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 118
    const-string v0, "CallerInfoCardView"

    const-string v1, "onFinishInflate : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 119
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 121
    const v0, 0x7f100224

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    .line 122
    const v0, 0x7f100225

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f100226

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f100228

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f100227

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f100229

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    .line 128
    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    const v0, 0x7f10022a

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    .line 130
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 131
    const v0, 0x7f10022c

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f100230

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f10022e

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f10022f

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    .line 135
    const v0, 0x7f100234

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f100236

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    .line 137
    const v0, 0x7f100233

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    .line 139
    :cond_1
    return-void
.end method

.method public removeInfo(Z)V
    .locals 2
    .param p1, "iscallplus"    # Z

    .prologue
    .line 370
    iput-boolean p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    .line 371
    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCallPlusAddress(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 322
    const-string v0, "fetching lat. and long.:"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 323
    invoke-direct {p0, p2}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLocationFromAddress(Ljava/lang/String;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    :cond_1
    return-void

    .line 326
    :cond_2
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

    .line 346
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 347
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-ne p2, v4, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v3, 0x7f090087

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 351
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    if-ne p2, v4, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 347
    goto :goto_0

    :cond_3
    move v1, v2

    .line 351
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

    .line 412
    if-eqz p3, :cond_4

    .line 413
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 414
    .local v1, "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 415
    .local v0, "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 417
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 418
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 434
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    if-eqz p2, :cond_2

    .line 436
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 437
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :cond_3
    return-void

    .line 423
    .end local v0    # "imageLayout":Landroid/widget/LinearLayout;
    .end local v1    # "mapLayout":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 424
    .restart local v1    # "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 425
    .restart local v0    # "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v1, :cond_5

    .line 426
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 428
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    if-eqz v0, :cond_1

    .line 431
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 437
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

    .line 379
    iput-boolean p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    .line 380
    if-eqz p3, :cond_4

    .line 381
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 382
    .local v1, "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 383
    .local v0, "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 386
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz v1, :cond_1

    .line 389
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 401
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    .line 402
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 403
    if-eqz p2, :cond_2

    .line 404
    iput-object p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    .line 405
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 407
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    :cond_3
    return-void

    .line 391
    .end local v0    # "imageLayout":Landroid/widget/LinearLayout;
    .end local v1    # "mapLayout":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 392
    .restart local v1    # "mapLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v6}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 393
    .restart local v0    # "imageLayout":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_5

    .line 394
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    .restart local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 396
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_6
    move v3, v4

    .line 407
    goto :goto_1
.end method

.method public setCallPlusSubject(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "sub"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 356
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 361
    goto :goto_0

    :cond_4
    move v1, v2

    .line 364
    goto :goto_1
.end method

.method public declared-synchronized setProfileContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 239
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

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 242
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    monitor-exit p0

    return-void

    .line 239
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
    .line 248
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

    .line 249
    new-instance v0, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v0}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 250
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setAppType(I)V

    .line 251
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    .line 252
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0, p3}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setDate(Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSmartCallContent()V
    .locals 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    const-string v1, "CallerInfoCardView"

    const-string v2, "setSmartCallContent "

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallBizText()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "bizText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Lcom/android/incallui/callerinfocard/item/ProfileItem;

    invoke-direct {v1}, Lcom/android/incallui/callerinfocard/item/ProfileItem;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    .line 262
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1, v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setContent(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const v2, 0x7f020363

    invoke-virtual {v1, v2}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

    .line 264
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit p0

    return-void

    .line 258
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

    .line 508
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already required...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-ne v0, p3, :cond_2

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-eqz v0, :cond_2

    .line 513
    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is already completed...."

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 514
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->applyItemToView()V

    goto :goto_0

    .line 519
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->clear()V

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    .line 521
    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$CallerInfoCardCallback;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;)V

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/incallui/callerinfocard/CallerInfoCardUtils;->startQuery(Landroid/content/Context;ILcom/android/incallui/callerinfocard/CallerInfoCardAsyncQuery$OnQueryCompleteListener;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    .line 522
    iput-object p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContactCacheEntry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 524
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
