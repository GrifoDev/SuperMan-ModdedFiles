.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardDataBitmapUrl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "urlname"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 82
    const/4 v8, 0x0

    .line 83
    .local v8, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 84
    .local v0, "Result":Landroid/graphics/Bitmap;
    const/4 v7, 0x2

    .line 86
    .local v7, "sampleSize":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 87
    .local v1, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 90
    const/4 v10, 0x1

    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 94
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

    .line 95
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v8    # "url":Ljava/net/URL;
    .local v9, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 98
    .local v2, "connection":Ljava/net/URLConnection;
    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 99
    const/16 v10, 0xbb8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 100
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 102
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    invoke-static {v6, v10, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v0

    .line 114
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    :goto_0
    if-eqz v1, :cond_1

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v11, -0x1

    if-gt v10, v11, :cond_1

    .line 115
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

    .line 116
    return-object v0

    .line 109
    .end local v9    # "url":Ljava/net/URL;
    .restart local v0    # "Result":Landroid/graphics/Bitmap;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 110
    .end local v8    # "url":Ljava/net/URL;
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    const/4 v0, 0x0

    move-object v9, v8

    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_0

    .line 106
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 107
    .end local v8    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const/4 v10, 0x0

    return-object v10

    .line 103
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "url":Ljava/net/URL;
    :catch_2
    move-exception v5

    .line 104
    .end local v8    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/net/MalformedURLException;
    :goto_3
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const/4 v0, 0x0

    move-object v9, v8

    .restart local v9    # "url":Ljava/net/URL;
    goto :goto_0

    .line 114
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_1
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 119
    :goto_4
    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v10, v7

    if-lt v10, p1, :cond_2

    iget v10, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v10, v7

    if-lt v10, p2, :cond_2

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 122
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 123
    iput v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 126
    const/4 v10, 0x0

    :try_start_2
    iput-boolean v10, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 128
    if-nez v9, :cond_3

    .line 129
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .end local v9    # "url":Ljava/net/URL;
    .local v8, "url":Ljava/net/URL;
    :goto_5
    :try_start_3
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 132
    .restart local v2    # "connection":Ljava/net/URLConnection;
    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 133
    const/16 v10, 0xbb8

    invoke-virtual {v2, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 134
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 136
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    const/4 v10, 0x0

    invoke-static {v6, v10, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v0

    .line 148
    .local v0, "Result":Landroid/graphics/Bitmap;
    return-object v0

    .line 143
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .end local v2    # "connection":Ljava/net/URLConnection;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    move-object v8, v9

    .line 144
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    const/4 v10, 0x0

    return-object v10

    .line 140
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .line 141
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    const/4 v10, 0x0

    return-object v10

    .line 137
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_5
    move-exception v5

    .restart local v5    # "e":Ljava/net/MalformedURLException;
    move-object v8, v9

    .line 138
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_8
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    const/4 v10, 0x0

    return-object v10

    .line 137
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/net/MalformedURLException;
    goto :goto_8

    .line 140
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    goto :goto_6

    .line 103
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "url":Ljava/net/URL;
    .local v0, "Result":Landroid/graphics/Bitmap;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Ljava/net/MalformedURLException;
    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_3

    .line 106
    .end local v5    # "e":Ljava/net/MalformedURLException;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_a
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_2

    .line 109
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_b
    move-exception v4

    .restart local v4    # "e":Ljava/lang/OutOfMemoryError;
    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_1

    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_5
.end method

.method private static findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 14
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, -0x1

    .line 232
    const/4 v11, -0x1

    .line 233
    .local v11, "orientation":I
    const/4 v6, 0x0

    .line 235
    .local v6, "_data":Ljava/lang/String;
    const-string/jumbo v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 236
    const/4 v7, 0x0

    .line 239
    .local v7, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 240
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const-string/jumbo v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 243
    .local v8, "columnIdx":I
    if-eq v8, v13, :cond_0

    .line 244
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 248
    .end local v6    # "_data":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 249
    if-eq v8, v13, :cond_1

    .line 251
    :try_start_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 259
    .end local v8    # "columnIdx":I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 260
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 267
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-ne v11, v13, :cond_3

    .line 268
    if-nez v6, :cond_6

    .line 269
    const/4 v11, 0x0

    .line 279
    :cond_3
    :goto_2
    return v11

    .line 252
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "columnIdx":I
    :catch_0
    move-exception v10

    .line 253
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 256
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "columnIdx":I
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v12

    .line 257
    .local v12, "sqle":Landroid/database/SQLException;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v7, :cond_2

    .line 260
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 258
    .end local v12    # "sqle":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 259
    if-eqz v7, :cond_4

    .line 260
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_4
    throw v0

    .line 263
    .restart local v6    # "_data":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .local v6, "_data":Ljava/lang/String;
    goto :goto_1

    .line 272
    .end local v6    # "_data":Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getExifOrientation(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v11

    goto :goto_2

    .line 273
    :catch_2
    move-exception v9

    .line 274
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    const/4 v11, 0x0

    goto :goto_2
.end method

.method private static getExifOrientation(Ljava/lang/String;)I
    .locals 7
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 286
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 290
    .end local v3    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 292
    const-string/jumbo v5, "Orientation"

    .line 291
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 293
    .local v4, "orientation":I
    if-eq v4, v6, :cond_0

    .line 295
    packed-switch v4, :pswitch_data_0

    .line 308
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 287
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 297
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "exif":Landroid/media/ExifInterface;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 298
    goto :goto_1

    .line 300
    :pswitch_2
    const/16 v0, 0xb4

    .line 301
    goto :goto_1

    .line 303
    :pswitch_3
    const/16 v0, 0x10e

    .line 304
    goto :goto_1

    .line 295
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
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 154
    const/4 v3, 0x2

    .line 155
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 157
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 163
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 167
    :try_start_0
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_1

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .local v1, "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "ClipboardDataBitmapUrl"

    const-string/jumbo v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    const/4 v4, 0x0

    return-object v4

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 179
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 182
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 187
    :goto_1
    return-object v1

    .line 184
    :catch_1
    move-exception v2

    .line 185
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getResizeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 51
    const/4 v3, 0x2

    .line 52
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 53
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 54
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 58
    :try_start_0
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_0

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .local v1, "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    const/4 v4, 0x0

    return-object v4

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 68
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 71
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 76
    :goto_1
    return-object v1

    .line 73
    :catch_1
    move-exception v2

    .line 74
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 191
    const/4 v4, 0x2

    .line 192
    .local v4, "sampleSize":I
    const/4 v1, 0x0

    .line 194
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 195
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 196
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 198
    if-nez p0, :cond_0

    .line 199
    return-object v7

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    .local v1, "bm":Landroid/graphics/Bitmap;
    :goto_0
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    if-lt v5, p2, :cond_1

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-lt v5, p3, :cond_1

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 204
    .local v1, "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    return-object v7

    .line 212
    .end local v3    # "e":Ljava/lang/Exception;
    .local v1, "bm":Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 214
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 217
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 223
    :goto_1
    invoke-static {p0, p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 224
    .local v2, "degree":I
    if-eqz v2, :cond_2

    .line 225
    invoke-static {v1, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    :cond_2
    return-object v1

    .line 219
    .end local v2    # "degree":I
    :catch_1
    move-exception v3

    .line 220
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 312
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 313
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 314
    .local v5, "m":Landroid/graphics/Matrix;
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

    .line 317
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

    .line 318
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    move-object p0, v7

    .line 326
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 322
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 323
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
