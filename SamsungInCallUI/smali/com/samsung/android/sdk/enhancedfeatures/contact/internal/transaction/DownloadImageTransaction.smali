.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;
.super Ljava/lang/Object;


# static fields
.field private static final BUNDLE_VALUE_IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static final BUNDLE_VALUE_PROFILE_TYPE:Ljava/lang/String; = "profile_type"

.field private static final BUNDLE_VALUE_RAW_ID:Ljava/lang/String; = "raw_id"

.field private static final DOWNLOAD_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_REQ_PROFILE_ORIGINAL_IMAGE_DOWNLOAD:I = 0x2

.field private static final contentId:Ljava/lang/Integer;

.field private static mImageCnt:I


# instance fields
.field private changedContactIds:Landroid/os/Bundle;

.field private imageMetaInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private imageMetaInfosForAgent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

.field protected mContext:Landroid/content/Context;

.field protected mServiceId:I

.field ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private syncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->contentId:Ljava/lang/Integer;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mServiceId:I

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfos:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfosForAgent:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->syncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->changedContactIds:Landroid/os/Bundle;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->contactSyncComplete()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->listener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfosForAgent:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->findAppRawId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private contactSyncComplete()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->syncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->syncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->changedContactIds:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->localContactSyncDone(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->mImageCnt:I

    return-void
.end method

.method private findAppRawId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfosForAgent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public start()V
    .locals 9

    const-string v0, "on start "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->imageMetaInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raw id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Profile type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getNo()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Image url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "raw_id"

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "profile_type"

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getNo()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "image_url"

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->contentId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->ssfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaInfo;->getImage()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>()V

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->downloadProfileImage(Lcom/samsung/android/sdk/ssf/SsfClient;IILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/DownloadImageTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    return-void
.end method
