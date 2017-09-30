.class public Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field private response:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getResponse()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->response:[B

    return-object v0
.end method

.method public setResponse([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->response:[B

    return-void
.end method
