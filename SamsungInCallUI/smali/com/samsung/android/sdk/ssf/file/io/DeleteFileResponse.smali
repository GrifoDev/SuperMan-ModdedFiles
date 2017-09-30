.class public Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected oid:Ljava/lang/String;

.field protected path:Ljava/lang/String;

.field protected revision:Ljava/lang/String;

.field protected size:Ljava/lang/Long;

.field protected timestamp:Ljava/lang/Long;

.field protected type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getOid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->revision:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/DeleteFileResponse;->type:Ljava/lang/String;

    return-object v0
.end method
