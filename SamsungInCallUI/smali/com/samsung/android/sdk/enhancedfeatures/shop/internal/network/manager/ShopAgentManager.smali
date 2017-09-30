.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;
.super Ljava/lang/Object;


# static fields
.field private static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "extra_content_type"

.field private static final EXTRA_DOWNLOAD_PANEL:Ljava/lang/String; = "extra_download_panel"

.field private static final EXTRA_FILE_TYPE:Ljava/lang/String; = "extra_file_type"

.field private static final TAG:Ljava/lang/String;

.field public static final TOKEN_DOWNLOADFILE:I = 0x3

.field public static final TOKEN_DOWNLOADFILEBYFILENAME:I = 0x4

.field public static final TOKEN_DOWNLOADITEMPACKAGE:I = 0x1

.field public static final TOKEN_DOWNLOADSTICKER:I = 0x2

.field public static final TOKEN_GETITEMLIST:I

.field public static downloadItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static itemListContentTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentType:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private downloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

.field private itemListListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

.field private mDeviceResolution:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->getDeviceResolution(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mDeviceResolution:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->onGetItemListResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->onDownloadStickerResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;ZLcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->onDownloadPackageResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;ZLcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->onDownloadFileResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public static buildShopManager(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private cancelItemInstalling(IILcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallWorkerManager;->getManagedWorker(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->cancel(Z)Z

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->onDownloadCancel(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->onDownloadCancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelItemInstalling. No task to cancel. Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->onDownloadCancel(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getDeviceResolution(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public static getFileNameFromContentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static installPackagePanel(Lcom/samsung/android/sdk/ssf/shop/io/ItemList;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;->panelurl:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ssf/shop/io/ItemList;->itemid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getTempDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->downloadSync(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/StickerHelper;->savePackagePanelImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    move-object v2, v1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "tmpdownfile delete fail"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private onDownloadFileResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 8

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v1, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Unknown:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v2, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v5, v2, Lcom/samsung/android/sdk/ssf/shop/io/Item;->contenturl:Ljava/lang/String;

    move-object v2, p3

    move-object v3, p4

    move-object v6, p2

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/FileInstallWorker;->execute([Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPackage: Result Code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Server Error Code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Server Error Message["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    if-eqz v1, :cond_2

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const/4 v1, 0x5

    invoke-interface {p5, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->updateStatus(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private onDownloadPackageResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;ZLcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 7

    const/4 v0, 0x0

    iget v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v1, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getTempDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v0

    iget-object v3, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/shop/io/Item;->panelurl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->downloadSync(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/StickerHelper;->savePackagePanelImage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tmpdownfile delete fail"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v1, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;->Sticker:Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;

    iget-object v2, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v2, v2, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/shop/io/Item;->contenturl:Ljava/lang/String;

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->execute([Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadPackage: Result Code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Server Error Code["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Server Error Message["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    if-eqz v1, :cond_4

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const/4 v1, 0x5

    invoke-interface {p4, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;->updateStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method

.method private onDownloadStickerResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;)V
    .locals 5

    const/4 v2, 0x0

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->itemid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sticker url : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/shop/io/Item;->contenturl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getTempDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v2

    iget-object v3, p2, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v3, v3, Lcom/samsung/android/sdk/ssf/shop/io/Item;->contenturl:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->downloadSync(Ljava/lang/String;Ljava/io/File;Ljava/util/Map;)Ljava/io/File;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/StickerHelper;->installSticker(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    move-object v2, v1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpdownfile delete fail"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tmpdownfile delete fail"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    throw v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadSticker: Result Code["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Server Error Code["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Server Error Message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private onGetItemListResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V
    .locals 4

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    invoke-direct {v0, p2, v1, p3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;-><init>(Lcom/samsung/android/sdk/ssf/shop/io/ItemListEntry;Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->execute([Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/utils/AsyncWorker;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    const-string v0, "getItemList: Account Deregistered. "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x11171

    const-string v1, "Account Deregistered"

    invoke-interface {p3, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItemList: Result Code["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Server Error Code["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], Server Error Message["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    iget-object v1, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-interface {p3, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelGetItemTask()V
    .locals 4

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/InstallPanelTask;->cancel(Z)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public canelItemDownloadTask(IILcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->cancelItemInstalling(IILcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    return-void
.end method

.method public downloadContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v1, 0x2

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mDeviceResolution:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->downloadSticker(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public downloadFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 8

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_content_type"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_file_type"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->downloadFile(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public downloadFilesByFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 8

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "extra_content_type"

    invoke-virtual {v7, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_file_type"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v1, 0x4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->downloadFileByFileName(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public downloadPackage(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 19

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_download_panel"

    move/from16 v0, p3

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mDeviceResolution:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->getPanelUrl(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v11, 0x1

    sget-object v12, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Sticker:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mDeviceResolution:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->downloadStickerPackage(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public getCategoryList(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;)V
    .locals 7

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;

    invoke-direct {v4, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/CategoryListListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/16 v1, 0xa

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->getCategoryList(Lcom/samsung/android/sdk/ssf/SsfClient;ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getContentTypes(Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ContentTypesListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->getContentTypes(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/SsfListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public getItemList(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;)V
    .locals 9

    const-wide/16 v6, 0x0

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->itemListListener:Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/ItemListDownloadListener;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->contentType:Ljava/lang/String;

    const-string v0, "panel_update_polling_time"

    invoke-static {v0, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v4, v0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;->Sticker:Lcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->mDeviceResolution:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->serviceName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/shop/ShopManager;->getPackagesInfoList(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/shop/ShopManager$ItemType;Lcom/samsung/android/sdk/ssf/SsfListener;Landroid/graphics/Rect;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isDownloadedFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "version is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "file_path"

    aput-object v0, v2, v7

    const-string v3, "item_id=? AND local_version=? "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v7

    aput-object p2, v4, v6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "contents_list"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v0, "Cursor is not null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor count"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "file_path"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return v0

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_1
.end method
