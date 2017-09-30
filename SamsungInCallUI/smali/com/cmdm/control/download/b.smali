.class public Lcom/cmdm/control/download/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cmdm/control/download/Interface/d;


# static fields
.field static TAG:Ljava/lang/String;

.field protected static bB:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static bD:Ljava/lang/Object;


# instance fields
.field private bA:Lcom/cmdm/control/download/Interface/a;

.field public bC:Ljava/lang/String;

.field public bi:I

.field public bj:Lcom/cmdm/control/download/Interface/c;

.field public bk:Lcom/cmdm/control/download/Interface/b;

.field bq:I

.field protected bz:Lcom/cmdm/control/download/a;

.field public mContext:Landroid/content/Context;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "AsyncLoadImageTask"

    sput-object v0, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    sput-object v0, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cmdm/control/download/b;->bD:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    iput p2, p0, Lcom/cmdm/control/download/b;->bi:I

    iput-object p3, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object p1, p0, Lcom/cmdm/control/download/b;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p2, p3, p0}, Lcom/cmdm/control/download/a;-><init>(ILcom/cmdm/control/download/Interface/c;Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/cmdm/control/download/Interface/b;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    iput-object p1, p0, Lcom/cmdm/control/download/b;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    new-instance v0, Lcom/cmdm/control/download/a;

    invoke-direct {v0, p2, p0}, Lcom/cmdm/control/download/a;-><init>(Lcom/cmdm/control/download/Interface/b;Lcom/cmdm/control/download/Interface/d;)V

    iput-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    return-void
.end method

.method public constructor <init>(Lcom/cmdm/control/download/Interface/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cmdm/control/download/b;->bi:I

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bj:Lcom/cmdm/control/download/Interface/c;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bk:Lcom/cmdm/control/download/Interface/b;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->bC:Ljava/lang/String;

    iput-object v1, p0, Lcom/cmdm/control/download/b;->url:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cmdm/control/download/b;->bq:I

    iput-object p1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    return-void
.end method

.method private T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadNetWorkStatu()Z

    move-result v1

    if-eqz v1, :cond_1

    iput v3, p0, Lcom/cmdm/control/download/b;->bq:I

    invoke-direct {p0, p1, p2}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, p1}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "downloadUrl\uff08\uff09"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "savePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_17

    const v3, 0x9c40

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v3, "downloadUrl\uff08\uff09"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "con.getResponseCode()=="

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12e

    if-ne v3, v4, :cond_4

    :cond_0
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    iget v4, p0, Lcom/cmdm/control/download/b;->bq:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/cmdm/control/download/b;->bq:I

    iget v4, p0, Lcom/cmdm/control/download/b;->bq:I

    const/4 v8, 0x3

    if-gt v4, v8, :cond_17

    invoke-direct {p0, v3, v6}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v2

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_2
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v0, v1

    :cond_3
    :goto_1
    return-object v0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xce

    if-ne v3, v4, :cond_17

    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    int-to-long v8, v1

    const-string v1, "downloadUrl\uff08\uff09"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "streamLength="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " urlString=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/io/File;->setLastModified(J)Z

    const-string v1, "downloadUrl\uff08\uff09"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u7ecf\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6\uff0c\u6587\u4ef6\u5927\u5c0f\u548c\u7f51\u7edc\u6587\u4ef6\u5927\u5c0f\u4e00\u81f4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object v4, v2

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "downloadUrl\uff08\uff09"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u7ecf\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6\uff0c\u6587\u4ef6\u5927\u5c0f\u548c\u7f51\u7edc\u6587\u4ef6\u5927\u5c0f\u4e0d\u4e00\u81f4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/cmdm/control/util/file/FileUtil;->delSortedFiles(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    const/16 v1, 0x400

    :try_start_4
    new-array v10, v1, [B

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v1, v5

    :goto_3
    :try_start_5
    invoke-virtual {v4, v10}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_e

    const-string v2, "downloadUrl\uff08\uff09"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "streamLength="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "downloadUrl\uff08\uff09"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "length="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-eqz v2, :cond_7

    int-to-long v10, v1

    cmp-long v1, v8, v10

    if-eqz v1, :cond_f

    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_8
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v1

    move-object v2, v3

    goto/16 :goto_0

    :cond_9
    :try_start_6
    const-string v1, "downloadUrl\uff08\uff09"

    const-string v3, "\u4e0d\u5b58\u5728\u4e0b\u8f7d\u6587\u4ef6"

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downloadUrl\uff08\uff09"

    const-string v3, "file.createNewFile()"

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v4, v0

    :goto_4
    :try_start_7
    const-string v0, "downloadUrl\uff08\uff09"

    const-string v6, "Exception"

    invoke-static {v0, v6}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_a
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v2, :cond_b

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_b
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_e
    add-int/2addr v1, v2

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v3, v10, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    goto/16 :goto_3

    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    goto :goto_4

    :cond_f
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v1

    move-object v2, v3

    goto/16 :goto_0

    :cond_10
    :try_start_a
    sget-object v1, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    const-string v3, "\u6ca1\u6709\u8db3\u591f\u7684\u7a7a\u95f4\u4e0b\u8f7d"

    invoke-static {v1, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v1

    move-object v4, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    :goto_5
    if-eqz v2, :cond_11

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_12
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    :cond_13
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_14
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    move-object v4, v2

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v2, v3

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v4

    move-object v4, v3

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v4, v2

    goto/16 :goto_4

    :catch_6
    move-exception v1

    move-object v3, v4

    move-object v4, v0

    goto/16 :goto_4

    :cond_16
    move-object v0, v1

    goto/16 :goto_1

    :cond_17
    move-object v4, v2

    goto/16 :goto_0
.end method

.method public static aA(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ar(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/cmdm/control/download/a;->ar(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static aw(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ax(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static ay(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/cmdm/control/download/a;->aq(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private az(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public S(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "path=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/cmdm/control/util/client/Setting;->loadNetWorkStatu()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v5, p0, Lcom/cmdm/control/download/b;->bq:I

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/download/b;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v2, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0b\u8f7d\u7ed3\u675f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u6587\u4ef6\u662f\u5426\u5b58\u5728\u672c\u5730\uff1a==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Lcom/cmdm/control/download/b;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0b\u8f7d\u6587\u4ef6\u662f\u5426\u5b58\u5728\u672c\u5730\uff1a==="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmdm/control/util/PrintLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/cmdm/control/download/b;->bD:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {p1, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public aB(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getDownLoadImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/cmdm/control/util/client/Setting;->getDownloadPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    invoke-interface {v1, v2}, Lcom/cmdm/control/download/Interface/a;->a(Ljava/io/InputStream;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/cmdm/control/download/b;->bA:Lcom/cmdm/control/download/Interface/a;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/cmdm/control/download/Interface/a;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public aC(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getVisitImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public aD(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getMusicFolderPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cmdm/control/download/b;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public au(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/cmdm/control/download/b;->ay(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/cmdm/control/download/b;->av(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public av(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/b;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_1

    :cond_0
    array-length v2, v2

    if-ge v0, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/cmdm/control/util/file/FileManager;->visitImage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-static {}, Lcom/cmdm/control/util/file/FileManager;->getAvailableExternalMemorySize()J

    move-result-wide v0

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/cmdm/control/download/b;->aw(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmdm/control/download/b;->az(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/cmdm/control/download/b;->ax(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/cmdm/control/download/b;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/cmdm/control/download/b;->bB:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/b;->bz:Lcom/cmdm/control/download/a;

    invoke-virtual {v0, p1}, Lcom/cmdm/control/download/a;->execute(Ljava/lang/String;)V

    return-void
.end method
