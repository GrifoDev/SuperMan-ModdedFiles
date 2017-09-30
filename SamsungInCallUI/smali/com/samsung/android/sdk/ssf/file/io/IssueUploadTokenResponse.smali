.class public Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;,
        Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;
    }
.end annotation


# instance fields
.field private file_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;",
            ">;"
        }
    .end annotation
.end field

.field private quota:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;->file_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;->file_list:Ljava/util/List;

    return-object v0
.end method

.method public getQuota()Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse;->quota:Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenResponse$Quota;

    return-object v0
.end method
