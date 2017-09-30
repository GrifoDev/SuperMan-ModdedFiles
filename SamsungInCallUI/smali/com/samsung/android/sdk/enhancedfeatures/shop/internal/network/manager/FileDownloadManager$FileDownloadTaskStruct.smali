.class Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileDownloadTaskStruct"
.end annotation


# instance fields
.field mFileDownloadTask:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadTask;

.field mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager$FileDownloadTaskStruct;->mReferenceCount:I

    return-void
.end method
