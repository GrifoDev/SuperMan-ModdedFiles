.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;


# instance fields
.field private contentsDownloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ProgressResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentsDownloaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->contentsDownloaded:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->userData:Landroid/os/Bundle;

    return-object v0
.end method

.method public setContentsDownloaded(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->contentsDownloaded:Ljava/util/ArrayList;

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->userData:Landroid/os/Bundle;

    return-void
.end method
