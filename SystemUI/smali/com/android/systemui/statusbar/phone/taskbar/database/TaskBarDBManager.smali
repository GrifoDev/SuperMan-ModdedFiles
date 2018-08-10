.class public Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;
.super Ljava/lang/Object;
.source "TaskBarDBManager.java"


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3, p1, p2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "[DS]TaskBarDBManager"

    const-string/jumbo v5, "applyBatch :: IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "[DS]TaskBarDBManager"

    const-string/jumbo v5, "applyBatch :: OperationApplicationException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v4, "[DS]TaskBarDBManager"

    const-string/jumbo v5, "applyBatch :: RemoteException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentUserId()I
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method private getMaxID(Landroid/net/Uri;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->initializeMaxId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarDBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  getMaxID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private initializeMaxId(Landroid/net/Uri;)J
    .locals 10

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "MAX(_id)"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const-wide/16 v8, -0x1

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: could not query max id from Uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-wide v8
.end method


# virtual methods
.method dbInsertAndCheck(Landroid/net/Uri;Landroid/content/ContentValues;)J
    .locals 6

    const-string/jumbo v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Error: attempting to add item without specifying an id"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "[DS]TaskBarDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dbInsertAndCheck result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    return-wide v2

    :cond_2
    const-string/jumbo v1, "[DS]TaskBarDBManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dbInsertAndCheck result is null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[DS]TaskBarDBManager"

    const-string/jumbo v3, "delete() :: unable to access database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public deleteTaskBarItem(J)I
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public generateNewFavoritesId()J
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getMaxID(Landroid/net/Uri;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShortcutInfo(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    invoke-direct {v10, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;)V

    const/4 v6, 0x0

    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "title"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const-string/jumbo v0, "icon"

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string/jumbo v3, "_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    array-length v0, v8

    const/4 v1, 0x0

    invoke-static {v8, v1, v0, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v10

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "[DS]TaskBarDBManager"

    const-string/jumbo v1, "Could not get icon from the database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getTaskBarDBCursor(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7

    const/4 v2, 0x0

    const-string/jumbo v5, "screen ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    return-object v6
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[DS]TaskBarDBManager"

    const-string/jumbo v3, "insert() :: unable to access database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public insertTaskBarItem(Landroid/content/ContentValues;)J
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->dbInsertAndCheck(Landroid/net/Uri;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public moveFavorites(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "container"

    iget-wide v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->container:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v7, "screen"

    iget v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->screen:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "_id = ?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    iget-wide v8, v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$FavoritePos;->id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "com.sec.android.app.desktoplauncher.settings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mMaxFavoriteId:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v6

    const-string/jumbo v1, "[DS]TaskBarDBManager"

    const-string/jumbo v2, "query() :: unable to access database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "[DS]TaskBarDBManager"

    const-string/jumbo v4, "update() :: unable to access database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_1
    move-exception v1

    const-string/jumbo v3, "[DS]TaskBarDBManager"

    const-string/jumbo v4, "update() :: IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v5
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "user"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;

    iget v13, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->action:I

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "title"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "_id = ?"

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "[DS]TaskBarDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "appOrder update title: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v13, "[DS]TaskBarDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "updateAppItems exception!! "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_1
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "_id"

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v13, "title"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "componentName"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->component:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "profileId"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-virtual {v12, v14}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "[DS]TaskBarDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "appOrder create app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "title"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "profileId"

    iget-object v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->user:Landroid/os/UserHandle;

    invoke-virtual {v12, v14}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v10, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "_id = ?"

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "[DS]TaskBarDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "appOrder update app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    const-string/jumbo v6, "_id = ?"

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/String;

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v7, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v13

    invoke-static {v13}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v13

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "[DS]TaskBarDBManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "appOrder delete item: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v8, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "@"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "com.sec.android.app.desktoplauncher.settings"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public updateAppOrderItem(JLandroid/content/ContentValues;)I
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public updateTaskBarItem(JLandroid/content/ContentValues;)I
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$Favorites;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p3, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
