.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field private mPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;->access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentsList size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot build request, one of mGroupId does not null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot build request, contentsList at least one more or not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mGroupId:Ljava/lang/String;

    return-object p0
.end method

.method public setPathList(Ljava/util/ArrayList;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/CloudContentsInfoRequest$Builder;->mPathList:Ljava/util/ArrayList;

    return-object p0
.end method
