.class public abstract Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mFuture:Lcom/android/volley/toolbox/RequestFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/RequestFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/toolbox/RequestFuture",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/ssf/SsfListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/common/model/ResponseListener;->mFuture:Lcom/android/volley/toolbox/RequestFuture;

    return-void
.end method


# virtual methods
.method public abstract onError(ILcom/android/volley/VolleyError;Ljava/lang/Object;)V
.end method

.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public abstract onResponse(ILjava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
