.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;,
        Landroid/app/DownloadManager$SecCursorTranslator;,
        Landroid/app/DownloadManager$SecQuery;
    }
.end annotation


# static fields
.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_SEC_DOWNLOADS"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DOWNLOAD_METHOD:Ljava/lang/String; = "downloadmethod"

.field public static final COLUMN_DOWNLOAD_STATE:Ljava/lang/String; = "state"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_RANGE_END:Ljava/lang/String; = "range_end"

.field public static final COLUMN_RANGE_FIRSTCHUNK_END:Ljava/lang/String; = "range_first_end"

.field public static final COLUMN_RANGE_START:Ljava/lang/String; = "range_start"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_STORAGE_TYPE:Ljava/lang/String; = "storage_type"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field private static final LONG_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_BY_APP:I = 0x5

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field private static final SEC_COLUMNS:[Ljava/lang/String;

.field private static final SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field public static final SEM_COLUMN_DD_CONTENT_SIZE:Ljava/lang/String; = "dd_contentSize"

.field public static final SEM_COLUMN_DD_FILE_DESCRIPTION:Ljava/lang/String; = "dd_description"

.field public static final SEM_COLUMN_DD_FILE_NAME:Ljava/lang/String; = "dd_fileName"

.field public static final SEM_COLUMN_DD_PRIMARY_MIMETYPE:Ljava/lang/String; = "dd_primaryMimeType"

.field public static final SEM_COLUMN_DD_VENDOR_NAME:Ljava/lang/String; = "dd_vendor"

.field public static final SEM_COLUMN_DD_VERSION_NUMBER:Ljava/lang/String; = "dd_majorVersion"

.field public static final SEM_STATUS_OMA_PENDING:I = 0x10000

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAccessFilename:Z

.field private mBaseUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSecBaseUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .locals 1

    sget-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 413
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 414
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 415
    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v4

    .line 416
    const-string/jumbo v1, "title"

    aput-object v1, v0, v5

    .line 417
    const-string/jumbo v1, "description"

    aput-object v1, v0, v6

    .line 418
    const-string/jumbo v1, "uri"

    aput-object v1, v0, v7

    .line 419
    const-string/jumbo v1, "media_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 420
    const-string/jumbo v1, "total_size"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 421
    const-string/jumbo v1, "local_uri"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 422
    const-string/jumbo v1, "status"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 423
    const-string/jumbo v1, "reason"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 424
    const-string/jumbo v1, "bytes_so_far"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 425
    const-string/jumbo v1, "last_modified_timestamp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 426
    const-string/jumbo v1, "dd_fileName"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 427
    const-string/jumbo v1, "dd_vendor"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 428
    const-string/jumbo v1, "dd_description"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 429
    const-string/jumbo v1, "dd_majorVersion"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 430
    const-string/jumbo v1, "dd_primaryMimeType"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 431
    const-string/jumbo v1, "dd_contentSize"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 432
    const-string/jumbo v1, "state"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 433
    const-string/jumbo v1, "downloadmethod"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 434
    const-string/jumbo v1, "local_filename"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 435
    const-string/jumbo v1, "storage_type"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 413
    sput-object v0, Landroid/app/DownloadManager;->SEC_COLUMNS:[Ljava/lang/String;

    .line 443
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    .line 444
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 445
    const-string/jumbo v1, "_data AS local_filename"

    aput-object v1, v0, v4

    .line 446
    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v5

    .line 447
    const-string/jumbo v1, "destination"

    aput-object v1, v0, v6

    .line 448
    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    .line 449
    const-string/jumbo v1, "description"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 450
    const-string/jumbo v1, "uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 451
    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 452
    const-string/jumbo v1, "hint"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 453
    const-string/jumbo v1, "mimetype AS media_type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 454
    const-string/jumbo v1, "total_bytes AS total_size"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 455
    const-string/jumbo v1, "lastmod AS last_modified_timestamp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 456
    const-string/jumbo v1, "current_bytes AS bytes_so_far"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 457
    const-string/jumbo v1, "allow_write"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 459
    const-string/jumbo v1, "dd_primaryMimeType"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 460
    const-string/jumbo v1, "dd_fileName"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 461
    const-string/jumbo v1, "dd_vendor"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 462
    const-string/jumbo v1, "dd_description"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 463
    const-string/jumbo v1, "dd_contentSize"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 464
    const-string/jumbo v1, "dd_objUrl"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 465
    const-string/jumbo v1, "dd_majorVersion"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 467
    const-string/jumbo v1, "range_start"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 468
    const-string/jumbo v1, "range_end"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 469
    const-string/jumbo v1, "range_first_end"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 474
    const-string/jumbo v1, "\'placeholder\' AS local_uri"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 475
    const-string/jumbo v1, "\'placeholder\' AS reason"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 443
    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 478
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    .line 479
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 480
    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 481
    const-string/jumbo v1, "status"

    aput-object v1, v0, v5

    .line 482
    const-string/jumbo v1, "state"

    aput-object v1, v0, v6

    .line 483
    const-string/jumbo v1, "total_bytes"

    aput-object v1, v0, v7

    .line 484
    const-string/jumbo v1, "current_bytes"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 485
    const-string/jumbo v1, "_data"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 486
    const-string/jumbo v1, "description"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 487
    const-string/jumbo v1, "mimetype"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 488
    const-string/jumbo v1, "lastmod"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 489
    const-string/jumbo v1, "visibility"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 490
    const-string/jumbo v1, "downloadmethod"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 491
    const-string/jumbo v1, "uri"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 492
    const-string/jumbo v1, "destination"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 493
    const-string/jumbo v1, "dd_primaryMimeType"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 494
    const-string/jumbo v1, "dd_SecondaryMimeType1"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 495
    const-string/jumbo v1, "dd_SecondaryMimeType2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 496
    const-string/jumbo v1, "dd_fileName"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 497
    const-string/jumbo v1, "dd_vendor"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 498
    const-string/jumbo v1, "dd_description"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 499
    const-string/jumbo v1, "dd_contentSize"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 500
    const-string/jumbo v1, "dd_objUrl"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 501
    const-string/jumbo v1, "dd_notifyurl"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 502
    const-string/jumbo v1, "dd_majorVersion"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 503
    const-string/jumbo v1, "storagetype"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 478
    sput-object v0, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/util/HashSet;

    .line 506
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "total_size"

    aput-object v2, v1, v4

    const-string/jumbo v2, "status"

    aput-object v2, v1, v5

    const-string/jumbo v2, "reason"

    aput-object v2, v1, v6

    .line 507
    const-string/jumbo v2, "bytes_so_far"

    aput-object v2, v1, v7

    const-string/jumbo v2, "last_modified_timestamp"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "dd_contentSize"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 508
    const-string/jumbo v2, "state"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "downloadmethod"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "storage_type"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 506
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 505
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/app/DownloadManager;->LONG_COLUMNS:Ljava/util/Set;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1368
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1370
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 1378
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    .line 1382
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1376
    return-void

    .line 1382
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1861
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1751
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1752
    const-string/jumbo v2, "download_manager_max_bytes_over_mobile"

    .line 1751
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1753
    :catch_0
    move-exception v0

    .line 1754
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1845
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1846
    const-string/jumbo v2, "download_manager_recommended_max_bytes_over_mobile"

    .line 1845
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1847
    :catch_0
    move-exception v0

    .line 1848
    .local v0, "exc":Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .param p0, "ids"    # [J

    .prologue
    .line 2056
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 2057
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2058
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2060
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    .prologue
    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2040
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2042
    if-lez v0, :cond_0

    .line 2043
    const-string/jumbo v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2045
    :cond_0
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    const-string/jumbo v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2048
    :cond_1
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2049
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1855
    const/4 v0, 0x0

    return v0
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1498
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1499
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1500
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1501
    .local v2, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1502
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const/4 v1, 0x0

    goto :goto_0

    .line 1507
    .end local v2    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2021
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2022
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2020
    :cond_0
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    .prologue
    .line 1890
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 1889
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "uri"    # Landroid/net/Uri;
    .param p10, "referer"    # Landroid/net/Uri;

    .prologue
    .line 1921
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 1920
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z

    .prologue
    .line 1929
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1928
    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .locals 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z
    .param p9, "allowWrite"    # Z
    .param p10, "uri"    # Landroid/net/Uri;
    .param p11, "referer"    # Landroid/net/Uri;

    .prologue
    .line 1937
    const-string/jumbo v5, "title"

    invoke-static {v5, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    const-string/jumbo v5, "description"

    invoke-static {v5, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string/jumbo v5, "path"

    invoke-static {v5, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string/jumbo v5, "mimeType"

    invoke-static {v5, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-wide/16 v6, 0x0

    cmp-long v5, p6, v6

    if-gez v5, :cond_0

    .line 1942
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, " invalid value for param: totalBytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1947
    :cond_0
    if-eqz p10, :cond_2

    .line 1948
    new-instance v3, Landroid/app/DownloadManager$Request;

    move-object/from16 v0, p10

    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 1952
    .local v3, "request":Landroid/app/DownloadManager$Request;
    :goto_0
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1955
    if-eqz p11, :cond_1

    .line 1956
    const-string/jumbo v5, "Referer"

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 1958
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    .line 1959
    .local v4, "values":Landroid/content/ContentValues;
    const-string/jumbo v5, "destination"

    .line 1960
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1959
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1961
    const-string/jumbo v5, "_data"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v5, "status"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    const-string/jumbo v5, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1964
    const-string/jumbo v6, "scanned"

    .line 1965
    if-eqz p3, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1964
    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1967
    const-string/jumbo v6, "visibility"

    if-eqz p8, :cond_4

    .line 1968
    const/4 v5, 0x3

    .line 1967
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1969
    const-string/jumbo v6, "allow_write"

    if-eqz p9, :cond_5

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1970
    iget-object v5, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1971
    .local v2, "downloadUri":Landroid/net/Uri;
    if-nez v2, :cond_6

    .line 1972
    const-wide/16 v6, -0x1

    return-wide v6

    .line 1950
    .end local v2    # "downloadUri":Landroid/net/Uri;
    .end local v3    # "request":Landroid/app/DownloadManager$Request;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .restart local v3    # "request":Landroid/app/DownloadManager$Request;
    goto :goto_0

    .line 1966
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    .line 1968
    :cond_4
    const/4 v5, 0x2

    goto :goto_2

    .line 1969
    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    .line 1974
    .restart local v2    # "downloadUri":Landroid/net/Uri;
    :cond_6
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    return-wide v6
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .prologue
    .line 1424
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1425
    .local v1, "values":Landroid/content/ContentValues;
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1426
    .local v0, "downloadUri":Landroid/net/Uri;
    const-wide/16 v2, 0x0

    .line 1427
    .local v2, "id":J
    if-eqz v0, :cond_0

    .line 1428
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1430
    :cond_0
    return-wide v2
.end method

.method public varargs forceDownload([J)V
    .locals 5
    .param p1, "ids"    # [J

    .prologue
    .line 1734
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1735
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    const-string/jumbo v1, "control"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1737
    const-string/jumbo v1, "bypass_recommended_size_limit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1738
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1733
    return-void
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 2032
    iget-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v5, 0x0

    .line 1614
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1615
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1617
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1618
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1625
    if-eqz v0, :cond_0

    .line 1626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1619
    :cond_0
    return-object v5

    .line 1621
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1622
    const-string/jumbo v2, "media_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1625
    if-eqz v0, :cond_2

    .line 1626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1622
    :cond_2
    return-object v2

    .line 1625
    :cond_3
    if-eqz v0, :cond_4

    .line 1626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1630
    :cond_4
    return-object v5

    .line 1624
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1625
    if-eqz v0, :cond_5

    .line 1626
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1624
    :cond_5
    throw v2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 1583
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    .line 1584
    .local v1, "query":Landroid/app/DownloadManager$Query;
    const/4 v0, 0x0

    .line 1586
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1587
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1597
    if-eqz v0, :cond_0

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1588
    :cond_0
    return-object v6

    .line 1590
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1591
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1592
    .local v2, "status":I
    const/16 v3, 0x8

    if-ne v3, v2, :cond_3

    .line 1593
    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 1597
    if-eqz v0, :cond_2

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1593
    :cond_2
    return-object v3

    .line 1597
    .end local v2    # "status":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1602
    :cond_4
    return-object v6

    .line 1596
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 1597
    if-eqz v0, :cond_5

    .line 1598
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1596
    :cond_5
    throw v3
.end method

.method public varargs markRowDeleted([J)I
    .locals 4
    .param p1, "ids"    # [J

    .prologue
    .line 1463
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public pauseDownload(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 1675
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1676
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "control"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1677
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1674
    return-void
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .locals 5
    .param p1, "query"    # Landroid/app/DownloadManager$Query;

    .prologue
    const/4 v4, 0x0

    .line 1538
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1539
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1540
    return-object v4

    .line 1542
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs remove([J)I
    .locals 1
    .param p1, "ids"    # [J

    .prologue
    .line 1479
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public rename(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # J
    .param p4, "displayName"    # Ljava/lang/String;

    .prologue
    .line 1768
    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 1769
    new-instance v12, Ljava/lang/SecurityException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " is not a valid filename"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1772
    :cond_0
    new-instance v12, Landroid/app/DownloadManager$Query;

    invoke-direct {v12}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [J

    const/4 v14, 0x0

    aput-wide p2, v13, v14

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v9

    .line 1773
    .local v9, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x0

    .line 1774
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1775
    .local v7, "oldDisplayName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1777
    .local v6, "mimeType":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1778
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez v4, :cond_2

    .line 1779
    const/4 v12, 0x0

    .line 1790
    if-eqz v4, :cond_1

    .line 1791
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1779
    :cond_1
    return v12

    .line 1781
    :cond_2
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1782
    const-string/jumbo v12, "status"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1783
    .local v10, "status":I
    const/16 v12, 0x8

    if-eq v12, v10, :cond_4

    .line 1784
    const/4 v12, 0x0

    .line 1790
    if-eqz v4, :cond_3

    .line 1791
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1784
    :cond_3
    return v12

    .line 1786
    :cond_4
    :try_start_2
    const-string/jumbo v12, "title"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1787
    .local v7, "oldDisplayName":Ljava/lang/String;
    const-string/jumbo v12, "media_type"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 1790
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "oldDisplayName":Ljava/lang/String;
    .end local v10    # "status":I
    :cond_5
    if-eqz v4, :cond_6

    .line 1791
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1795
    :cond_6
    if-eqz v7, :cond_7

    if-nez v6, :cond_9

    .line 1796
    :cond_7
    new-instance v12, Ljava/lang/IllegalStateException;

    .line 1797
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Document with id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " does not exist"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1796
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1789
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :catchall_0
    move-exception v12

    .line 1790
    if-eqz v4, :cond_8

    .line 1791
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1789
    :cond_8
    throw v12

    .line 1801
    .end local v6    # "mimeType":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_9
    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 1800
    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 1803
    .local v8, "parent":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v8, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1804
    .local v3, "before":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1806
    .local v2, "after":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1807
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Already exists "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1809
    :cond_a
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 1810
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failed to rename to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1814
    :cond_b
    const-string/jumbo v12, "image/"

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1816
    const-string/jumbo v14, "_data=?"

    .line 1817
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    .line 1818
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1815
    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1821
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13, v14}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 1824
    :cond_c
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1825
    .local v11, "values":Landroid/content/ContentValues;
    const-string/jumbo v12, "title"

    move-object/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    const-string/jumbo v12, "_data"

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string/jumbo v12, "mediaprovider_uri"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1828
    const/4 v12, 0x1

    new-array v5, v12, [J

    const/4 v12, 0x0

    aput-wide p2, v5, v12

    .line 1830
    .local v5, "ids":[J
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v14

    .line 1831
    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v15

    .line 1830
    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1831
    const/4 v13, 0x1

    .line 1830
    if-ne v12, v13, :cond_d

    const/4 v12, 0x1

    :goto_0
    return v12

    :cond_d
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public varargs restartDownload([J)Z
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 1640
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 1642
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1643
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1644
    .local v1, "status":I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    const/16 v3, 0x10

    if-eq v1, v3, :cond_0

    .line 1651
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1647
    return v5

    .line 1642
    :cond_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1650
    .end local v1    # "status":I
    :catchall_0
    move-exception v3

    .line 1651
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1650
    throw v3

    .line 1651
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1654
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1655
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1656
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1657
    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1658
    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1659
    const-string/jumbo v3, "numfailed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1660
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1661
    const-string/jumbo v3, "range_start"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1662
    const-string/jumbo v3, "range_end"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1663
    const-string/jumbo v3, "range_first_end"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1664
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1665
    const/4 v3, 0x1

    return v3
.end method

.method public resumeDownload(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 1687
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1688
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "control"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1689
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1686
    return-void
.end method

.method public secAddCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isMediaScannerScannable"    # Z
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "path"    # Ljava/lang/String;
    .param p6, "length"    # J
    .param p8, "showNotification"    # Z

    .prologue
    .line 1983
    const-string/jumbo v3, "title"

    invoke-static {v3, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string/jumbo v3, "description"

    invoke-static {v3, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string/jumbo v3, "path"

    invoke-static {v3, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string/jumbo v3, "mimeType"

    invoke-static {v3, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    const-wide/16 v4, 0x0

    cmp-long v3, p6, v4

    if-gez v3, :cond_0

    .line 1988
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, " invalid value for param: totalBytes"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1992
    :cond_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v4, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    .line 1996
    .local v1, "request":Landroid/app/DownloadManager$Request;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/DownloadManager$Request;->sectoContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 1997
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "destination"

    .line 1998
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1997
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1999
    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    const-string/jumbo v3, "status"

    const/16 v4, 0xc8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2001
    const-string/jumbo v3, "state"

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const-string/jumbo v3, "storagetype"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2003
    const-string/jumbo v3, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2004
    const-string/jumbo v4, "scanned"

    .line 2005
    if-eqz p3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 2004
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2007
    const-string/jumbo v4, "visibility"

    if-eqz p8, :cond_2

    .line 2008
    const/4 v3, 0x1

    .line 2007
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2009
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2010
    .local v0, "downloadUri":Landroid/net/Uri;
    if-nez v0, :cond_3

    .line 2011
    const-wide/16 v4, -0x1

    return-wide v4

    .line 2006
    .end local v0    # "downloadUri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 2008
    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    .line 2013
    .restart local v0    # "downloadUri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public secenqueue(Landroid/app/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .prologue
    .line 1443
    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->sectoContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1444
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "notificationpackage"

    const-string/jumbo v5, "com.android.browser"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v4, "notificationclass"

    const-string/jumbo v5, "com.android.browser.OpenDownloadReceiver"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1447
    .local v0, "downloadUri":Landroid/net/Uri;
    const-wide/16 v2, 0x0

    .line 1448
    .local v2, "id":J
    if-eqz v0, :cond_0

    .line 1449
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1451
    :cond_0
    return-wide v2
.end method

.method public varargs secmarkRowDeleted([J)I
    .locals 6
    .param p1, "ids"    # [J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1485
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 1487
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1489
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1490
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1493
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    aget-wide v4, p1, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;
    .locals 5
    .param p1, "query"    # Landroid/app/DownloadManager$SecQuery;

    .prologue
    const/4 v4, 0x0

    .line 1555
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->SEC_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$SecQuery;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    .line 1556
    .local v0, "underlyingCursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1557
    return-object v4

    .line 1559
    :cond_0
    new-instance v1, Landroid/app/DownloadManager$SecCursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/app/DownloadManager$SecCursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method public varargs secremove([J)I
    .locals 5
    .param p1, "ids"    # [J

    .prologue
    .line 1512
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 1514
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "input param \'ids\' can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1517
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v2, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1521
    .local v1, "selectionArgs":[Ljava/lang/String;
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1522
    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v1

    .line 1523
    .local v1, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v3, " AND "

    invoke-direct {p0, v3, v2}, Landroid/app/DownloadManager;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1526
    .local v0, "selection":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public varargs secrestartDownload([J)Z
    .locals 8
    .param p1, "ids"    # [J

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1700
    new-instance v3, Landroid/app/DownloadManager$SecQuery;

    invoke-direct {v3}, Landroid/app/DownloadManager$SecQuery;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$SecQuery;->setFilterById([J)Landroid/app/DownloadManager$SecQuery;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->secquery(Landroid/app/DownloadManager$SecQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 1701
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1702
    return v5

    .line 1704
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1705
    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1706
    .local v1, "status":I
    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    .line 1713
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1709
    return v5

    .line 1704
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1712
    .end local v1    # "status":I
    :catchall_0
    move-exception v3

    .line 1713
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1712
    throw v3

    .line 1713
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1716
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1717
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1720
    const-string/jumbo v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1721
    const-string/jumbo v3, "visibility"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1722
    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1723
    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mSecBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1724
    return v7
.end method

.method public setAccessAllDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .prologue
    .line 1391
    if-eqz p1, :cond_0

    .line 1392
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1390
    :goto_0
    return-void

    .line 1394
    :cond_0
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public setAccessFilename(Z)V
    .locals 0
    .param p1, "accessFilename"    # Z

    .prologue
    .line 1400
    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    .line 1399
    return-void
.end method

.method public setSecDownloads(Z)V
    .locals 1
    .param p1, "accessAllDownloads"    # Z

    .prologue
    .line 1410
    if-eqz p1, :cond_0

    .line 1411
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 1409
    :cond_0
    return-void
.end method
