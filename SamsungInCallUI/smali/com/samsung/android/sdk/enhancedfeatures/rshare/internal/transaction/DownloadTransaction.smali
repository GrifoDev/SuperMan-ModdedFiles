.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_CHUNK_BYTE_START:Ljava/lang/String; = "extra_chunk_start"

.field public static final EXTRA_CHUNK_SIZE:Ljava/lang/String; = "extra_chunk_length"

.field private static final EXTRA_CONTENT_ID:Ljava/lang/String; = "extra_content_id"

.field private static final EXTRA_DOWNLOAD_DONE:Ljava/lang/String; = "extra_download_done"

.field private static final EXTRA_REMOTE_URI:Ljava/lang/String; = "extra_remote_uri"

.field private static final GROUP_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_PROJECTION_COL_DIR:I = 0x2

.field private static final MEDIA_PROJECTION_COL_REQ_TOKEN:I = 0x7

.field private static final MEDIA_PROJECTION_COL_STATUS:I = 0x0

.field private static final MEDIA_PROJECTION_COL_THUMB:I = 0x6

.field private static final MEDIA_PROJECTION_COL_TO_LIST:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_DELETE_CHUNK_COMPLETED:I = 0x4

.field private static final TOKEN_DOWNLOAD_CHUNK:I = 0x7

.field private static final TOKEN_DOWNLOAD_PROGRESS:I = 0xd

.field private static final TOKEN_GET_CONTENTS_TO_DOWNLOAD:I = 0x1

.field private static final TOKEN_GET_FOLDER_TOKEN:I = 0x65

.field private static final TOKEN_GET_FOLDER_TOKEN_AGAIN:I = 0x66

.field private static final TOKEN_GET_MEDIA_TO_DOWNLOAD:I = 0xa

.field private static final TOKEN_GET_OR_CREATE_CHUNKS:I = 0x3

.field private static final TOKEN_NEXT_CONTENT:I = 0x8

.field private static final TOKEN_UPDATE_CONTENTS_TO_COMPLETE:I = 0x5

.field private static final TOKEN_UPDATE_DOWNLOAD_PROGRESS:I = 0xe

.field private static final TOKEN_UPDATE_MEDIA_STATUS:I = 0xc

.field private static final TOKEN_UPDATE_MEDIA_STATUS_WHEN_STOP:I = 0xb

.field private static final TOKEN_UPDATE_MEDIA_TO_STOP:I = 0x9


# instance fields
.field private final CHUNK_PROJECTION:[Ljava/lang/String;

.field private final CHUNK_PROJECTION_COL_BYTE_LENGTH:I

.field private final CHUNK_PROJECTION_COL_BYTE_OFFSET:I

.field private final CONTENT_PROJECTION:[Ljava/lang/String;

.field private final CONTENT_PROJECTION_COL_CHUNK_CNT:I

.field private final CONTENT_PROJECTION_COL_CHUNK_SIZE:I

.field private final CONTENT_PROJECTION_COL_CONTENT_TYPE:I

.field private final CONTENT_PROJECTION_COL_FILE_NAME:I

.field private final CONTENT_PROJECTION_COL_FILE_SIZE:I

.field private final CONTENT_PROJECTION_COL_ID:I

.field private final CONTENT_PROJECTION_COL_PROGRESS_REAL:I

.field private final CONTENT_PROJECTION_COL_REMOTE_URI:I

.field private final CONTENT_PROJECTION_COL_STATUS:I

.field private contentNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fc:Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;

.field private isFolderTokenReset:Z

.field private mCacheDir:Ljava/io/File;

.field private mCompleteContentCount:I

.field mConentId:I

.field private mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

.field private mContentIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDestDir:Ljava/io/File;

.field private mDownloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

.field private mDownloadQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

.field private mFile:Ljava/io/File;

.field private mFolderORSUrl:Ljava/lang/String;

.field private mFolderToken:Ljava/lang/String;

.field private mGroupId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mPercentage:I

.field private mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

.field private mProcessedRemoteUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

.field private mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

.field private mStarted:Z

.field private mStopped:Z

.field private mTag:Ljava/lang/Object;

.field private mThumb:Ljava/lang/String;

.field private mToken:I

.field private mTokenConverter:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;

.field public mTotalContentCount:I

.field private mTotalFileLength:J

.field private mTotalProgressInflight:J

.field private mTotalProgressReal:J

.field private final mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

.field private mUserData:Landroid/os/Bundle;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private requestToken:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "folder_token"

    aput-object v1, v0, v2

    const-string v1, "ors_region_url"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->GROUP_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v2

    const-string v1, "media_progress_real"

    aput-object v1, v0, v3

    const-string v1, "dir"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "to_list"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thumb"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "req_token"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;JLcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Landroid/os/PowerManager$WakeLock;)V
    .locals 7

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;-><init>(Landroid/content/Context;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStopped:Z

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;->getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mPref:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Pref;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mContentIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mProcessedRemoteUri:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStarted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressReal:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "public_url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "chunk_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "chunk_count"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "filename"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "progress_real"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "content_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_ID:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_REMOTE_URI:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_CHUNK_SIZE:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_CHUNK_CNT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_FILE_NAME:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_FILE_SIZE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_PROGRESS_REAL:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_CONTENT_TYPE:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION_COL_STATUS:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "byte_offset"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "byte_length"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CHUNK_PROJECTION_COL_BYTE_OFFSET:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CHUNK_PROJECTION_COL_BYTE_LENGTH:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->isFolderTokenReset:Z

    new-instance v0, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    const/16 v1, 0x7530

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;-><init>(IIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFile:Ljava/io/File;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mToken:I

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mPercentage:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mConentId:I

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    iput-object p8, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    if-nez v0, :cond_0

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mUserData:Landroid/os/Bundle;

    :goto_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTokenConverter:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "700452"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTag:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "media id = %d "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;->getUserData()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mUserData:Landroid/os/Bundle;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number format exception, set tag without prefix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTag:Ljava/lang/Object;

    goto :goto_1
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStopped:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStarted:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->getMediaData()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->getDownloadProgress(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;JILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->getError(JILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mToken:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFolderToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFolderToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFolderORSUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFolderORSUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->fc:Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;)Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->fc:Lcom/samsung/android/sdk/ssf/file/util/FolderSyncCredentials;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mGroupId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mGroupId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->isFolderTokenReset:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->isFolderTokenReset:Z

    return p1
.end method

.method static synthetic access$2200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->GROUP_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mContentIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->join(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->requestToken:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->requestToken:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCacheDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCacheDir:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/ssf/SsfListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mSsfListener:Lcom/samsung/android/sdk/ssf/SsfListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mConnectionTimeout:Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mProcessedRemoteUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mProcessedRemoteUri:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/DownloadContentsRequest;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->contentNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->contentNames:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->CHUNK_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mUserData:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->cleanupTransactions(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->removeFileFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mThumb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mThumb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressReal:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressReal:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    return-wide p1
.end method

.method private cleanupTransactions(J)V
    .locals 7

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    const/4 v1, -0x1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private getDownloadProgress(Landroid/os/Bundle;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mUserData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setUserData(Landroid/os/Bundle;)V

    const-string v1, "extra_progress_file_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setCurrentProgressFileName(Ljava/lang/String;)V

    const-string v1, "extra_progress_file_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setCurrentFileCount(I)V

    const-string v1, "extra_progress_total_file_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setTotalFileCount(I)V

    const-string v1, "extra_progress_total_download_length"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setOverallTotalBytes(J)V

    const-string v1, "extra_progress_total_download_bytes"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setOverallProgressBytes(J)V

    const-string v1, "extra_progress_byte"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setCurrentProgressBytes(J)V

    const-string v1, "extra_progress_total_file_length"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setCurrentProgressTotalBytes(J)V

    const-string v1, "extra_remote_url"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setContentsDownloaded(Ljava/util/ArrayList;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->requestToken:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadProgressResponse;->setRequestToken(J)V

    return-object v0
.end method

.method private getError(JILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {v0, p3, p4, p4}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->requestToken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setShareId(J)V

    return-object v0
.end method

.method private getMediaData()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_id"

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "extra_remote_url"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mProcessedRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private join(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v6, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", "

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeFileFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFileFormat PatternSyntaxException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFileFormat IndexOutOfBoundsException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stop(IILjava/lang/String;)V
    .locals 9

    const/16 v8, 0x2f

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStopped:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already stopped mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStopped:Z

    :try_start_0
    invoke-static {}, Lcom/samsung/android/sdk/ssf/common/model/RequestManager;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;->remove(J)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/Transaction;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[WakeLock] release pm lock"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_3

    const-string v0, "error_detail"

    invoke-virtual {v4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    const/16 v1, 0x9

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_4

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start download, m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cnt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalContentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 7

    const/16 v6, 0xc9

    const/4 v5, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "media_progress"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "media_progress_real"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;->getInboxContentUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "status"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "chunk_complete_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "chunk_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "progress"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "progress_real"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "begin"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "end"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content$ChunkEntry;->getMediaChunkUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    const/16 v1, 0xb

    const/4 v3, 0x0

    const-string v4, "com.samsung.android.coreapps.rshare"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;->startApplyBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "Canceled"

    invoke-direct {p0, v6, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method protected getDestFile(Ljava/lang/String;Z)Ljava/io/File;
    .locals 10

    const/4 v2, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to make dir "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object p1, v1

    :goto_1
    move v1, v2

    :goto_2
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDestDir:Ljava/io/File;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%s (%d)%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Download dest file exists already. Get new name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public pause(I)V
    .locals 2

    const/16 v0, 0x12c

    const-string v1, "Paused"

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method protected postProgress(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;)V
    .locals 8

    const/16 v7, 0x2f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->getMediaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_progress_file_name"

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_progress_byte"

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "extra_progress_total_file_length"

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalContentCount:I

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadQueue:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue;->size()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const-string v2, "extra_progress_file_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_progress_total_file_count"

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalContentCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra_progress_content_data"

    iget-object v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extra_progress_total_download_length"

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "extra_progress_total_download_bytes"

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "extra_remote_url"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mProcessedRemoteUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->progressInflight:J

    long-to-float v1, v2

    iget-wide v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->fileLength:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    float-to-int v1, v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    long-to-float v2, v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    float-to-int v2, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start download, m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cnt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mCompleteContentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalContentCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sz="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalProgressInflight:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTotalFileLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStarted:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mPercentage:I

    if-ne v2, v1, :cond_0

    iget v2, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mConentId:I

    if-eq v2, v3, :cond_1

    :cond_0
    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mPercentage:I

    iget v1, p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/ContentQueue$ContentToSend;->contentId:I

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mConentId:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$5;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStarted:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mDownloadContentsListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/DownloadContentsListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$6;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mStopped:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mQueryHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;

    const/16 v1, 0xa

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mMediaUri:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->MEDIA_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopByError(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x191

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->stop(IILjava/lang/String;)V

    return-void
.end method

.method public token2str(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/transaction/DownloadTransaction;->mTokenConverter:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TokenConverter;->token2string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
