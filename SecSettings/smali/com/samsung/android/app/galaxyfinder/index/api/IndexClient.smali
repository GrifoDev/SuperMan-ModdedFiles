.class public Lcom/samsung/android/app/galaxyfinder/index/api/IndexClient;
.super Ljava/lang/Object;
.source "IndexClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;
        }
    .end annotation

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "package"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "authority"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->getObjectId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "oid"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;->toJsonString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "raw"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "content://com.samsung.android.app.galaxyfinder.index/data"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    const-wide/16 v4, -0x1

    return-wide v4

    :cond_0
    const-wide/16 v4, 0x1

    return-wide v4

    :catch_0
    move-exception v1

    const-string/jumbo v4, "IndexClient"

    const-string/jumbo v5, "Fail to insert"

    invoke-static {v4, v5, v1}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "IndexClient"

    const-string/jumbo v5, "Fail to insert"

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
