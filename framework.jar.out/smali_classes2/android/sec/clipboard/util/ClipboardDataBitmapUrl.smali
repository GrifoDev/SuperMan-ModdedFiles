.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataBitmapUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :try_start_0
    const-string/jumbo v10, "ClipboardDataBitmapUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "url : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v10, 0xbb8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v11, -0x1

    if-gt v10, v11, :cond_1

    :cond_0
    const-string/jumbo v10, "ClipboardDataBitmapUrl"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", bitmapOption.outHeight :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v4

    :goto_1
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v0, 0x0

    move-object v9, v8

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v10, 0x0

    return-object v10

    :catch_2
    move-exception v5

    :goto_3
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v0, 0x0

    move-object v9, v8

    goto :goto_0

    :cond_1
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    :goto_4
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v10, v7

    if-lt v10, p1, :cond_2

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v10, v7

    if-lt v10, p2, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, -0x1

    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v10, 0x0

    :try_start_2
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-nez v9, :cond_3

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_5
    :try_start_3
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v10, 0xbb8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v0

    return-object v0

    :catch_3
    move-exception v4

    move-object v8, v9

    :goto_6
    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    const/4 v10, 0x0

    return-object v10

    :catch_4
    move-exception v3

    move-object v8, v9

    :goto_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v10, 0x0

    return-object v10

    :catch_5
    move-exception v5

    move-object v8, v9

    :goto_8
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v10, 0x0

    return-object v10

    :catch_6
    move-exception v5

    goto :goto_8

    :catch_7
    move-exception v3

    goto :goto_7

    :catch_8
    move-exception v4

    goto :goto_6

    :catch_9
    move-exception v5

    move-object v8, v9

    goto :goto_3

    :catch_a
    move-exception v3

    move-object v8, v9

    goto :goto_2

    :catch_b
    move-exception v4

    move-object v8, v9

    goto :goto_1

    :cond_3
    move-object v8, v9

    goto :goto_5
.end method

.method private static findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 14

    const/4 v12, -0x1

    const/4 v6, 0x0

    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    const/4 v0, -0x1

    if-eq v8, v0, :cond_1

    :try_start_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    const/4 v0, -0x1

    if-ne v12, v0, :cond_3

    if-nez v6, :cond_6

    const/4 v12, 0x0

    :cond_3
    :goto_2
    return v12

    :catch_0
    move-exception v11

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v13

    :try_start_3
    invoke-virtual {v13}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catch_2
    move-exception v10

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    :try_start_5
    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getExifOrientation(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v12

    goto :goto_2

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v12, 0x0

    goto :goto_2
.end method

.method private static getExifOrientation(Ljava/lang/String;)I
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_0

    const-string/jumbo v5, "Orientation"

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_0

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ClipboardDataBitmapUrl"

    const-string/jumbo v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, 0x0

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getResizeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    :try_start_0
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    return-object v1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    if-nez p0, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    if-lt v5, p2, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-lt v5, p3, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    return-object v7

    :cond_1
    add-int/lit8 v4, v4, -0x1

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    invoke-static {p0, p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    return-object v1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eq p0, v7, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v7

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method
