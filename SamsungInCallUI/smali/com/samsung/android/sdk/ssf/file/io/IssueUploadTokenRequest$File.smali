.class public Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# instance fields
.field private checksum:Ljava/lang/String;

.field private content_type:Ljava/lang/String;

.field private hash:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/octet-stream"

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;->content_type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;->content_type:Ljava/lang/String;

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;->hash:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/ssf/common/util/HashUtils;->makeChecksum(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;->checksum:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;->size:Ljava/lang/String;

    return-void
.end method
