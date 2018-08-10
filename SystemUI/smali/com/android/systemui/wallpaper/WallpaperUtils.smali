.class public Lcom/android/systemui/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;,
        Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;
    }
.end annotation


# static fields
.field private static mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

.field private static mCroppedScale:F

.field private static mCurClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

.field private static mIsAdaptiveColorMode:Z

.field private static mIsDesktopMode:Z

.field private static mIsEmergencyMode:Z

.field private static mIsOperatorWallpaper:Z

.field private static mIsUltraPowerSavingMode:Z

.field private static mIsVerticalClock:Z

.field public static mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    sget-object v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;->None:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCurClockType:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$InternalClockType;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    sput-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIfNotThemeTypeDirectly(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v2, "WallpaperUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SWP type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/io/FileDescriptor;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v9

    :cond_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x0

    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    :goto_0
    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {v3, v0, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v4, v5

    move-object v2, v3

    :goto_1
    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    move-object v9, v8

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_4
    move-object v8, v9

    :cond_5
    :goto_4
    if-eqz v8, :cond_b

    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    :goto_5
    const-string/jumbo v7, "WallpaperUtils"

    const-string/jumbo v8, "Can not copy to file."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v7, 0x1

    return v7

    :cond_6
    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_8
    move-object v7, v8

    :cond_9
    :goto_8
    if-eqz v7, :cond_a

    :try_start_9
    throw v7

    :catch_2
    move-exception v1

    move-object v4, v5

    move-object v2, v3

    goto :goto_5

    :catch_3
    move-exception v8

    goto :goto_7

    :catch_4
    move-exception v7

    if-eqz v8, :cond_9

    if-eq v8, v7, :cond_8

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v7, v8

    goto :goto_8

    :cond_a
    move-object v4, v5

    move-object v2, v3

    goto :goto_6

    :catch_5
    move-exception v9

    if-eqz v8, :cond_3

    if-eq v8, v9, :cond_2

    :try_start_a
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v8

    goto :goto_3

    :catch_6
    move-exception v8

    if-eqz v9, :cond_5

    if-eq v9, v8, :cond_4

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v9

    goto :goto_4

    :cond_b
    throw v7
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catchall_1
    move-exception v7

    goto :goto_2

    :catchall_2
    move-exception v7

    move-object v2, v3

    goto :goto_2

    :catchall_3
    move-exception v7

    move-object v4, v5

    move-object v2, v3

    goto :goto_2

    :catch_7
    move-exception v7

    goto :goto_1

    :catch_8
    move-exception v7

    move-object v2, v3

    goto :goto_1
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "WallpaperUtils : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  Emergency mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  UltraPowerSavingMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  ExternalLiveWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  NotKWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  KWPType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  DeXMode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "  InfinityWallpaper: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  InfinityName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "  main color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  secondary color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  main bg color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  secondary bg color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  bottom color: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v0, v0, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :goto_0
    const-string/jumbo v0, "  mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_1
    const-string/jumbo v0, "  colors: empty"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static getAdaptiveColorMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    return v0
.end method

.method public static getAdaptiveColorValue(Landroid/content/Context;)Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSupportAdaptiveColor(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WallpaperUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set color main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", secondary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_main="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_main:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bg_secondary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bg_secondary:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    iget v2, v2, Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;->color_bottom_area:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-object v0

    :cond_0
    const-string/jumbo v0, "WallpaperUtils"

    const-string/jumbo v1, "getAdaptiveColorValue color is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getCroppedScaled()F
    .locals 1

    sget v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return v0
.end method

.method public static getDefaultColorCodeFromResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "black"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getEmergencyMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return v0
.end method

.method public static getFileExt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFileNameWithoutExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/WallpaperManager;->parseInfinityColorInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    return-object v5
.end method

.method public static getOperatorWallpaper()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    return v0
.end method

.method public static getOutputVideoResolution(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 12

    const/16 v9, 0x280

    const/16 v8, 0x1e0

    const/4 v10, 0x0

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v9, v8}, Landroid/graphics/Point;-><init>(II)V

    iput v9, v6, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    invoke-virtual {v5, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v8, 0x12

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    invoke-virtual {v5, v8}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v3, 0x0

    const/4 v8, 0x2

    invoke-static {v8, v10}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getRemainedVideoCapacity()I

    move-result v4

    iget v8, v6, Landroid/graphics/Point;->x:I

    if-lez v8, :cond_3

    iget v8, v6, Landroid/graphics/Point;->y:I

    if-lez v8, :cond_3

    int-to-float v8, v4

    iget v9, v6, Landroid/graphics/Point;->x:I

    iget v10, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    div-float v3, v8, v9

    :goto_1
    const-string/jumbo v8, "WallpaperUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remained size : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", video ratio : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v8, v3

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    float-to-double v8, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iput v8, v6, Landroid/graphics/Point;->y:I

    :cond_0
    iget v8, v6, Landroid/graphics/Point;->x:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    iget v8, v6, Landroid/graphics/Point;->x:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroid/graphics/Point;->x:I

    :cond_1
    iget v8, v6, Landroid/graphics/Point;->y:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    iget v8, v6, Landroid/graphics/Point;->y:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v6, Landroid/graphics/Point;->y:I

    :cond_2
    return-object v6

    :catch_0
    move-exception v1

    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_2
    throw v8

    :catch_3
    move-exception v1

    const-string/jumbo v9, "WallpaperUtils"

    const-string/jumbo v10, "Need to check about Exception in getOuputVideoResolution"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string/jumbo v8, "WallpaperUtils"

    const-string/jumbo v9, "Can\'t Trim videofile"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static getUltraPowerSavingMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return v0
.end method

.method public static getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "WallpaperUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getVideoFDFromPackage() pkgName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-object v7

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-nez v3, :cond_2

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "getVideoFDFromPackage() otherContext is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catch_0
    move-exception v1

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "Can not found package name"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "getVideoFDFromPackage() assetManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_3
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    return-object v4

    :catch_1
    move-exception v2

    const-string/jumbo v4, "WallpaperUtils"

    const-string/jumbo v5, "Can not access to openFd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method public static isChangedInfinityName(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getInfinityWallpaperName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "infinity name previous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v3, v3, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return v4

    :cond_1
    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->infinityName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    return v4
.end method

.method public static isDexMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return v0
.end method

.method public static isExternalLiveWallpaper(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_wallpaper"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2}, Landroid/app/WallpaperManager;->isExternalLiveWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "WallpaperUtils"

    const-string/jumbo v4, "external live wallpaper is true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "WallpaperUtils"

    const-string/jumbo v4, "Setting value about lockscreen_wallpaper not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v6
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static isLockType(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-ne p0, v2, :cond_2

    :cond_1
    return v2

    :cond_2
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_1

    return v1
.end method

.method public static isSupportAdaptiveColor(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    const-string/jumbo v1, "WallpaperUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", theme="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", emergency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", upsm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isExternalLiveWallpaper:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isNotSupportedKWPType:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isInfinityWallpaper:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-boolean v1, v1, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;->isSupportedKWPType:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static isVerticalClock()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsVerticalClock:Z

    return v0
.end method

.method public static renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setAdaptiveColorMode(Landroid/content/Context;Z)V
    .locals 4

    const/4 v1, 0x0

    sput-boolean p1, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsAdaptiveColorMode:Z

    const-string/jumbo v0, "lockscreen_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "9010"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "lockscreen_pref"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "9009"

    const-string/jumbo v2, "Adaptive color (Default)"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected static setAdaptiveColors(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .locals 0

    sput-object p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mAdaptiveColors:Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    return-void
.end method

.method public static setCroppedScaled(F)V
    .locals 0

    sput p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mCroppedScale:F

    return-void
.end method

.method public static setDexMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsDesktopMode:Z

    return-void
.end method

.method public static setEmergencyMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    return-void
.end method

.method public static setOperatorWallpaper(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsOperatorWallpaper:Z

    return-void
.end method

.method public static setUltraPowerSavingMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    return-void
.end method
