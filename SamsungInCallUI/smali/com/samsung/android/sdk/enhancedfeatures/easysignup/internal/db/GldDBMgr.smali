.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "GldDBMgr"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static containsKey(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "type = ?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v7

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "containsKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". DBHandler null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GldDBMgr"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHelper$GldTable;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "type = ?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    :goto_1
    if-eqz v1, :cond_1

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containsKey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GldDBMgr"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    if-eqz v2, :cond_5

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3
.end method

.method public static declared-synchronized setGldData(Landroid/content/Context;[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V
    .locals 10

    const/4 v0, 0x0

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;

    monitor-enter v2

    :try_start_0
    const-string v1, "setGldData"

    const-string v3, "GldDBMgr"

    invoke-static {v1, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "setGldData. cannot get DBHandler, failed to update server"

    const-string v1, "GldDBMgr"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p1

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getType()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "type"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "address"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "scheme"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "port"

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;->getPort()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GLD Data : "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "GldDBMgr"

    invoke-static {v0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;->containsKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GldDBMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " exists. update data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const-string v6, "gld"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValues(Landroid/content/ContentValues;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string v7, "type = ?"

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_1
    const-string v0, "GldDBMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " doesn\'t exists. insert data"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gld"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValues(Landroid/content/ContentValues;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/EasySignUpDBHandler;->applyBatch(Ljava/util/ArrayList;)[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
