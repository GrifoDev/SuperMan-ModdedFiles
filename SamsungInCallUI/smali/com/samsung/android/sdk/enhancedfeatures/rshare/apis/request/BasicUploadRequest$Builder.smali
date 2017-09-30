.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentsTag:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDirName:Ljava/lang/String;

.field protected mDurationTime:Ljava/lang/String;

.field private mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

.field protected mGroupID:Ljava/lang/String;

.field private mLockKey:Ljava/lang/String;

.field private mNotifyRecipients:Z

.field private mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

.field protected mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

.field private mRequestToken:J

.field private mShareToken:Ljava/lang/String;

.field private mSilencePush:Z

.field private mUserData:Landroid/os/Bundle;

.field private muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDurationTime:Ljava/lang/String;

    const-string v0, "BasicRequest.Builder"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mNotifyRecipients:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequestToken:J

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContentsTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mSilencePush:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mCid:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Type;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDurationTime:Ljava/lang/String;

    const-string v0, "BasicRequest.Builder"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mNotifyRecipients:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequestToken:J

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContentsTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mSilencePush:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mCid:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    return-void
.end method


# virtual methods
.method public addContent(Landroid/net/Uri;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->addContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContent(Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->addContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addContent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "supplied uri is null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->contentUri:Landroid/net/Uri;

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->updateType:I

    iput-object p3, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->contentTag:Ljava/lang/String;

    iput-object p2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added content for upload, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addContentForUpdate(Landroid/net/Uri;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->contentUri:Landroid/net/Uri;

    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->updateType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "content already added"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added content for update, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addContents([Landroid/net/Uri;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "supplied uris is null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_1
    array-length v2, p1

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;-><init>()V

    iput-object v3, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->contentUri:Landroid/net/Uri;

    iput v1, v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->updateType:I

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added contents for upload, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mGroupID:Ljava/lang/String;

    return-object p0
.end method

.method public addRecipient(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "recipientInfo is null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "phone number is empty in recipientInfo object"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRecipients(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string v0, "phone Numbers are null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_4

    const-string v0, "contact already added to addition"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added recipients phone number, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public basetNotifyRecipients(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mNotifyRecipients:Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared id is of type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "nothing to share"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot build empty contents share request, select some data first to share"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContactUtil;->isValidateNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string supplied did not seem to be a phone number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mRecipientList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mContents:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mNotifyRecipients:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mNotifyRecipients:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mShareToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mShareToken:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mUserData:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mUserData:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mGroupID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mGroupID:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequestToken:J

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->requestToken:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mLockKey:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mLockKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDurationTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mDurationTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mSilencePush:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mSilencePush:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDirName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mDirName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->NORMAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mCid:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mCid:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "user has set app value"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mAppName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->mAppName:Ljava/lang/String;

    :cond_4
    const-string v0, "request has been built"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    goto :goto_0
.end method

.method public removeContent(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remove uri cannot be empty or null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->remoteUri:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->updateType:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "marked content for removal, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public removeContents([Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "remote uris cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    array-length v3, p1

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "one or multiple suppliedremote uris are invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;-><init>()V

    iput-object v2, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->remoteUri:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfo;->updateType:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "marked contents for removal, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mCid:Ljava/lang/String;

    return-object p0
.end method

.method public setContentsTag(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mContentsTag:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mUserData:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setDurationTime(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDurationTime:Ljava/lang/String;

    return-object p0
.end method

.method public setGcmType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mGcmType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    return-object p0
.end method

.method public setLockKey(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mLockKey:Ljava/lang/String;

    return-object p0
.end method

.method public setMuploadType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->muploadType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    return-object p0
.end method

.method public setPushType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mPushType:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    return-object p0
.end method

.method public setRequestToken(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mRequestToken:J

    return-object p0
.end method

.method public setShareToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "share token invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mShareToken:Ljava/lang/String;

    return-object p0
.end method

.method public setSharingAppName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setSilencePush(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mSilencePush:Z

    return-object p0
.end method

.method public setType(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Type;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setUploadDirectory(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$Builder;->mDirName:Ljava/lang/String;

    return-object p0
.end method
