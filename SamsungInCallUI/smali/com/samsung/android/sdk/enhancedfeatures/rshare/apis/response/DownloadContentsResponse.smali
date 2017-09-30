.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;
.super Ljava/lang/Object;


# instance fields
.field private contentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadPah:Ljava/lang/String;

.field private requestToken:J

.field private userData:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentNames()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->contentNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequestToken()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->requestToken:J

    return-wide v0
.end method

.method public getUserData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->userData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getdownloadPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->downloadPah:Ljava/lang/String;

    return-object v0
.end method

.method public setContentNames(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->contentNames:Ljava/util/ArrayList;

    return-void
.end method

.method public setDownloadPah(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->downloadPah:Ljava/lang/String;

    return-void
.end method

.method public setRequestToken(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->requestToken:J

    return-void
.end method

.method public setUserData(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;->userData:Landroid/os/Bundle;

    return-void
.end method
