.class public Lcom/android/incallui/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mIsCenterCrop:Z

.field private mIsPlay:Z

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private final mMovie:Landroid/graphics/Movie;

.field private mNeedUpdates:Z

.field private mPosition:Landroid/graphics/PointF;

.field private mScale:F

.field private mUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GifDrawable"

    sput-object v0, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Movie;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mPosition:Landroid/graphics/PointF;

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    iput-object p1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mNeedUpdates:Z

    invoke-virtual {p0}, Lcom/android/incallui/gif/GifDrawable;->centerCrop()V

    return-void
.end method

.method public static getMovie(Landroid/content/Context;I)Landroid/graphics/Movie;
    .locals 3

    const/16 v2, 0x2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/gif/GifDrawable;->getMovie(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Movie;

    move-result-object v0

    return-object v0
.end method

.method public static getMovie(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Movie;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    sget-object v2, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getMovie : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v0, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    sget-object v1, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method public static getMovie(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Movie;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_4
    sget-object v2, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getMovie : IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    sget-object v0, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    sget-object v1, Lcom/android/incallui/gif/GifDrawable;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getMovie : IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_2
.end method

.method private updateProperties(II)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mNeedUpdates:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMeasureWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMeasureHeight:I

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mNeedUpdates:Z

    iput p1, p0, Lcom/android/incallui/gif/GifDrawable;->mMeasureWidth:I

    iput p2, p0, Lcom/android/incallui/gif/GifDrawable;->mMeasureHeight:I

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    if-eqz v0, :cond_1

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    :goto_1
    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mPosition:Landroid/graphics/PointF;

    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mPosition:Landroid/graphics/PointF;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    mul-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    goto :goto_1
.end method


# virtual methods
.method public centerCrop()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    iput-boolean v1, p0, Lcom/android/incallui/gif/GifDrawable;->mNeedUpdates:Z

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->duration()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/gif/GifDrawable;->updateProperties(II)V

    iget v0, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    iget v1, p0, Lcom/android/incallui/gif/GifDrawable;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    iget-object v1, p0, Lcom/android/incallui/gif/GifDrawable;->mPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/incallui/gif/GifDrawable;->mPosition:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/gif/GifDrawable;->invalidateSelf()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/gif/GifDrawable;->mMovie:Landroid/graphics/Movie;

    iget-wide v2, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    goto :goto_0
.end method

.method public fitCenter()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsCenterCrop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mNeedUpdates:Z

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    invoke-virtual {p0}, Lcom/android/incallui/gif/GifDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/incallui/gif/GifDrawable;->mUptimeMillis:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/gif/GifDrawable;->mIsPlay:Z

    invoke-virtual {p0}, Lcom/android/incallui/gif/GifDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
