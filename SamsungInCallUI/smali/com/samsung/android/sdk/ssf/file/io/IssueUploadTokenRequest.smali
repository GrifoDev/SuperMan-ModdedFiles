.class public Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;
    }
.end annotation


# instance fields
.field private file_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;",
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

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest;->file_list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public setFileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest$File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/file/io/IssueUploadTokenRequest;->file_list:Ljava/util/List;

    return-void
.end method
