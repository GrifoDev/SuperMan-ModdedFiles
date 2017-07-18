.class public abstract Lcom/yulore/android/common/job/AsyncHttpRequest;
.super Lcom/yulore/android/common/job/AsyncJob;
.source "AsyncHttpRequest.java"


# static fields
.field public static final RESULT_CODE_FAIL_UNKNOWN_ERROR:I = -0x1

.field public static final RESULT_CODE_SUCCESS:I


# instance fields
.field protected connectionTimeout:I

.field protected context:Landroid/content/Context;

.field protected headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mResponseContent:Ljava/lang/String;

.field protected reqType:Ljava/lang/String;

.field protected reqUrl:Ljava/lang/String;

.field protected requestDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected soTimeout:I

.field protected status:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/yulore/android/common/job/AsyncJob;-><init>()V

    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/yulore/android/common/job/AsyncJob;-><init>()V

    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    const-string v0, "GET"

    iput-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReqType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestDataMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->requestDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResponseContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->context:Landroid/content/Context;

    return-void
.end method

.method public setHeaders(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 3

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReqType unKnown reqType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReqUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    return-void
.end method

.method public setRequestDataMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->requestDataMap:Ljava/util/HashMap;

    return-void
.end method

.method public setResponseContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    return-void
.end method
