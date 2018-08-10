.class public Lcom/samsung/android/media/MotionPhotoConverter;
.super Ljava/lang/Object;
.source "MotionPhotoConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MotionPhotoConverter"

.field private static sInstance:Lcom/samsung/android/media/MotionPhotoConverter;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/media/MotionPhotoConverter;
    .locals 2

    const-class v1, Lcom/samsung/android/media/MotionPhotoConverter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/media/MotionPhotoConverter;

    invoke-direct {v0}, Lcom/samsung/android/media/MotionPhotoConverter;-><init>()V

    sput-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;

    :cond_0
    sget-object v0, Lcom/samsung/android/media/MotionPhotoConverter;->sInstance:Lcom/samsung/android/media/MotionPhotoConverter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized convertToMp4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "MotionPhoto_Data"

    invoke-static {v4, v6}, Lcom/samsung/android/media/SemExtendedFormat;->getData(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    throw v5
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v1

    move-object v2, v3

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit p0

    return-void

    :catch_1
    move-exception v5

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_3
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :goto_5
    if-eqz v5, :cond_4

    :try_start_7
    throw v5

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v6

    if-nez v5, :cond_3

    move-object v5, v6

    goto :goto_5

    :cond_3
    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v4

    :goto_6
    monitor-exit p0

    throw v4

    :cond_4
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_2
    move-exception v4

    move-object v2, v3

    goto :goto_6

    :catchall_3
    move-exception v4

    goto :goto_4

    :catchall_4
    move-exception v4

    move-object v2, v3

    goto :goto_4

    :catch_5
    move-exception v4

    move-object v2, v3

    goto :goto_3
.end method
