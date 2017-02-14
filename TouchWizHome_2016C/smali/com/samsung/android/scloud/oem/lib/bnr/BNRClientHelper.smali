.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;,
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$Key;,
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$METHOD;,
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$APPEND;
    }
.end annotation


# static fields
.field private static final BACKUP:Ljava/lang/String; = "backup"

.field private static final DOWNLOADFILELIST:I = 0x1

.field private static final ITEMLIST:I = 0x0

.field private static OPERATION:Ljava/lang/String; = null

.field private static final RESTORE:Ljava/lang/String; = "restore"

.field private static final RESTOREFILELIST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BNRClientHelper_"


# instance fields
.field private final SyncServiceHandler_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private appname:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private contentsId:Ljava/lang/String;

.field private mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

.field private mDownloadFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessedKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Landroid/os/Bundle;

.field private mTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BNRClientHelper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    const-string v1, "BNRCLIENTHELPER, v: 1.8.0"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->appname:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BNRCLIENTHELPER, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearRestoredData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/DownloadFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/DownloadFileList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/RestoreFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/RestoreFileList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/RestoreFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/RestoreFileList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/DownloadFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/DownloadFileList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearRestoredData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/RestoreFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/RestoreFileList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/DownloadFileList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/DownloadFileList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove restored data in previous failed restoring.. - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v4, p1, v3}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->clearRestoreData(Landroid/content/Context;[Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove restored files in previous failed restoring.. - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_scloud_origin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mRestoreFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearPreRestoredData() delete, name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mDownloadFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method private convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v10, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v2, v12, [B

    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v7, v12, :cond_0

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v8, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    const-string v12, "key"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "value"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "timestamp"

    invoke-virtual {v9, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-direct {v8, v12, v13, v14, v15}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "converToBNRItems : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v11

    move-object v5, v6

    :goto_1
    return-void

    :catch_0
    move-exception v4

    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v4

    move-object v5, v6

    goto :goto_3

    :catch_3
    move-exception v4

    move-object v10, v11

    move-object v5, v6

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v5, v6

    goto :goto_2

    :catch_5
    move-exception v4

    move-object v10, v11

    move-object v5, v6

    goto :goto_2
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fileCopy(), from : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v7, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v9

    if-nez v9, :cond_c

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v9, 0x400

    new-array v0, v9, [B

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    :try_start_2
    array-length v10, v0

    invoke-virtual {v3, v0, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    :goto_1
    :try_start_3
    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    const-string v10, "fileCopy() failed"

    invoke-static {v9, v10, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    return v9

    :cond_4
    const/4 v9, 0x1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v1

    :goto_3
    :try_start_6
    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    const-string v10, "fileCopy() failed"

    invoke-static {v9, v10, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v9, 0x0

    :try_start_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_8
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v9

    :goto_4
    :try_start_8
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_a
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_b
    :goto_5
    throw v9

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :cond_c
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_d
    const/4 v9, 0x1

    goto :goto_2

    :cond_e
    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mTAG:Ljava/lang/String;

    const-string v10, "oldFile is null or not file~!"

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_2

    :catchall_1
    move-exception v9

    move-object v2, v3

    goto :goto_4

    :catchall_2
    move-exception v9

    move-object v4, v5

    move-object v2, v3

    goto :goto_4

    :catch_6
    move-exception v1

    move-object v2, v3

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_3

    :catch_8
    move-exception v1

    goto/16 :goto_1

    :catch_9
    move-exception v1

    move-object v2, v3

    goto/16 :goto_1
.end method

.method private setServiceHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "getClientInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "backupPrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "getItemKey"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "getFileMeta"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "backupItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "getFilePath"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "backupComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "restorePrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "restoreItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "restoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "restoreComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "accountSignIn"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "accountSignOut"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->appname:Ljava/lang/String;

    return-object v0
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;

    invoke-interface {v0, p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
