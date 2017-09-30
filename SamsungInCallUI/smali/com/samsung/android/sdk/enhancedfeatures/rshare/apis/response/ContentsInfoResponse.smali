.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;
    }
.end annotation


# instance fields
.field private contentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private contentRange:Ljava/lang/String;

.field private contentTokenMetaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;"
        }
    .end annotation
.end field

.field private contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;"
        }
    .end annotation
.end field

.field private contentsToken:Ljava/lang/String;

.field private contentsTotal:I

.field private description:Ljava/lang/String;

.field private expiredTime:J

.field private folderToken:Ljava/lang/String;

.field private fromMsisdn:Ljava/lang/String;

.field private lastTimeStamp:Ljava/lang/Long;

.field private mContentsTotalToUpload:I

.field private mTitle:Ljava/lang/String;

.field private modifiedAfter:J

.field private shareCode:Ljava/lang/String;

.field private shareType:I

.field private toList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private toMulti:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private updatedTime:J

.field private updatedToList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentItems:Ljava/util/ArrayList;

    return-void
.end method

.method public static convertToResponse(Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->content_range:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setContentRange(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getbigThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setbigThumbnail(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getOriginal()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setOriginal(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getSize()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setSize(J)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;->setThumbnail(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->getContentItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->contents_token:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setContentsToken(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->contents_total:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setContentsTotal(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setDescription(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->expired_time:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setExpiredTime(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->from_msisdn:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setFromMsisdn(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->share_type:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setShareType(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->to_list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setToList(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->share_code:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setShareCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->to_multi:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setToMulti(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setType(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->updated_time:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setUrl(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->contents_total_to_upload:I

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setContentsTotalToUpload(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/share/io/GetSharedContentsInfoResponse;->title:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->setTitle(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getContentItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentRange()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentRange:Ljava/lang/String;

    return-object v0
.end method

.method public getContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContentsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentsToken:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsTotal()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentsTotal:I

    return v0
.end method

.method public getContentsTotalToUpload()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->mContentsTotalToUpload:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->expiredTime:J

    return-wide v0
.end method

.method public getFolderToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->folderToken:Ljava/lang/String;

    return-object v0
.end method

.method public getFromMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->fromMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getLastTimeStamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->lastTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getModifiedAfter()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->modifiedAfter:J

    return-wide v0
.end method

.method public getReceivedContents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentTokenMetaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShareCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->shareCode:Ljava/lang/String;

    return-object v0
.end method

.method public getShareType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->shareType:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getToList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getToMulti()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toMulti:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->updatedTime:J

    return-wide v0
.end method

.method public getUpdatedToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->updatedToList:Ljava/util/List;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContentItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentItems:Ljava/util/ArrayList;

    return-void
.end method

.method public setContentRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentRange:Ljava/lang/String;

    return-void
.end method

.method public setContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/share/io/ContentsTokenDetail;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contents:Ljava/util/ArrayList;

    return-void
.end method

.method public setContentsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentsToken:Ljava/lang/String;

    return-void
.end method

.method public setContentsTotal(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentsTotal:I

    return-void
.end method

.method public setContentsTotalToUpload(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->mContentsTotalToUpload:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->description:Ljava/lang/String;

    return-void
.end method

.method public setExpiredTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->expiredTime:J

    return-void
.end method

.method public setFolderToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->folderToken:Ljava/lang/String;

    return-void
.end method

.method public setFromMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->fromMsisdn:Ljava/lang/String;

    return-void
.end method

.method public setLastTimeStamp(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->lastTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setModifiedAfter(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->modifiedAfter:J

    return-void
.end method

.method public setReceivedContents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ReceivedContentTokenMeta;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->contentTokenMetaList:Ljava/util/ArrayList;

    return-void
.end method

.method public setShareCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->shareCode:Ljava/lang/String;

    return-void
.end method

.method public setShareType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->shareType:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setToList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toList:Ljava/util/ArrayList;

    return-void
.end method

.method public setToMulti(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->toMulti:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->type:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->updatedTime:J

    return-void
.end method

.method public setUpdatedToList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse$UpdateList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->updatedToList:Ljava/util/List;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ContentsInfoResponse;->url:Ljava/lang/String;

    return-void
.end method
