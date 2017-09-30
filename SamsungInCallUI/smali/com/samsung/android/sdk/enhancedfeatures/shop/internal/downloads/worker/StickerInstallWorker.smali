.class public Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;
.super Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker$DownloadWorker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker",
        "<",
        "Ljava/lang/Void;",
        "[",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final S_HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownloadUrl:Ljava/lang/String;

.field private mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

.field private mItemId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->S_HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/constant/ItemType;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mDownloadUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onDownloading([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->onDownloading([Ljava/lang/Void;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onDownloading([Ljava/lang/Void;)[Ljava/io/File;
    .locals 7

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onDownloading([Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput v5, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mInstallStatus:I

    const-string v1, "onDownloading.. STATUS_CANCELLED. Hence return"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getTempDownloadDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "tmpPackageZipfile delete fail"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download_anicon, onDownloading, 2.[delete exist?: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], tmpPackageZipFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker$DownloadWorker;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker$DownloadWorker;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->S_HANDLER:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/FileDownloadManager;->downloadSync(Landroid/os/Handler;Ljava/lang/String;Ljava/io/File;Ljava/lang/Object;)Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "download size :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v2, 0x3

    sput v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mInstallStatus:I

    const-string v2, "STATUS_CANCELLED. Hence return"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;->buildInstallException(Ljava/lang/Throwable;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;

    move-result-object v0

    throw v0

    :cond_4
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v1, v0, v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_5
    throw v0

    :catch_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    :cond_6
    move v2, v3

    goto/16 :goto_1
.end method

.method protected bridge synthetic onInstalling(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    check-cast p1, [Ljava/io/File;

    check-cast p2, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->onInstalling([Ljava/io/File;[Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onInstalling([Ljava/io/File;[Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker;->onInstalling(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    if-nez v0, :cond_1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    aget-object v10, p1, v9

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    const-string v3, "item_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    aput-object v1, v4, v0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;

    invoke-direct {v0, v11}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "contents_list"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/provider/ShopProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    if-eqz v8, :cond_8

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "install"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "local_version"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->version:J

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    move v0, v7

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v11, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/StickerHelper;->uninstallPackage(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/listener/DownloadListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->getItemId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-object v3, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->children:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v4, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->expirytime:J

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemEntry:Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/shop/io/DownloadItemEntry;->item:Lcom/samsung/android/sdk/ssf/shop/io/Item;

    iget-wide v6, v0, Lcom/samsung/android/sdk/ssf/shop/io/Item;->version:J

    move-object v0, v11

    move-object v2, v10

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/StickerHelper;->installPackage(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;JJ)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_sticker delete temp file (result/filePath) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;->buildInstallException(Ljava/lang/Throwable;)Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/InstallAsyncWorker$InstallException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_sticker delete temp file (result/filePath) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ssf/shop/util/ShopLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/network/manager/ShopAgentManager;->downloadItemMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/shop/internal/downloads/worker/StickerInstallWorker;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v8

    goto :goto_2

    :cond_8
    move v0, v9

    goto/16 :goto_1
.end method
