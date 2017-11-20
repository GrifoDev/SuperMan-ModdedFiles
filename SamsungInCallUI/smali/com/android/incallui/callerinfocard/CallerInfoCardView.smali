.class public Lcom/android/incallui/callerinfocard/CallerInfoCardView;
.super Landroid/widget/RelativeLayout;


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

.field private isInMultiWindow:Z

.field private latitude:Ljava/lang/Double;

.field private longitude:Ljava/lang/Double;

.field private mCallPlusAddress:Landroid/widget/TextView;

.field private mCallPlusImageMap:Landroid/widget/ImageView;

.field private mCallPlusImportance:Landroid/widget/ImageView;

.field private mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

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

.field private mMapImagelayout:Landroid/widget/LinearLayout;

.field private mMarkUpTop:Z

.field private mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mQueryRequest:I

.field private mQueryState:I

.field private mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

.field private mTopContent:Landroid/widget/TextView;

.field private mTopDate:Landroid/widget/TextView;

.field private mTopIcon:Landroid/widget/ImageView;

.field private mTopSubContent:Landroid/widget/TextView;

.field private mTopThumbnail:Landroid/widget/ImageView;

.field private mTopView:Landroid/view/ViewGroup;

.field private popupWindowImage:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, 0x0

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

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->CALLER_INFO_QUERY_COMPELETE_DELAYED:I

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isInMultiWindow:Z

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$1;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$3;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

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

.method static synthetic access$1000(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    return-object v0
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

.method static synthetic access$700(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/incallui/callerinfocard/CallerInfoCardView;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->popupWindowImage:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    return-object v0
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
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v1, "CallerInfoCardView"

    const-string v2, "applyItemToView() - remove query complete handler"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mProfileItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mPersonalItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-virtual {v0}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_7
    if-le v2, v3, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->sort()V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lez v0, :cond_9

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    invoke-direct {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->setTopItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized arrangeContent(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_0
    const-string v0, "CallerInfoCardView"

    const-string v3, "arrangeContent..."

    invoke-static {v0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    const-string v4, "CallerInfoCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- firstLineEnd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    const-string v4, "CallerInfoCardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- secondLineEnd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CallerInfoCardView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrangeContent..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0103

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    const/16 v0, 0x8

    :try_start_4
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    if-le v4, v1, :cond_5

    iget-object v4, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0103

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v2

    goto :goto_2
.end method

.method private getLatLongfromLocation(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "latitude :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->latitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longitude :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->longitude:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method private isEasyMode()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private onQueryCompleted(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V
    .locals 4

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCompleted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->addProfileItem(Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;)V

    :goto_1
    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryRequest:I

    iget v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mQueryState:I

    if-ne v0, v1, :cond_0

    const-string v0, "CallerInfoCardView"

    const-string v1, "all of query request is completed...."

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getActionMemoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string v0, "ims_callplus"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isCallplus:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->removeInfo(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView$2;-><init>(Lcom/android/incallui/callerinfocard/CallerInfoCardView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iput-boolean v5, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMarkUpTop:Z

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getAppType()I

    move-result v0

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallerInfoCardItemList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

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
    .locals 4

    const/4 v3, 0x1

    const-string v0, "CallerInfoCardView"

    const-string v1, "onFinishInflate : "

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f1002ae

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    const v0, 0x7f1002af

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopIcon:Landroid/widget/ImageView;

    const v0, 0x7f1002b0

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopContent:Landroid/widget/TextView;

    const v0, 0x7f1002b2

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopSubContent:Landroid/widget/TextView;

    const v0, 0x7f1002b1

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopDate:Landroid/widget/TextView;

    const v0, 0x7f1002b3

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

    if-eqz v0, :cond_2

    :cond_0
    const v0, 0x7f1002b4

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v0, 0x7f1002b6

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportance:Landroid/widget/ImageView;

    const v0, 0x7f1002ba

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubject:Landroid/widget/TextView;

    const v0, 0x7f1002b8

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceText:Landroid/widget/TextView;

    const v0, 0x7f1002b9

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusSubjectIcon:Landroid/widget/ImageView;

    const v0, 0x7f1002be

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    const v0, 0x7f1002c0

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    const v0, 0x7f1002bb

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isEasyMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0470

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Neerj Easy Mode params.height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v0, 0x7f1002bd

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    :cond_2
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

.method public setCallPlusAddress(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz v0, :cond_1

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

    const-string v0, "fetching lat. and long.:"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->getLatLongfromLocation(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusAddress:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
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

    const v3, 0x7f0900a6

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
    .locals 6

    const v1, 0x7f1002bf

    const v0, 0x7f1002bc

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

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
    move v0, v4

    goto :goto_1
.end method

.method public setCallPlusMapImage(ZLjava/lang/String;Z)V
    .locals 6

    const v1, 0x7f1002bf

    const v0, 0x7f1002bc

    const/16 v4, 0x8

    const/4 v3, 0x0

    iput-boolean p3, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isImageOnly:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

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
    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_2

    iput-object p2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mImageUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImageMap:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v0, v3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

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
    move v0, v4

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
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CallerInfoCardView"

    const-string v1, "setSmartCallContent "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mSmartCallItem:Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;

    const v1, 0x7f020426

    invoke-virtual {v0, v1}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;->setIconRes(I)V

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

.method public setonMultiWindowChange(Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v0, "CallerInfoCardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallerInfoCardView setonMultiWindowChange() onMWChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ims_rcs"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ims_crane"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ims_rcs_bb"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean p1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isInMultiWindow:Z

    const v0, 0x7f1002b7

    invoke-virtual {p0, v0}, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mTopView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->isInMultiWindow:Z

    if-eqz v2, :cond_3

    const-string v2, "CallerInfoCardView"

    const-string v3, "CallerInfoCardView setonMultiWindowChange() isInMultiWindow"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/UiAdapter;->getDeviceDefaultHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/UiAdapter;->getApplicationHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v2

    float-to-double v2, v2

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    const-string v2, "CallerInfoCardView"

    const-string v3, "CallerInfoCardView setonMultiWindowChange() isInMultiWindow ratio <= 0.35"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusMapViewStub:Landroid/view/ViewStub;

    invoke-virtual {v2, v1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mCallPlusImportanceLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v2, "CallerInfoCardView"

    const-string v3, "CallerInfoCardView setonMultiWindowChange() false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/CallerInfoCardView;->mMapImagelayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    const/16 v2, 0x64

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0x96

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1
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
