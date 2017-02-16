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

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 59
    invoke-direct {p0}, Lcom/yulore/android/common/job/AsyncJob;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    .line 25
    const-string v0, "GET"

    iput-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    .line 45
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    .line 50
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    .line 55
    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reqUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 63
    invoke-direct {p0}, Lcom/yulore/android/common/job/AsyncJob;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    .line 25
    const-string v0, "GET"

    iput-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    .line 40
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    .line 45
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    .line 50
    iput v1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    .line 55
    iput-object v2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->context:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
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

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReqType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    return-object v0
.end method

.method public getReqUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
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

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->requestDataMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getResponseContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    return-object v0
.end method

.method public getSoTimeout()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    return v0
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .param p1, "connectionTimeout"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->connectionTimeout:I

    .line 131
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->context:Landroid/content/Context;

    .line 83
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

    .prologue
    .line 114
    .local p1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->headers:Ljava/util/HashMap;

    .line 115
    return-void
.end method

.method public setReqType(Ljava/lang/String;)V
    .locals 3
    .param p1, "reqType"    # Ljava/lang/String;

    .prologue
    .line 94
    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqType:Ljava/lang/String;

    .line 99
    return-void

    .line 97
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
    .param p1, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->reqUrl:Ljava/lang/String;

    .line 75
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

    .prologue
    .line 106
    .local p1, "requestDataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->requestDataMap:Ljava/util/HashMap;

    .line 107
    return-void
.end method

.method public setResponseContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "mResponseContent"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->mResponseContent:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "soTimeout"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->soTimeout:I

    .line 123
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/yulore/android/common/job/AsyncHttpRequest;->status:I

    .line 139
    return-void
.end method
