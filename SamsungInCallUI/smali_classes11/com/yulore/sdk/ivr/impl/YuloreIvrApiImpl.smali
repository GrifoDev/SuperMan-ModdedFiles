.class public Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;
.super Ljava/lang/Object;
.source "YuloreIvrApiImpl.java"

# interfaces
.implements Lcom/yulore/sdk/ivr/YuloreIvrApi;


# instance fields
.field private context:Landroid/content/Context;

.field private final iorwProc:Lcom/yulore/android/common/io/IORWProc;

.field private ivrFileDir:Ljava/io/File;

.field private ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

.field private final ivrParser:Lcom/yulore/sdk/ivr/parser/IvrEntityParser;

.field private layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

.field private final lock:Ljava/lang/Object;

.field private moArea:Ljava/lang/String;

.field private mtArea:Ljava/lang/String;

.field private operator:I

.field private rootDir:Ljava/io/File;

.field private final rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private stack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/yulore/sdk/ivr/model/INode;",
            ">;"
        }
    .end annotation
.end field

.field private telNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Lcom/yulore/android/common/io/IORWProc;

    invoke-direct {v0}, Lcom/yulore/android/common/io/IORWProc;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->iorwProc:Lcom/yulore/android/common/io/IORWProc;

    new-instance v0, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;

    invoke-direct {v0}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrParser:Lcom/yulore/sdk/ivr/parser/IvrEntityParser;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    if-nez p1, :cond_0

    const-string v0, "YuloreIVR"

    const-string v1, " the context is null "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p4, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrFileDir:Ljava/io/File;

    :cond_1
    iput p3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->operator:I

    iput-object p2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rootDir:Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iput-object p5, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->moArea:Ljava/lang/String;

    iput-object p6, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "telNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",moArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->moArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mtArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->standardizationNumber()V

    return-void
.end method

.method private getSpecialNumberList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rootDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/conf/specialtel.json"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Lcom/yulore/sdk/ivr/parser/SpecialNumParser;

    invoke-direct {v6}, Lcom/yulore/sdk/ivr/parser/SpecialNumParser;-><init>()V

    invoke-virtual {v6, v3}, Lcom/yulore/sdk/ivr/parser/SpecialNumParser;->parseJSON(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private readIvrData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v8, "YuloreIVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " read local ivr data of the number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrFileDir:Ljava/io/File;

    invoke-static {v8, p1, p2, p3, p4}, Lcom/yulore/sdk/ivr/util/FileUtil;->getFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "YuloreIVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " not found local ivr number "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v7

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->iorwProc:Lcom/yulore/android/common/io/IORWProc;

    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrFileDir:Ljava/io/File;

    invoke-direct {v9, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/yulore/android/common/io/IORWProc;->read(Ljava/io/File;)[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v8, "YuloreIVR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " the ivr data of number : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is not exist "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v7

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-static {v1}, Lcom/yulore/android/common/util/ByteUtils;->decompress([B)[B

    move-result-object v1

    array-length v7, v1

    add-int/lit8 v7, v7, -0x10

    new-array v0, v7, [B

    const/16 v4, 0xa

    :goto_1
    array-length v7, v1

    add-int/lit8 v7, v7, -0x6

    if-ge v4, v7, :cond_3

    add-int/lit8 v7, v4, -0xa

    aget-byte v8, v1, v4

    aput-byte v8, v0, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/yulore/sdk/ivr/util/RSA;->base64Decode([B)[B

    move-result-object v1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v7, "YuloreIVR"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " the ivr data of number : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is [ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v7, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v5, v6

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v7, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    iget-object v8, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->rwLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v5, v6

    goto :goto_2
.end method

.method private standardizationNumber()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const-string v0, "YuloreIVR"

    const-string v1, " format number to local standard type "

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->specialNumList:Ljava/util/List;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->getSpecialNumberList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->specialNumList:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "+86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "086"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, " 86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->specialNumList:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->areaCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_8

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "96"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->areaCodeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    :cond_4
    :goto_2
    const-string v0, "YuloreIVR"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areaCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_telNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->areaCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_3

    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->areaCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/yulore/sdk/ivr/util/Constants;->areaCodeList:Ljava/util/List;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    goto/16 :goto_2
.end method


# virtual methods
.method public checkUpdate()V
    .locals 3

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->context:Landroid/content/Context;

    const-class v2, Lcom/yulore/sdk/ivr/service/IvrCacheService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method public exists()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    sput-boolean v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrFileDir:Ljava/io/File;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iget-object v5, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->moArea:Ljava/lang/String;

    iget-object v6, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget v7, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->operator:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/yulore/sdk/ivr/util/FileUtil;->getFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    const-string v1, "1"

    sput-object v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVR_STATUS:Ljava/lang/String;

    move v1, v2

    goto :goto_0

    :cond_1
    sget v3, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    sput-boolean v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v2, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    const-string v1, "0"

    sput-object v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVR_STATUS:Ljava/lang/String;

    move v1, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public exists(Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onFailure()V

    sput-boolean v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrFileDir:Ljava/io/File;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    iget-object v4, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->moArea:Ljava/lang/String;

    iget-object v5, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    iget v6, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->operator:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/yulore/sdk/ivr/util/FileUtil;->getFileName(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onSuccess()V

    sput-boolean v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    const-string v0, "1"

    sput-object v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVR_STATUS:Ljava/lang/String;

    move v0, v1

    goto :goto_0

    :cond_1
    sget v2, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onFailure()V

    sput-boolean v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    goto :goto_0

    :pswitch_2
    sput-boolean v1, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVRNUMBER:Z

    const-string v0, "0"

    sput-object v0, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->IVR_STATUS:Ljava/lang/String;

    sget v0, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    :pswitch_5
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    :pswitch_7
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    :pswitch_8
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBack;->onMismatching(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public getFinalIvrCode(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    long-to-int v3, p1

    div-int/lit16 v0, v3, 0x3e8

    const-string v3, "YuloreIVR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already call "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getDelay()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-static {v3}, Lcom/yulore/sdk/ivr/util/Utility;->calculateDelay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/model/ShortcutNode;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulore/sdk/ivr/model/INode;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/model/INode;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v3}, Lcom/yulore/sdk/ivr/model/ItemNode;->getDelay()I

    move-result v3

    invoke-static {v3}, Lcom/yulore/sdk/ivr/util/Utility;->calculateDelay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getIvrMenu(Lcom/yulore/sdk/ivr/model/INode;)Lcom/yulore/sdk/ivr/model/LayerMenu;
    .locals 16

    const/4 v10, 0x0

    sget-wide v12, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CLICK_NUM:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    sput-wide v12, Lcom/yulore/sdk/ivr/util/States$PHONE_STATE;->CLICK_NUM:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->lock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    if-eqz v12, :cond_a

    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getShortcuts()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    :cond_0
    :goto_0
    :pswitch_0
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    :goto_1
    return-object v10

    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v12, :cond_9

    const/4 v7, 0x0

    move-object/from16 v0, p1

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    move-object v9, v0

    sget-object v10, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl$1;->$SwitchMap$com$yulore$sdk$ivr$ItemNodeType:[I

    invoke-virtual {v9}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/ItemNodeType;->ordinal()I

    move-result v12

    aget v10, v10, v12

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    const-string v10, "YuloreIVR"

    const-string v12, " selected leaf node "

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eq v6, v9, :cond_0

    invoke-virtual {v6}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v10

    sget-object v12, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v10, v12, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v10, "YuloreIVR"

    const-string v12, " selected normal menu , and query sub menu "

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;->getItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/model/ItemNode;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/yulore/sdk/ivr/model/INode;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/model/ItemNode;->getSubItems()Ljava/util/List;

    move-result-object v7

    :cond_5
    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v10, v7}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-lez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/yulore/sdk/ivr/model/ItemNode;

    invoke-virtual {v6}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v10

    sget-object v12, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v10, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v10, "YuloreIVR"

    const-string v12, " go back parent menu "

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    invoke-virtual {v9}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v9}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v10

    invoke-virtual {v10}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v10

    if-eqz v10, :cond_7

    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v9}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/ItemNode;->getSubItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getShortcuts()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    const-string v10, "YuloreIVR"

    const-string v12, "top menu"

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    goto/16 :goto_0

    :pswitch_4
    const-string v10, "YuloreIVR"

    const-string v12, " go back main menu "

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->clear()V

    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getShortcuts()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p1

    check-cast v0, Lcom/yulore/sdk/ivr/model/ShortcutNode;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v12, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit v11

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->telNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->moArea:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->mtArea:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->operator:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v12, v13, v14}, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->readIvrData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v10, "YuloreIVR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getIvrMenu read ivr data="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrParser:Lcom/yulore/sdk/ivr/parser/IvrEntityParser;

    invoke-virtual {v10, v2}, Lcom/yulore/sdk/ivr/parser/IvrEntityParser;->parseJSON(Ljava/lang/String;)Lcom/yulore/sdk/ivr/model/IvrEntity;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/yulore/sdk/ivr/model/IvrEntity;->getVersion()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/yulore/sdk/ivr/util/Constants;->TEL_VERSION:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/yulore/sdk/ivr/model/IvrEntity;->getIvrList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/yulore/sdk/ivr/model/IvrMenu;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    new-instance v10, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v10}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getItems()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v12}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getShortcuts()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSDKVersion()I
    .locals 1

    invoke-static {}, Lcom/yulore/sdk/ivr/util/DeviceUtil;->getSDKVersion()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    iget-object v2, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "yulore_ivr"

    invoke-virtual {v1, v2}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->name(Ljava/lang/String;)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->mode(I)Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yulore/android/common/util/SharedPreferencesUtility$Builder;->create()Lcom/yulore/android/common/util/SharedPreferencesUtility;

    move-result-object v0

    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lcom/yulore/android/common/util/SharedPreferencesUtility;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public pop()Lcom/yulore/sdk/ivr/model/LayerMenu;
    .locals 6

    iget-object v4, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yulore/sdk/ivr/model/INode;

    instance-of v3, v2, Lcom/yulore/sdk/ivr/model/ItemNode;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/yulore/sdk/ivr/model/ItemNode;

    move-object v1, v0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getType()Lcom/yulore/sdk/ivr/ItemNodeType;

    move-result-object v3

    sget-object v5, Lcom/yulore/sdk/ivr/ItemNodeType;->LEAF_NODE:Lcom/yulore/sdk/ivr/ItemNodeType;

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->stack:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yulore/sdk/ivr/model/ItemNode;

    :cond_0
    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v3}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v5, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v5, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->ivrMenu:Lcom/yulore/sdk/ivr/model/IvrMenu;

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/model/IvrMenu;->getShortcuts()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    return-object v3

    :cond_1
    :try_start_1
    new-instance v3, Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-direct {v3}, Lcom/yulore/sdk/ivr/model/LayerMenu;-><init>()V

    iput-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    invoke-virtual {v1}, Lcom/yulore/sdk/ivr/model/ItemNode;->getParent()Lcom/yulore/sdk/ivr/model/ItemNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yulore/sdk/ivr/model/ItemNode;->getSubItems()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setItems(Ljava/util/List;)V

    iget-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/yulore/sdk/ivr/model/LayerMenu;->setShortcuts(Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/yulore/sdk/ivr/impl/YuloreIvrApiImpl;->layerMenu:Lcom/yulore/sdk/ivr/model/LayerMenu;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public resetCallBack()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/yulore/sdk/ivr/listener/RequestIVRCallBackImp;->DIFFENT:I

    sput v0, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    return-void
.end method
