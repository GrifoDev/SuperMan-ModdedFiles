.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;
    }
.end annotation


# static fields
.field private static OPERATION:Ljava/lang/String;


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

.field private mProcessedFileList:Ljava/util/List;
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

.field private mResult:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v0, "BNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "101, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", VERSION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1.7.5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->appname:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    const-string/jumbo v0, "BNRClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "101, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

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

.method static synthetic access$0(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    return-object v0
.end method

.method private addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    if-eqz v0, :cond_1

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "BNRClientHelper"

    const-string/jumbo v3, "clearPreRestoredData"

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :goto_0
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "BNRClientHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preOperation. remove restored values in previous failed restoring.. - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v3, p1, v2, v5}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreComplete(Landroid/content/Context;[Ljava/lang/String;Z)Z

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "BNRClientHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preOperation. remove restored values in previous failed restoring.. - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_scloud_origin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_scloud_dwnload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string/jumbo v3, "BNRClientHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "clearPreRestoredData() delete : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_scloud_dwnload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_1
.end method

.method private convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .locals 18
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

    const/4 v6, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v2, v13, [B

    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_0

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v9, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    const-string/jumbo v13, "key"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "timestamp"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v9, v13, v14, v0, v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v13, "BNRClientHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "converToBNRItems : "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v11, v12

    move-object v6, v7

    :goto_1
    return-void

    :catch_0
    move-exception v4

    :goto_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v6, v7

    goto :goto_3

    :catch_3
    move-exception v5

    move-object v11, v12

    move-object v6, v7

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v6, v7

    goto :goto_2

    :catch_5
    move-exception v4

    move-object v11, v12

    move-object v6, v7

    goto :goto_2
.end method

.method private fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const-string/jumbo v11, "BNRClientHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "fileCopy(), from : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " , to : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v9, :cond_1

    :cond_0
    const-string/jumbo v11, "BNRClientHelper"

    const-string/jumbo v12, "oldFile is null or not file~!"

    invoke-static {v11, v12}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_3

    :cond_2
    :goto_0
    invoke-virtual {v9, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_6

    :goto_1
    const/4 v11, 0x1

    return v11

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v11, 0x400

    new-array v1, v11, [B

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v1

    invoke-virtual {v5, v1, v11, v12}, Ljava/io/FileInputStream;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    const/4 v11, 0x0

    invoke-virtual {v7, v1, v11, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catch_0
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    :goto_3
    const-string/jumbo v11, "BNRClientHelper"

    const-string/jumbo v12, "fileCopy() failed"

    invoke-static {v11, v12, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    return v11

    :cond_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v11, 0x1

    return v11

    :catch_1
    move-exception v3

    :goto_4
    const-string/jumbo v11, "BNRClientHelper"

    const-string/jumbo v12, "fileCopy() failed"

    invoke-static {v11, v12, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v11, 0x0

    return v11

    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_1

    :catch_2
    move-exception v3

    move-object v4, v5

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v6, v7

    move-object v4, v5

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    move-object v4, v5

    goto :goto_3
.end method

.method private setServiceHandler()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "getClientInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "backupPrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "getItemKey"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "getFileMeta"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "backupItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "getFilePath"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "backupComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "restorePrepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "restoreItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "restoreFile"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "restoreComplete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "accountSignIn"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string/jumbo v1, "accountSignOut"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;

    invoke-direct {v2, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;

    invoke-interface {v0, p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
