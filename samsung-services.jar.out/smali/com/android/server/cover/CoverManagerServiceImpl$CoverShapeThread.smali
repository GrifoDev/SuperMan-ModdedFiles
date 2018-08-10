.class Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;
.super Ljava/lang/Thread;
.source "CoverManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverShapeThread"
.end annotation


# static fields
.field private static final CMD_DELAY_TIME:I = 0x5

.field private static final NUM_FOR_CMD_DATA:I = 0x8

.field private static final SMART_COVER_CMD:Ljava/lang/String; = "smartcover_cmd"

.field private static final SMART_COVER_CMD_CHANGE:Ljava/lang/String; = "6"

.field private static final SMART_COVER_CMD_CLEAR:Ljava/lang/String; = "4"

.field private static final SMART_COVER_CMD_MODEON:Ljava/lang/String; = "3"

.field private static final SMART_COVER_CMD_WRITE:Ljava/lang/String; = "5"

.field private static final SYSFS_TSP_CMD:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"


# instance fields
.field mCoverHeight:I

.field mCoverShapeArray:[B

.field mCoverWidth:I

.field mPreDefArray:[I


# direct methods
.method private constructor <init>([BII)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    iput v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mPreDefArray:[I

    sget-boolean v0, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CoverShapeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    iput p2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    iput p3, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method synthetic constructor <init>([BIILcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;-><init>([BII)V

    return-void
.end method

.method private getShapeCmdData(I)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverShapeArray:[B

    add-int v3, p1, v0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mPreDefArray:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private sleepForCmdDelay(I)V
    .locals 4

    int-to-long v2, p1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return v6

    :catch_1
    move-exception v1

    :goto_0
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    return v6

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v1

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x5

    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "CoverShapeThread : run"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    div-int/lit8 v3, v6, 0x8

    const/4 v0, 0x0

    const-string/jumbo v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,4"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "CoverShapeThread : run : smartcover_cmd,4"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverHeight:I

    if-ge v2, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smartcover_cmd,5,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget v6, p0, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->mCoverWidth:I

    mul-int/2addr v6, v2

    mul-int/lit8 v7, v1, 0x8

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->getShapeCmdData(I)I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    const-string/jumbo v6, "/sys/class/sec/tsp/cmd"

    invoke-direct {p0, v6, v5}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CoverShapeThread : run : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    :cond_4
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "/sys/class/sec/tsp/cmd"

    const-string/jumbo v7, "smartcover_cmd,6"

    invoke-direct {p0, v6, v7}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sysfsWrite(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v6, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "CoverShapeThread : run : smartcover_cmd,6"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v9}, Lcom/android/server/cover/CoverManagerServiceImpl$CoverShapeThread;->sleepForCmdDelay(I)V

    return-void
.end method
