.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContentCount:I

.field private mContentStart:I

.field private mContentToken:Ljava/lang/String;

.field private mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

.field private mReceipientListStatus:Z

.field private mReqId:I

.field private mRequestType:Ljava/lang/String;

.field private mShareCode:Ljava/lang/String;

.field private mToList:Z

.field private mUserData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentInfoRequest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->TAG:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mShareCode:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentStart:I

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReceipientListStatus:Z

    const-string v0, "app"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mRequestType:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mUserData:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mToList:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReqId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "app"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentToken is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mUserData:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$302(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentStart:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentCount:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReceipientListStatus:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Z)Z

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mToList:Z

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Z)Z

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReqId:I

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;I)I

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mShareCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mShareCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "cloud"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sharecode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mShareCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannon build request, one of (contentstoken and sharecode)  are not null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRecipientListEnabled(Z)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReceipientListStatus:Z

    return-object p0
.end method

.method public setContentCount(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentCount:I

    return-object p0
.end method

.method public setContentStart(I)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentStart:I

    return-object p0
.end method

.method public setContentToken(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentToken:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mContentsInfoListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/ContentsInfoListener;

    return-object p0
.end method

.method public setReqId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mReqId:I

    return-void
.end method

.method public setRequestType(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "app"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cloud"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mRequestType:Ljava/lang/String;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cannot build request, requestType is selected only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ContentInfoRequest.REQUEST_TYPE_APP or ContentInfoRequest.REQUEST_TYPE_CLOUD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShareCode(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mShareCode:Ljava/lang/String;

    return-object p0
.end method

.method public setToList(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mToList:Z

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/ContentInfoRequest$Builder;->mUserData:Landroid/os/Bundle;

    return-void
.end method
