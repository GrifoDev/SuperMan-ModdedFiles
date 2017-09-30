.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;
.super Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadDoneResult"
.end annotation


# instance fields
.field private mDownloadUrl:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$AbstractResult;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;)V

    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->mFile:Ljava/io/File;

    return-object v0
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask$DownloadDoneResult;->mFile:Ljava/io/File;

    return-void
.end method
