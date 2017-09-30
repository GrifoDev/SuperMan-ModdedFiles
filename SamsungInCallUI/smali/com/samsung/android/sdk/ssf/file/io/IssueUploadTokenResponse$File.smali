.class public Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "File"
.end annotation


# instance fields
.field private rcode:I

.field private rmsg:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;

.field private upload_token:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;->this$0:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRcode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;->rcode:I

    return v0
.end method

.method public getRmsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;->rmsg:Ljava/lang/String;

    return-object v0
.end method

.method public getUpload_token()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;->upload_token:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;->url:Ljava/lang/String;

    return-object v0
.end method
