.class public Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;
.super Ljava/lang/Object;


# instance fields
.field public resultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;->resultList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getResultList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;->resultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setResultList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadResponse;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/MultiPartUploadListResponse;->resultList:Ljava/util/ArrayList;

    return-void
.end method
