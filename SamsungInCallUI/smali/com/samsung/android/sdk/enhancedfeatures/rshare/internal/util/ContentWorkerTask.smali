.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "ContentWorkerTask"

.field private static final TOKEN_INSERT_CONTENT:I = 0x1

.field private static final TOKEN_INSERT_MEDIA:I


# instance fields
.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnhancedHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

.field private mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

.field private mShareUri:Landroid/net/Uri;

.field private mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

.field private sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$QueryHandler;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/content/ContentResolver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mEnhancedHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    iput-object p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/listener/BasicListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mShareUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mShareUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mEnhancedHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mTrBusyMap:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/TransactionMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private getGCMValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;->HIGH:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPushValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;->NONE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;->ONLYONE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private writeUploadInformation()V
    .locals 13

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "content_count"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "description"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getGroupID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->isEmptyContact()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "recipient_ids"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getPhoneNumberList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "recipient_indexes"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getIndexList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "share_type"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getShareType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "duration_time"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getDurationTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getMuploadType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;->SINGLE:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    if-ne v0, v1, :cond_2

    const-string v0, "multi_upload_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_1
    const-string v0, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "app"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dir"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getUploadDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "req_token"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "gcm_type"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getGCMType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->getGCMValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/GcmType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v0, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v4, v0

    move v1, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getFileContentUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentData;->getSize()J

    move-result-wide v10

    add-long/2addr v4, v10

    goto :goto_2

    :cond_1
    const-string v0, "to_list"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getGroupID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getMuploadType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;->PLURAL:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$MuploadType;

    if-ne v0, v1, :cond_0

    const-string v0, "multi_upload_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_3
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "preview"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getShareType()I

    move-result v0

    if-ne v0, v12, :cond_6

    const-string v0, "push"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getPushType()Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->getPushValue(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest$PushType;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getLockKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v0, "lock_key"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getLockKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "silence_push"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->isSilencePush()Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "cid"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getCid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mEnhancedHandler:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-void

    :cond_7
    move v2, v3

    goto :goto_4
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentCreator;->createContents(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mContentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Security exception"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_error_message"

    const-string v2, "No permission for read file"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x2e

    const-string v1, "No permission for read file"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "contents has been processed"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RQuota;->get()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "byte_usage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "byte_sending"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v1, "quota"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    add-long v6, v2, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sentByte : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendingByte : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " quota : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " totalByte : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->writeUploadInformation()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "error in processing"

    const-string v1, "ContentWorkerTask"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x8a

    const-string v1, "unexpected error"

    const-string v2, "unexpected error"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/Utils;->getError(ILjava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->mRequest:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/request/BasicUploadRequest;->getRequestToken()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->setRequestToken(Ljava/lang/Long;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/ContentWorkerTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
