.class Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
.super Ljava/lang/Object;
.source "SyncClientHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;,
        Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$Key;,
        Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$METHOD;
    }
.end annotation


# static fields
.field public static final CONTENT_SYNC_FILE:Ljava/lang/String; = "content.sync"

.field private static INSTANCE:Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper; = null

.field private static final SyncServiceHandler_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SCloudClientHelper"


# instance fields
.field private mClientDataVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContentAuthority:Ljava/lang/String;

.field private mContentsId:Ljava/lang/String;

.field private mIsSyncable:Z

.field private mSupprtSyncUri:Ljava/lang/String;

.field private mSyncMeta:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "isSyncable"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$1;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "lastSyncTime"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$2;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "prepare"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$3;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "getAttachmentInfo"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$4;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "upload"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$5;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "download"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$6;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "deleteItem"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$7;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    const-string v1, "complete"

    new-instance v2, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$8;

    invoke-direct {v2}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mIsSyncable:Z

    const-string v0, "SCloudClientHelper"

    const-string v1, "init SyncClientHelper"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientDataVersionMap:Ljava/util/Map;

    const-string v0, "sync_meta"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSyncMeta:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->register(Landroid/content/Context;)V

    const-string v0, "SCloudClientHelper"

    const-string v1, "init SyncClientHelper finished"

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSyncMeta:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
    .locals 2

    const-class v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->INSTANCE:Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->INSTANCE:Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    :cond_0
    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->INSTANCE:Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private register(Landroid/content/Context;)V
    .locals 12

    :try_start_0
    const-string v9, "SCloudClientHelper"

    const-string v10, "register - started."

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - meta read : app info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_1

    const-string v9, "SCloudClientHelper"

    const-string v10, "register - meta read : metadata is null !!"

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v9, "scloud_contents_id"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentsId:Ljava/lang/String;

    const-string v9, "scloud_support_authority"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    const-string v9, "scloud_data_authority"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentAuthority:Ljava/lang/String;

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - meta read : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentsId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentAuthority:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentsId:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    if-nez v9, :cond_3

    :cond_2
    const-string v9, "SCloudClientHelper"

    const-string v10, "register - scloud_contents_id and scloud_support_authority should be define in meta-data of application"

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v9, "SCloudClientHelper"

    const-string v10, "parsing error : "

    invoke-static {v9, v10, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "content://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    const-string v9, "scloud_support_sync"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mIsSyncable:Z

    iget-boolean v9, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mIsSyncable:Z

    if-nez v9, :cond_4

    const-string v9, "SCloudClientHelper"

    const-string v10, "register - meta read : not support!!"

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "res/xml/sync_item.xml"

    invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - xml1 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - xml2 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - xml3 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sync_items"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_5
    :goto_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sync_items"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_6
    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - xml4 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "sync_item"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v10, "data_version"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    const/4 v3, 0x0

    if-eqz v7, :cond_7

    :try_start_2
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    :cond_7
    :goto_2
    const/4 v9, 0x0

    :try_start_3
    const-string v10, "client_impl_class"

    invoke-interface {v8, v9, v10}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "SCloudClientHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "register - xml5 : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", v :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;

    invoke-virtual {p0, v6, v3, v1}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->setClientImple(Ljava/lang/String;ILcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;)V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string v9, "SCloudClientHelper"

    const-string v10, "invalid data_version value : "

    invoke-static {v9, v10, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public getClientMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method public getContentAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getContentsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mContentsId:Ljava/lang/String;

    return-object v0
.end method

.method public getDataVersion(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientDataVersionMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupportSyncUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mSupprtSyncUri:Ljava/lang/String;

    return-object v0
.end method

.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;

    invoke-interface {v0, p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mIsSyncable:Z

    return v0
.end method

.method setClientImple(Ljava/lang/String;ILcom/samsung/android/scloud/oem/lib/sync/ISCloudSyncClient;)V
    .locals 3

    const-string v0, "SCloudClientHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClientImple name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->mClientDataVersionMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
