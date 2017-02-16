.class public Lcom/samsung/android/infoextraction/SemInfoExtractionManager;
.super Ljava/lang/Object;
.source "SemInfoExtractionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$ExtractedInfoType;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;,
        Lcom/samsung/android/infoextraction/SemInfoExtractionManager$UIBundleKey;
    }
.end annotation


# static fields
.field private static final EXTRACTED_INFO_DATA:Ljava/lang/String; = "SemExtractedInfo"

.field private static final EXTRACTION_DATA_TYPE:Ljava/lang/String; = "data_type"

.field private static final EXTRACTION_REQ_DATA:Ljava/lang/String; = "req_data"

.field private static final EXTRACTION_REQ_TIME:Ljava/lang/String; = "req_time"

.field private static final MSG_EXTRACTION_CALCEL:I = 0x1ba1

.field private static final MSG_EXTRACTION_END:I = 0x1ba0

.field private static final MSG_EXTRACTION_START:I = 0x1b9f

.field private static final STRING_DATA_TYPE:I = 0x1

.field private static final STROKE_DATA_TYPE:I = 0x3

.field private static TAG:Ljava/lang/String; = null

.field private static final URI_DATA_TYPE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field public mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

.field private mInfoExtractionService:Landroid/os/IBinder;

.field public mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

.field private mRequestNumber:J


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 0
    .param p1, "InfoExtractionService"    # Landroid/os/IBinder;
    .param p2, "dataType"    # I
    .param p3, "reqObject"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "semInfoextration"

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    .line 52
    iput-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    .line 56
    iput-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    .line 58
    iput-object v2, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    .line 134
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SemInfoExtractionManager setting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-nez p1, :cond_0

    .line 136
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not get the SemInfoExtraction service. -> context is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Could not get the SemInfoExtraction service. -> context is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    sput-object p1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    .line 141
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->isPenFeatureModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemInfoExtractionManager call by : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SemInfoExtraction only use for Pen Feature models."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SemInfoExtraction only use for Pen Feature models."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bindInfoExtractionService()Z
    .locals 5

    .prologue
    .line 350
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 351
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mContext is NULL -> can\'t try to bind with InfoExtractionService! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v2, 0x0

    return v2

    .line 354
    :cond_0
    const/4 v1, 0x0

    .line 355
    .local v1, "ret":Z
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.service.hermes.InfoExtractionService"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.app.SmartClipService"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 358
    .local v1, "ret":Z
    if-nez v1, :cond_1

    .line 359
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to bind with InfoExtractionService service!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1
    return v1
.end method

.method private isPenFeatureModel(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPenFeatureModel Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    return v1
.end method

.method private requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V
    .locals 9
    .param p1, "InfoExtractionService"    # Landroid/os/IBinder;
    .param p2, "dataType"    # I
    .param p3, "reqObject"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 394
    sget-object v4, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestInfoExtraction data type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 396
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "req_time"

    iget-wide v6, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 397
    const-string/jumbo v4, "data_type"

    invoke-virtual {v0, v4, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 398
    packed-switch p2, :pswitch_data_0

    .line 409
    sget-object v4, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "can\'t make data type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local p3    # "reqObject":Ljava/lang/Object;
    :goto_0
    const/16 v4, 0x1b9f

    invoke-static {v8, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 414
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    new-instance v4, Landroid/os/Messenger;

    new-instance v5, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;

    invoke-direct {v5, p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$IncomingHandler;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;)V

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 417
    if-eqz p1, :cond_0

    .line 418
    :try_start_0
    new-instance v3, Landroid/os/Messenger;

    invoke-direct {v3, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 419
    .local v3, "requestMessenger":Landroid/os/Messenger;
    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 420
    sget-object v4, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "request Extraction : success"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v3    # "requestMessenger":Landroid/os/Messenger;
    :goto_1
    return-void

    .line 400
    .end local v2    # "message":Landroid/os/Message;
    .restart local p3    # "reqObject":Ljava/lang/Object;
    :pswitch_0
    const-string/jumbo v4, "req_data"

    check-cast p3, Ljava/lang/String;

    .end local p3    # "reqObject":Ljava/lang/Object;
    invoke-virtual {v0, v4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    .restart local p3    # "reqObject":Ljava/lang/Object;
    :pswitch_1
    const-string/jumbo v4, "req_data"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :pswitch_2
    const-string/jumbo v4, "req_data"

    check-cast p3, Ljava/util/ArrayList;

    .end local p3    # "reqObject":Ljava/lang/Object;
    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 422
    .restart local v2    # "message":Landroid/os/Message;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "request Extraction : InfoExtractionService is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 424
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 398
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRequestNumber()V
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    .line 266
    return-void
.end method

.method private startExtraction(ILjava/lang/Object;)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "reqObject"    # Ljava/lang/Object;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 366
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mConnection is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager$1;-><init>(Lcom/samsung/android/infoextraction/SemInfoExtractionManager;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mConnection:Landroid/content/ServiceConnection;

    .line 379
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : Binding to InfoExtractionService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    .line 364
    :goto_0
    return-void

    .line 382
    :cond_0
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mConnection is not NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    if-nez v0, :cond_1

    .line 384
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mInfoExtractionService == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->bindInfoExtractionService()Z

    goto :goto_0

    .line 387
    :cond_1
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mInfoExtractionService != null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionService:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->requestInfoExtraction(Landroid/os/IBinder;ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addResultRule(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addResultRule doesn\'t support in this version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public extract(Landroid/net/Uri;)J
    .locals 2
    .param p1, "requestUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    const-wide/16 v0, -0x1

    return-wide v0

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 222
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 223
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public extract(Lcom/samsung/android/infoextraction/SemStrokeData;)J
    .locals 2
    .param p1, "requestSemStrokeData"    # Lcom/samsung/android/infoextraction/SemStrokeData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 241
    const-wide/16 v0, -0x1

    return-wide v0

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 244
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 245
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public extract(Ljava/lang/String;)J
    .locals 2
    .param p1, "requestString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-wide/16 v0, -0x1

    return-wide v0

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 205
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public extract(Ljava/util/ArrayList;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/infoextraction/SemStrokeData;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "requestSemStrokeDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/infoextraction/SemStrokeData;>;"
    if-nez p1, :cond_0

    .line 259
    const-wide/16 v0, -0x1

    return-wide v0

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->setRequestNumber()V

    .line 262
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->startExtraction(ILjava/lang/Object;)V

    .line 263
    iget-wide v0, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mRequestNumber:J

    return-wide v0
.end method

.method public hideLinkPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 312
    :try_start_0
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "hideLinkPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.app.SmartClipService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string/jumbo v2, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string/jumbo v2, "dismiss"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setInfoExtractionListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;)V
    .locals 2
    .param p1, "infoExtractionListener"    # Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "infoExtractionListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "infoExtractionListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mInfoExtractionListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$InfoExtractionListener;

    .line 169
    return-void
.end method

.method public setOnExtractionCompletedListener(Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;)V
    .locals 2
    .param p1, "onExtractionCompletedListener"    # Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onExtractionCompletedListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "onExtractionCompletedListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mOnExtractionCompletedListener:Lcom/samsung/android/infoextraction/SemInfoExtractionManager$OnExtractionCompletedListener;

    .line 182
    return-void
.end method

.method public showLinkPreview(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "urlStr"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "urlStr is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_0
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "infoExtractionListener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_0
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showLinkPreview"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.app.SmartClipService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string/jumbo v2, "com.samsung.android.service.hermes.HermesTickerService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v2, "contents"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v2, "position"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    const-string/jumbo v2, "dismiss"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    sget-object v2, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public training(Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/samsung/android/infoextraction/SemInfoExtractionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "training doesn\'t support in this version"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-void
.end method
