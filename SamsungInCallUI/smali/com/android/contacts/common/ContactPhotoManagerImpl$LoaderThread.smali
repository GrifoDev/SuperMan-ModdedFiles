.class Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

.field private final b:Landroid/content/ContentResolver;

.field private final c:Ljava/lang/StringBuilder;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:[B

.field private j:I


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/a/b/ae;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-static {}, Lcom/google/a/b/ae;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e:Ljava/util/Set;

    invoke-static {}, Lcom/google/a/b/ae;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->f:Ljava/util/Set;

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    iput-object p2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b:Landroid/content/ContentResolver;

    return-void
.end method

.method private a(Z)V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v10, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    const-string v2, "_id IN("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e:Ljava/util/Set;

    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->h()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v1

    if-eqz v1, :cond_6

    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v4, -0x1

    invoke-static {v3, v0, v2, p1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->g()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    if-eqz v1, :cond_9

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, p1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :cond_9
    :try_start_4
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v0, v6, v2, p1, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v1

    :goto_7
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0, v6, v7, p1, v9}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->d(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_4
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    if-ne v0, v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b()V

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->b(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I

    move-result v1

    if-le v0, v1, :cond_3

    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-lez v0, :cond_4

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v3, 0x19

    if-ge v1, v3, :cond_4

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a(Z)V

    if-nez v0, :cond_5

    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    :cond_5
    const-string v0, "ContactPhotoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloaded "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " photos.  Cached bytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/LruCache;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b()V

    goto/16 :goto_0
.end method

.method private e()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "photo_id NOT NULL AND photo_id!=0"

    const/4 v4, 0x0

    const-string v5, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->c(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/PermissionsUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->e:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->f:Ljava/util/Set;

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a(Z)V

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->g()V

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b()V

    goto :goto_0
.end method

.method private g()V
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->b()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->i:[B

    if-nez v1, :cond_0

    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->i:[B

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v1, Ljava/net/URL;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "User-Agent"

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v7}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->e(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_1
    :try_start_2
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->i:[B

    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    iget-object v8, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->i:[B

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v1

    :goto_4
    const-string v2, "ContactPhotoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot load photo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d()I

    move-result v0

    invoke-static {v1, v5, v3, v10, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->b:Landroid/content/ContentResolver;

    invoke-virtual {v1, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d()I

    move-result v8

    invoke-static {v2, v5, v1, v7, v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->d(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto :goto_4

    :cond_5
    const-string v1, "ContactPhotoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot load photo "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a:Lcom/android/contacts/common/ContactPhotoManagerImpl;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->d()I

    move-result v8

    invoke-static {v1, v5, v2, v7, v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->a(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->a()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->h:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->d()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->f()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
