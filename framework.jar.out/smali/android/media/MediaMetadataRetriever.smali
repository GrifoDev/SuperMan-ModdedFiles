.class public Landroid/media/MediaMetadataRetriever;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# static fields
.field private static final EMBEDDED_PICTURE_TYPE_ANY:I = 0xffff

.field public static final METADATA_KEY_ALBUM:I = 0x1

.field public static final METADATA_KEY_ALBUMARTIST:I = 0xd

.field public static final METADATA_KEY_ARTIST:I = 0x2

.field public static final METADATA_KEY_AUTHOR:I = 0x3

.field public static final METADATA_KEY_BITRATE:I = 0x14

.field public static final METADATA_KEY_CAPTURE_FRAMERATE:I = 0x19

.field public static final METADATA_KEY_CD_TRACK_NUMBER:I = 0x0

.field public static final METADATA_KEY_COMPILATION:I = 0xf

.field public static final METADATA_KEY_COMPOSER:I = 0x4

.field public static final METADATA_KEY_DATE:I = 0x5

.field public static final METADATA_KEY_DISC_NUMBER:I = 0xe

.field public static final METADATA_KEY_DURATION:I = 0x9

.field public static final METADATA_KEY_GENRE:I = 0x6

.field public static final METADATA_KEY_HAS_AUDIO:I = 0x10

.field public static final METADATA_KEY_HAS_VIDEO:I = 0x11

.field public static final METADATA_KEY_IS_DRM:I = 0x16

.field public static final METADATA_KEY_LOCATION:I = 0x17

.field public static final METADATA_KEY_MIMETYPE:I = 0xc

.field public static final METADATA_KEY_NUM_TRACKS:I = 0xa

.field public static final METADATA_KEY_TIMED_TEXT_LANGUAGES:I = 0x15

.field public static final METADATA_KEY_TITLE:I = 0x7

.field public static final METADATA_KEY_VIDEO_HEIGHT:I = 0x13

.field public static final METADATA_KEY_VIDEO_ROTATION:I = 0x18

.field public static final METADATA_KEY_VIDEO_WIDTH:I = 0x12

.field public static final METADATA_KEY_WRITER:I = 0xb

.field public static final METADATA_KEY_YEAR:I = 0x8

.field public static final OPTION_CLOSEST:I = 0x3

.field public static final OPTION_CLOSEST_SYNC:I = 0x2

.field public static final OPTION_NEXT_SYNC:I = 0x1

.field public static final OPTION_PREVIOUS_SYNC:I = 0x0

.field public static final SEM_CONFIG_COLOR_ARGB8888:I = 0x1

.field public static final SEM_CONFIG_COLOR_RGB565:I = 0x0

.field public static final SEM_METADATA_KEY_360VIDEO:I = 0x3fd

.field public static final SEM_METADATA_KEY_3DVIDEOTYPE:I = 0x3fa

.field public static final SEM_METADATA_KEY_ALBUMARTIST_ASCII:I = 0x3f1

.field public static final SEM_METADATA_KEY_ALBUM_ASCII:I = 0x3e9

.field public static final SEM_METADATA_KEY_ARTIST_ASCII:I = 0x3ea

.field public static final SEM_METADATA_KEY_AUDIOCODECINFO:I = 0x401

.field public static final SEM_METADATA_KEY_AUTHORIZATION:I = 0x3f7

.field public static final SEM_METADATA_KEY_AUTHOR_ASCII:I = 0x3eb

.field public static final SEM_METADATA_KEY_BITS_PER_SAMPLE:I = 0x3fc

.field public static final SEM_METADATA_KEY_CITYID:I = 0x3f9

.field public static final SEM_METADATA_KEY_COMPOSER_ASCII:I = 0x3ec

.field public static final SEM_METADATA_KEY_CREATIONTIME:I = 0x402

.field public static final SEM_METADATA_KEY_DATE_ASCII:I = 0x3ed

.field public static final SEM_METADATA_KEY_GENRE_ASCII:I = 0x3ee

.field public static final SEM_METADATA_KEY_MULTI_AUDIO_CHANNELS:I = 0x3f4

.field public static final SEM_METADATA_KEY_MULTI_AUDIO_LANGUAGES:I = 0x3f3

.field public static final SEM_METADATA_KEY_NUM_AUDIO_TRACKS:I = 0x3f2

.field public static final SEM_METADATA_KEY_NUM_TEXT_TRACKS:I = 0x3f5

.field public static final SEM_METADATA_KEY_RECORDINGMODE:I = 0x3fe

.field public static final SEM_METADATA_KEY_SAMPLING_RATE:I = 0x3fb

.field public static final SEM_METADATA_KEY_SLOWVIDEOINFO:I = 0x3ff

.field public static final SEM_METADATA_KEY_TITLE_ASCII:I = 0x3ef

.field public static final SEM_METADATA_KEY_VIDEOCODECINFO:I = 0x400

.field public static final SEM_METADATA_KEY_VIDEOSNAPSHOT:I = 0x3f8

.field public static final SEM_METADATA_KEY_WEATHER:I = 0x3f6

.field public static final SEM_METADATA_KEY_WRITER_ASCII:I = 0x3f0

.field public static final SEM_OPTION_HW_CODEC:I = 0x0

.field public static final SEM_OPTION_SW_CODEC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MediaMetadataRetriever"


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/media/MediaMetadataRetriever;->native_init()V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_setup()V

    .line 56
    return-void
.end method

.method private native _getFrameAtTime(JI)Landroid/graphics/Bitmap;
.end method

.method private native _setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native _setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native detailedThumbnailMode(ZI)V
.end method

.method private native getEmbeddedPicture(I)[B
.end method

.method private final native native_finalize()V
.end method

.method private static native native_init()V
.end method

.method private native native_setup()V
.end method


# virtual methods
.method public native extractMetadata(I)Ljava/lang/String;
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 446
    :try_start_0
    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 444
    return-void

    .line 447
    :catchall_0
    move-exception v0

    .line 448
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 447
    throw v0
.end method

.method public getEmbeddedPicture()[B
    .locals 1

    .prologue
    .line 428
    const v0, 0xffff

    invoke-direct {p0, v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 378
    const-wide/16 v0, -0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(J)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "timeUs"    # J

    .prologue
    .line 360
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameAtTime(JI)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "option"    # I

    .prologue
    .line 275
    if-ltz p3, :cond_0

    .line 276
    const/4 v0, 0x3

    if-le p3, v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public native release()V
.end method

.method public semGetFrameAtTime(JII)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "option"    # I
    .param p4, "config"    # I

    .prologue
    const/4 v1, 0x1

    .line 324
    if-ltz p3, :cond_0

    .line 325
    const/4 v0, 0x3

    if-le p3, v0, :cond_1

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    if-ltz p4, :cond_2

    .line 329
    if-le p4, v1, :cond_3

    .line 330
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported color format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_3
    if-ne p4, v1, :cond_4

    .line 334
    add-int/lit8 p3, p3, 0x10

    .line 336
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->_getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public semResetDetailedThumbnailMode()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, v0, v0}, Landroid/media/MediaMetadataRetriever;->detailedThumbnailMode(ZI)V

    .line 416
    return-void
.end method

.method public semSetDetailedThumbnailMode(I)V
    .locals 1
    .param p1, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/media/MediaMetadataRetriever;->detailedThumbnailMode(ZI)V

    .line 406
    return-void
.end method

.method public native semSetVideoSize(IIZZ)V
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 168
    if-nez p2, :cond_0

    .line 169
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource - uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    .line 174
    .local v11, "scheme":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string/jumbo v0, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 176
    return-void

    .line 179
    :cond_2
    const/4 v8, 0x0

    .line 181
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 183
    .local v10, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string/jumbo v0, "r"

    invoke-virtual {v10, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 188
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_5

    .line 189
    :try_start_2
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource - fd is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    .line 209
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_3

    .line 210
    :try_start_3
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 216
    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 167
    return-void

    .line 184
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :catch_1
    move-exception v6

    .line 185
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource - FileNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v0

    .line 209
    if-eqz v8, :cond_4

    .line 210
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 207
    :cond_4
    :goto_1
    throw v0

    .line 192
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "resolver":Landroid/content/ContentResolver;
    :cond_5
    :try_start_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 193
    .local v1, "descriptor":Ljava/io/FileDescriptor;
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource -descriptor is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 200
    :cond_6
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_8

    .line 201
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    :goto_2
    if-eqz v8, :cond_7

    .line 210
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 205
    :cond_7
    :goto_3
    return-void

    .line 203
    :cond_8
    :try_start_8
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 212
    :catch_2
    move-exception v9

    .line 213
    .local v9, "ioEx":Ljava/io/IOException;
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource -descriptor is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 212
    .end local v1    # "descriptor":Ljava/io/FileDescriptor;
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "ioEx":Ljava/io/IOException;
    .end local v10    # "resolver":Landroid/content/ContentResolver;
    .restart local v7    # "ex":Ljava/lang/SecurityException;
    :catch_3
    move-exception v9

    .line 213
    .restart local v9    # "ioEx":Ljava/io/IOException;
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource -descriptor is not valid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    .end local v7    # "ex":Ljava/lang/SecurityException;
    .end local v9    # "ioEx":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 213
    .restart local v9    # "ioEx":Ljava/io/IOException;
    const-string/jumbo v2, "MediaMetadataRetriever"

    const-string/jumbo v3, "setDataSource -descriptor is not valid"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setDataSource(Landroid/media/MediaDataSource;)V
    .locals 0
    .param p1, "dataSource"    # Landroid/media/MediaDataSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0, p1}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/media/MediaDataSource;)V

    .line 225
    return-void
.end method

.method public setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 153
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 151
    return-void
.end method

.method public native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource path is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_0
    const/4 v9, 0x0

    .line 76
    .local v9, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v10, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .end local v9    # "is":Ljava/io/FileInputStream;
    move-result-object v1

    .line 78
    .local v1, "fd":Ljava/io/FileDescriptor;
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 88
    if-eqz v10, :cond_1

    .line 89
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 82
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v8

    .line 83
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v8, "ioEx":Ljava/io/IOException;
    :goto_1
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource - IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    .end local v8    # "ioEx":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v7

    .line 80
    .end local v9    # "is":Ljava/io/FileInputStream;
    .local v7, "fileEx":Ljava/io/FileNotFoundException;
    :goto_2
    const-string/jumbo v0, "MediaMetadataRetriever"

    const-string/jumbo v2, "setDataSource - FileNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 91
    .end local v7    # "fileEx":Ljava/io/FileNotFoundException;
    .restart local v1    # "fd":Ljava/io/FileDescriptor;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 79
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .restart local v7    # "fileEx":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .local v9, "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 82
    .end local v7    # "fileEx":Ljava/io/FileNotFoundException;
    .end local v9    # "is":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v8

    .restart local v8    # "ioEx":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "is":Ljava/io/FileInputStream;
    .restart local v9    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 106
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 107
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 108
    .local v4, "values":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 109
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v2

    .line 110
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 114
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaMetadataRetriever;->_setDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 104
    return-void
.end method
