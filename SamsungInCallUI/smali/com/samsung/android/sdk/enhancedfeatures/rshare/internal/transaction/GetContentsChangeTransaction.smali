.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# static fields
.field protected static final TAG:Ljava/lang/String;

.field private static final TOKEN_FETCH_MEDIA_ID:I = 0x1

.field public static final TOKEN_GET_UPDATED_SHARED_CONTENT:I = 0x4

.field protected static final TOKEN_UPDATE_CONTENTS:I = 0x2

.field private static final TOKEN_UPDATE_MEDIA:I = 0x3


# instance fields
.field private final MEDIA_PROJECTION:[Ljava/lang/String;

.field private final mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

.field private mContentToken:Ljava/lang/String;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;->getContentToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentChangeInfoRequest;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mTimeStamp:J

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->getResponse(Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method private getResponse(Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;

    invoke-direct {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->big_thumbnaill:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setbigThumbnail(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->content_type:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setContentType(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setName(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->original:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setOriginal(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->size:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setSize(J)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->thumbnail:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setThumbnail(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_contents:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/share/io/UpdatedContent;->update_type:J

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setUpdateType(J)V

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->getContentItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->contents_token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setContentsToken(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->description:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setDescription(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->expired_time:J

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setExpiredTime(J)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->from_msisdn:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setFromMsisdn(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_to_list:Ljava/util/List;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->updated_to_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse$UpdateList;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;

    iget-object v5, v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse$UpdateList;->msisdn:Ljava/lang/String;

    iget-object v6, v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse$UpdateList;->update_type:Ljava/lang/Long;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse$UpdateList;->updateer_msisdn:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setUpdatedToList(Ljava/util/List;)V

    :cond_3
    iget-object v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->type:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setType(Ljava/lang/String;)V

    iget-wide v0, p1, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsChangeResponse;->modified_after:J

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setModifiedAfter(J)V

    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentToken:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentToken:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mTimeStamp:J

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New noti timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mTimeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mContentToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/GetContentsChangeTransaction;->mTimeStamp:J

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/share/ShareManager;->getSharedContentsChangeInfo(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;J)V

    return-void
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "TOKEN_INSERT_CONTENTS"

    goto :goto_0

    :pswitch_1
    const-string v0, "TOKEN_INSERT_MEDIA"

    goto :goto_0

    :pswitch_2
    const-string v0, "TOKEN_GET_UPDATED_SHARED_CONTENT"

    goto :goto_0

    :pswitch_3
    const-string v0, "TOKEN_FETCH_MEDIA_ID"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
