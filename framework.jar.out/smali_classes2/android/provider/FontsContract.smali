.class public Landroid/provider/FontsContract;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/FontsContract$1;,
        Landroid/provider/FontsContract$Columns;,
        Landroid/provider/FontsContract$FontFamilyResult;,
        Landroid/provider/FontsContract$FontInfo;,
        Landroid/provider/FontsContract$FontRequestCallback;
    }
.end annotation


# static fields
.field private static final SYNC_FONT_FETCH_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "FontsContract"

.field private static final THREAD_RENEWAL_THRESHOLD_MS:I = 0x2710

.field private static final sByteArrayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation
.end field

.field private static volatile sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sInQueueSet:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static final sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

.field private static sThread:Landroid/os/HandlerThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1()Landroid/os/HandlerThread;
    .locals 1

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    sput-object p0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic -set1(Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    sput-object p0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    new-instance v0, Landroid/provider/FontsContract$1;

    invoke-direct {v0}, Landroid/provider/FontsContract$1;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;

    invoke-direct {v0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c;-><init>()V

    sput-object v0, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {p0, p2, p1}, Landroid/provider/FontsContract;->prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Landroid/graphics/Typeface$Builder;

    invoke-direct {v1, p2, v0}, Landroid/graphics/Typeface$Builder;-><init>([Landroid/provider/FontsContract$FontInfo;Ljava/util/Map;)V

    invoke-virtual {v1}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/provider/FontsContract;->getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3

    :cond_1
    :try_start_0
    iget-object v3, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, p2, v3, p1}, Landroid/provider/FontsContract;->getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;

    move-result-object v1

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v3, Landroid/provider/FontsContract$FontFamilyResult;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v5}, Landroid/provider/FontsContract$FontFamilyResult;-><init>(I[Landroid/provider/FontsContract$FontInfo;)V

    return-object v3
.end method

.method public static getFontFromProvider(Landroid/content/Context;Landroid/provider/FontRequest;Ljava/lang/String;Landroid/os/CancellationSignal;)[Landroid/provider/FontsContract$FontInfo;
    .locals 29

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v4, "file"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    const/16 v25, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v26, "_id"

    const/16 v27, 0x0

    aput-object v26, v4, v27

    const-string/jumbo v26, "file_id"

    const/16 v27, 0x1

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_ttc_index"

    const/16 v27, 0x2

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_variation_settings"

    const/16 v27, 0x3

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_weight"

    const/16 v27, 0x4

    aput-object v26, v4, v27

    const-string/jumbo v26, "font_italic"

    const/16 v27, 0x5

    aput-object v26, v4, v27

    const-string/jumbo v26, "result_code"

    const/16 v27, 0x6

    aput-object v26, v4, v27

    const-string/jumbo v5, "query = ?"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v6, v0, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aput-object v26, v6, v27

    const/4 v7, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    const-string/jumbo v2, "result_code"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v2, "_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v2, "file_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v2, "font_ttc_index"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v2, "font_variation_settings"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    const-string/jumbo v2, "font_weight"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    const-string/jumbo v2, "font_italic"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    move/from16 v0, v20

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_1
    const/4 v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_2

    move/from16 v0, v21

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    :goto_2
    const/4 v2, -0x1

    move/from16 v0, v23

    if-eq v0, v2, :cond_3

    move/from16 v0, v23

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    :goto_3
    const/4 v2, -0x1

    if-ne v13, v2, :cond_4

    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v3, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    :goto_4
    const/4 v2, -0x1

    move/from16 v0, v24

    if-eq v0, v2, :cond_6

    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_6

    move/from16 v0, v24

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/4 v9, 0x1

    :goto_5
    invoke-static/range {v22 .. v22}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v7

    new-instance v4, Landroid/provider/FontsContract$FontInfo;

    invoke-direct/range {v4 .. v10}, Landroid/provider/FontsContract$FontInfo;-><init>(Landroid/net/Uri;I[Landroid/graphics/fonts/FontVariationAxis;IZI)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object/from16 v18, v19

    :goto_6
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v2

    move-object/from16 v2, v28

    :goto_7
    if-eqz v11, :cond_0

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_8
    if-eqz v4, :cond_b

    throw v4

    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v12, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v5

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    goto :goto_5

    :cond_6
    const/16 v8, 0x190

    const/4 v9, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v18, v19

    :cond_8
    if-eqz v11, :cond_9

    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :cond_9
    :goto_9
    if-eqz v25, :cond_c

    throw v25

    :catch_1
    move-exception v25

    goto :goto_9

    :catch_2
    move-exception v25

    if-nez v4, :cond_a

    move-object/from16 v4, v25

    goto :goto_8

    :cond_a
    move-object/from16 v0, v25

    if-eq v4, v0, :cond_0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    throw v2

    :cond_c
    const/4 v2, 0x0

    new-array v2, v2, [Landroid/provider/FontsContract$FontInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/provider/FontsContract$FontInfo;

    return-object v2

    :catchall_1
    move-exception v2

    move-object/from16 v4, v25

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object/from16 v4, v25

    move-object/from16 v18, v19

    goto :goto_7

    :catch_3
    move-exception v2

    goto :goto_6
.end method

.method public static getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Typeface;

    if-eqz v8, :cond_0

    return-object v8

    :cond_0
    sget-object v12, Landroid/provider/FontsContract;->sLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "fonts"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    :cond_1
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v7

    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sget-object v13, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$12;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Landroid/provider/FontsContract;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/provider/FontsContract;->sReplaceDispatcherThreadRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0x2710

    invoke-virtual {v0, v1, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1f4

    invoke-virtual {v0, v14, v15}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v12

    return-object v0

    :cond_2
    :try_start_3
    invoke-interface {v7, v10, v11}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v10

    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v12

    return-object v0

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "FontsContract"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Remote font fetch timed out: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v13, "/"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/provider/FontRequest;->getQuery()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v0, 0x0

    monitor-exit v12

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v12

    throw v0
.end method

.method public static getProvider(Landroid/content/pm/PackageManager;Landroid/provider/FontRequest;)Landroid/content/pm/ProviderInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderAuthority()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No package found for authority: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found content provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", but package was not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getProviderPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    if-eqz v7, :cond_2

    return-object v1

    :cond_2
    iget-object v7, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x40

    invoke-virtual {p0, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v7}, Landroid/provider/FontsContract;->convertToByteArrayList([Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v6

    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getCertificates()Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v7, Landroid/provider/FontsContract;->sByteArrayComparator:Ljava/util/Comparator;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v6, v5}, Landroid/provider/FontsContract;->equalsByteArrayList(Ljava/util/List;Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method static synthetic lambda$-android_provider_FontsContract_13824(Landroid/provider/FontRequest;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/locks/Lock;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/locks/Condition;)V
    .locals 6

    :try_start_0
    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;

    move-result-object v1

    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p6}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v3

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic lambda$-android_provider_FontsContract_20858(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_20963(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 10

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/provider/FontsContract;->fetchFonts(Landroid/content/Context;Landroid/os/CancellationSignal;Landroid/provider/FontRequest;)Landroid/provider/FontsContract$FontFamilyResult;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    sget-object v8, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;

    invoke-direct {v7, p4, v0}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$8;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getStatusCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_1
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/provider/FontsContract$FontFamilyResult;->getFonts()[Landroid/provider/FontsContract$FontInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v8, v3

    if-nez v8, :cond_3

    :cond_2
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$5;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$5;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    array-length v8, v3

    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v2, v3, v7

    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v5

    if-gez v5, :cond_4

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$6;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$6;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_4
    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$13;

    invoke-direct {v7, v5, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$13;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    invoke-static {p0, p1, v3}, Landroid/provider/FontsContract;->buildTypeface(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/provider/FontsContract$FontInfo;)Landroid/graphics/Typeface;

    move-result-object v6

    if-nez v6, :cond_7

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$7;

    invoke-direct {v7, p4}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$7;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    sget-object v7, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$9;

    invoke-direct {v7, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$9;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic lambda$-android_provider_FontsContract_21190(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21623(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_21962(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22244(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22570(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_22909(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23562(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_23763(Landroid/provider/FontsContract$FontRequestCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24249(Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 1

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_24507(Landroid/provider/FontsContract$FontRequestCallback;Landroid/graphics/Typeface;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/provider/FontsContract$FontRequestCallback;->onTypefaceRetrieved(Landroid/graphics/Typeface;)V

    return-void
.end method

.method static synthetic lambda$-android_provider_FontsContract_31227([B[B)I
    .locals 3

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_0

    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    sub-int/2addr v1, v2

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private static prepareFontData(Landroid/content/Context;[Landroid/provider/FontsContract$FontInfo;Landroid/os/CancellationSignal;)Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/provider/FontsContract$FontInfo;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v19, v3

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    aget-object v12, p1, v19

    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getResultCode()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Landroid/provider/FontsContract$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v8, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    :try_start_0
    const-string/jumbo v3, "r"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v15, v0, v3, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v14

    if-eqz v14, :cond_3

    const/16 v17, 0x0

    const/4 v10, 0x0

    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v8

    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    :goto_2
    if-eqz v17, :cond_3

    :try_start_4
    throw v17
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v9

    move-object v10, v11

    :cond_3
    :goto_3
    if-eqz v14, :cond_4

    :try_start_5
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    :goto_4
    if-eqz v18, :cond_5

    :try_start_6
    throw v18
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v9

    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_2
    move-exception v17

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_5
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_6
    if-eqz v10, :cond_6

    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_6
    :goto_7
    if-eqz v4, :cond_9

    :try_start_9
    throw v4

    :catch_4
    move-exception v9

    goto :goto_3

    :catch_5
    move-exception v5

    if-nez v4, :cond_7

    move-object v4, v5

    goto :goto_7

    :cond_7
    if-eq v4, v5, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_7

    :catch_6
    move-exception v3

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_8
    if-eqz v14, :cond_8

    :try_start_b
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_8
    :goto_9
    if-eqz v4, :cond_b

    :try_start_c
    throw v4
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    :cond_9
    :try_start_d
    throw v3
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_8

    :catch_7
    move-exception v18

    goto :goto_4

    :catch_8
    move-exception v5

    if-nez v4, :cond_a

    move-object v4, v5

    goto :goto_9

    :cond_a
    if-eq v4, v5, :cond_8

    :try_start_e
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_b
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    :cond_c
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    return-object v3

    :catchall_3
    move-exception v3

    move-object/from16 v4, v17

    goto :goto_6

    :catchall_4
    move-exception v3

    move-object v10, v11

    move-object/from16 v4, v17

    goto :goto_6

    :catch_9
    move-exception v3

    move-object v10, v11

    goto :goto_5
.end method

.method public static requestFonts(Landroid/content/Context;Landroid/provider/FontRequest;Landroid/os/Handler;Landroid/os/CancellationSignal;Landroid/provider/FontsContract$FontRequestCallback;)V
    .locals 7

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    sget-object v0, Landroid/provider/FontsContract;->sTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {p1}, Landroid/provider/FontRequest;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$10;

    invoke-direct {v0, p4, v6}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$10;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    new-instance v0, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/provider/-$Lambda$a7Jyr6j_Mb70hHJ2ssL1AAhKh4c$11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setApplicationContextForResources(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/provider/FontsContract;->sContext:Landroid/content/Context;

    return-void
.end method
