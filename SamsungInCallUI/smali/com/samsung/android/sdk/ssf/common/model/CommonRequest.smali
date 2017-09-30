.class public abstract Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;
.super Lcom/android/volley/Request;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_DOWNLOAD:I = 0x1

.field public static final TOKEN_UPLOAD:I


# instance fields
.field public isFolderORS:Z

.field private mFetchISListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

.field private mFile:Ljava/io/File;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mHttpStatusCode:I

.field private mInputStream:Ljava/io/InputStream;

.field private mLength:I

.field private mOffset:I

.field private mPriorityInt:Ljava/lang/Integer;

.field private mProgressWhat:Ljava/lang/Integer;

.field protected mReqWhat:I

.field protected mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

.field protected mUserData:Ljava/lang/Object;

.field private modifiedUrl:Ljava/lang/String;

.field private triedForFailure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;Ljava/lang/Object;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v3

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;Ljava/lang/Object;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 8

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/util/Map;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Lcom/android/volley/Response$ErrorListener;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/util/Map;ILcom/samsung/android/sdk/ssf/common/model/ResponseListener;Lcom/android/volley/Response$ErrorListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mReqWhat:I

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHttpStatusCode:I

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mUserData:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHeaders:Ljava/util/Map;

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mPriorityInt:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mFile:Ljava/io/File;

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mOffset:I

    iput v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mLength:I

    iput-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mProgressWhat:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->modifiedUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mUserData:Ljava/lang/Object;

    iput p5, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mReqWhat:I

    iput-object p6, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iput-object p4, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHeaders:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHeaders:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/SsfClient;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/volley/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<TT;>;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mPriorityInt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mPriorityInt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v1, v0

    :goto_0
    instance-of v0, p1, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getPriorityInt()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getPriorityInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getSequence()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/volley/Request;->getSequence()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/volley/Request;->getPriority()Lcom/android/volley/Request$Priority;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/volley/Request$Priority;->ordinal()I

    move-result v0

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/volley/Request;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->compareTo(Lcom/android/volley/Request;)I

    move-result v0

    return v0
.end method

.method public deliverProgress(IJ)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mProgressWhat:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "progress bytes %,d what = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mResponseListener:Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mProgressWhat:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mUserData:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->onProgress(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getFetchISListener()Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mFetchISListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHeaders:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mLength:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mOffset:I

    return v0
.end method

.method public getPriorityInt()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mPriorityInt:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProgressWhat()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mProgressWhat:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->modifiedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasTriedForAuthFailure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->triedForFailure:Z

    return v0
.end method

.method public setFetchISListener(Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mFetchISListener:Lcom/samsung/android/sdk/ssf/file/server/FetchISListener;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mFile:Ljava/io/File;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mInputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mLength:I

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mOffset:I

    return-void
.end method

.method public setPriorityInt(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mPriorityInt:Ljava/lang/Integer;

    return-void
.end method

.method public setProgressWhat(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->mProgressWhat:Ljava/lang/Integer;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->modifiedUrl:Ljava/lang/String;

    return-void
.end method

.method public triedForAuthFailure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/ssf/common/model/CommonRequest;->triedForFailure:Z

    return-void
.end method
