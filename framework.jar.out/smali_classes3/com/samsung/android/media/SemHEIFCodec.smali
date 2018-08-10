.class public Lcom/samsung/android/media/SemHEIFCodec;
.super Ljava/lang/Object;
.source "SemHEIFCodec.java"


# static fields
.field public static final ENCODING_TYPE_JPEG_SQUEEZER:I = 0x1

.field private static final IMAGE_TYPE_COVER:I = 0x0

.field private static final IMAGE_TYPE_THUMBNAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemHEIFCodec"

.field private static mLibraryLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    invoke-static {}, Lcom/samsung/android/media/SemHEIFCodec;->loadLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHEIFCodec"

    const-string/jumbo v1, "decodeFile - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    const/4 v0, 0x1

    iput v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    invoke-static {p0, p1, v1}, Lcom/samsung/android/media/SemHEIFCodec;->native_decode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getExifData(Ljava/lang/String;)[B
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHEIFCodec"

    const-string/jumbo v1, "getExifData - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/media/SemHEIFCodec;->native_getExifData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHEIFCodec"

    const-string/jumbo v1, "getThumbnail - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    if-nez p0, :cond_1

    return-object v2

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-gez v0, :cond_2

    iput v1, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_2
    invoke-static {p0, p1, v1}, Lcom/samsung/android/media/SemHEIFCodec;->native_decode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static loadLibrary()V
    .locals 4

    sget-boolean v1, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "heifcodec_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SemHEIFCodec"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to load the native library : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static native native_decode(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
.end method

.method private static native native_getExifData(Ljava/lang/String;)[B
.end method

.method private static native native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public static transcode(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/media/SemHEIFCodec;->mLibraryLoaded:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SemHEIFCodec"

    const-string/jumbo v1, "transcode - mLibraryLoaded is false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/samsung/android/media/SemHEIFCodec;->native_transcode(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
