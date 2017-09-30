.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mContentCount:I

.field private mContentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field private mDirName:Ljava/lang/String;

.field private mDurationTime:Ljava/lang/String;

.field private mGroupID:Ljava/lang/String;

.field private mMediaSize:I

.field private mRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

.field private mShareId:J

.field private mShareItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSilencePush:Z

.field private mTitle:Ljava/lang/String;

.field private requestToken:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ShareRequest.Builder"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    const-string v0, "remoteshare"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mAppName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDurationTime:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mSilencePush:Z

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    return-void
.end method


# virtual methods
.method public addContentItems(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ContentItem;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mContentItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public addGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mGroupID:Ljava/lang/String;

    return-object p0
.end method

.method public addRecipient(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "recipientInfo is null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addRecipients([Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "phone Numbers are null"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    :cond_1
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v4, p1, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_4

    const-string v0, "contact already added to addition"

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;

    invoke-direct {v5, v4, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/RecipientInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "added recipients phone number, new size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public addShareItems(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/data/ShareItem;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mShareItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shared id is of type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mGroupID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "groupId or recipient value is mandatory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mShareItems:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mContentItems:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mContentItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mGroupID:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mGroupID:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->requestToken:J

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->requestToken:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDurationTime:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDurationTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mSilencePush:Z

    iput-boolean v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mSilencePush:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "user has set app value"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mAppName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mAppName:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDirName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDirName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDescription:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mMediaSize:I

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mMediaSize:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mContentCount:I

    iput v1, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mContentCount:I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mShareId:J

    iput-wide v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->mShareId:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRecipientList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "request has been built"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest;

    return-object v0
.end method

.method public setContentCount(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mContentCount:I

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public setDurationTime(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDurationTime:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaSize(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mMediaSize:I

    return-object p0
.end method

.method public setRequestToken(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->requestToken:J

    return-object p0
.end method

.method public setShareId(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mShareId:J

    return-object p0
.end method

.method public setSharingAppName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public setSilencePush(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mSilencePush:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUploadDirectory(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ShareRequest$Builder;->mDirName:Ljava/lang/String;

    return-object p0
.end method
