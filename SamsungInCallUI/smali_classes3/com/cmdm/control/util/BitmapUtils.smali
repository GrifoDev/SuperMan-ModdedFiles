.class public Lcom/cmdm/control/util/BitmapUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Y(Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 297
    const/16 v2, 0x1000

    .line 301
    .local v2, "BUFFER":I
    const/4 v6, 0x0

    .line 302
    .local v6, "dest":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 303
    .local v13, "fis":Ljava/io/FileInputStream;
    new-instance v18, Ljava/util/zip/ZipInputStream;

    .line 304
    new-instance v19, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 303
    invoke-direct/range {v18 .. v19}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v18, "zis":Ljava/util/zip/ZipInputStream;
    move-object v7, v6

    .line 306
    .end local v6    # "dest":Ljava/io/BufferedOutputStream;
    .local v7, "dest":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    .local v8, "entry":Ljava/util/zip/ZipEntry;
    if-nez v8, :cond_0

    .line 331
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 345
    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_1
    return-void

    .line 309
    .restart local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_2
    const-string v19, "Unzip: "

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-array v5, v2, [B

    .line 312
    .local v5, "data":[B
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v16

    .line 314
    .local v16, "strEntry":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    .local v10, "entryFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .local v9, "entryDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_1

    .line 317
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 320
    :cond_1
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 321
    .local v14, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v14, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 322
    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "dest":Ljava/io/BufferedOutputStream;
    :goto_2
    const/16 v19, 0x0

    :try_start_3
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v3

    .local v3, "count":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_2

    .line 325
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 326
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    move-object v7, v6

    .end local v6    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v7    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 323
    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "dest":Ljava/io/BufferedOutputStream;
    :cond_2
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v5, v0, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 327
    .end local v3    # "count":I
    :catch_0
    move-exception v11

    .line 328
    .end local v5    # "data":[B
    .end local v9    # "entryDir":Ljava/io/File;
    .end local v10    # "entryFile":Ljava/io/File;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "strEntry":Ljava/lang/String;
    .local v11, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v6

    .end local v6    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v7    # "dest":Ljava/io/BufferedOutputStream;
    goto/16 :goto_0

    .line 332
    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .end local v8    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "ex":Ljava/lang/Exception;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "dest":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v4

    .line 333
    .local v4, "cwj":Ljava/lang/Exception;
    :goto_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "number_attribution.db"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 334
    .local v15, "path":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 336
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 338
    :cond_3
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v17, "z_file":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 340
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 343
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 332
    .end local v4    # "cwj":Ljava/lang/Exception;
    .end local v6    # "dest":Ljava/io/BufferedOutputStream;
    .end local v12    # "file":Ljava/io/File;
    .end local v15    # "path":Ljava/lang/String;
    .end local v17    # "z_file":Ljava/io/File;
    .restart local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v18    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_2
    move-exception v4

    move-object v6, v7

    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_4

    .line 327
    .end local v6    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v8    # "entry":Ljava/util/zip/ZipEntry;
    :catch_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "dest":Ljava/io/BufferedOutputStream;
    .restart local v6    # "dest":Ljava/io/BufferedOutputStream;
    goto :goto_3
.end method

.method private static a(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 437
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 438
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 439
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 441
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 443
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 452
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 440
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 439
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 442
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 441
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 447
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 448
    goto :goto_2

    .line 449
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 452
    goto :goto_2
.end method

.method private static c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x42c80000    # 100.0f

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 212
    .local v3, "dw":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 213
    .local v4, "dh":I
    int-to-float v0, v3

    div-float v9, v2, v0

    .line 214
    .local v9, "scaleWidth":F
    int-to-float v0, v4

    div-float v8, v2, v0

    .line 215
    .local v8, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 218
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 220
    .local v7, "newbm":Landroid/graphics/Bitmap;
    return-object v7
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    .line 421
    invoke-static {p0, p1, p2}, Lcom/cmdm/control/util/BitmapUtils;->a(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 424
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 425
    const/4 v1, 0x1

    .line 426
    .local v1, "roundedSize":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 432
    :goto_1
    return v1

    .line 427
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v1    # "roundedSize":I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1    # "roundedSize":I
    goto :goto_1
.end method

.method public static decodeBitmapFive(Ljava/io/FileInputStream;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fs"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v5, 0x1

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 157
    .local v1, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 158
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 159
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 160
    const/4 v4, 0x2

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 161
    const v4, 0x8000

    new-array v4, v4, [B

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 164
    if-eqz p0, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 174
    :cond_0
    if-eqz p0, :cond_1

    .line 176
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 183
    :cond_1
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v3

    .line 171
    .local v3, "e1":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    const/4 v0, 0x0

    .line 174
    if-eqz p0, :cond_1

    .line 176
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 177
    :catch_1
    move-exception v2

    .line 179
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 174
    if-eqz p0, :cond_2

    .line 176
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 182
    :cond_2
    :goto_1
    throw v4

    .line 177
    :catch_2
    move-exception v2

    .line 179
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 179
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeBitmapFive(Ljava/io/FileInputStream;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "fs"    # Ljava/io/FileInputStream;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 86
    .local v7, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 87
    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 88
    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 89
    const v4, 0x8000

    new-array v4, v4, [B

    iput-object v4, v7, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 92
    if-eqz p0, :cond_0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v4, v12, v7}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    :cond_0
    if-eqz p0, :cond_1

    .line 103
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :cond_1
    :goto_0
    if-le p1, p2, :cond_3

    move v3, p2

    .line 112
    .local v3, "wh":I
    :goto_1
    if-le p1, p2, :cond_4

    sub-int v4, p1, p2

    div-int/lit8 v1, v4, 0x2

    .line 113
    .local v1, "retX":I
    :goto_2
    if-le p1, p2, :cond_5

    move v2, v6

    .local v2, "retY":I
    :goto_3
    move v4, v3

    .line 114
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 116
    .local v11, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v11}, Lcom/cmdm/control/util/BitmapUtils;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 117
    .local v8, "bp":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 118
    return-object v8

    .line 97
    .end local v1    # "retX":I
    .end local v2    # "retY":I
    .end local v3    # "wh":I
    .end local v8    # "bp":Landroid/graphics/Bitmap;
    .end local v11    # "resizedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 99
    .local v10, "e1":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz p0, :cond_1

    .line 103
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 104
    :catch_1
    move-exception v9

    .line 106
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 101
    if-eqz p0, :cond_2

    .line 103
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 109
    :cond_2
    :goto_4
    throw v4

    .line 104
    :catch_2
    move-exception v9

    .line 106
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 104
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 106
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v9    # "e":Ljava/io/IOException;
    :cond_3
    move v3, p1

    .line 110
    goto :goto_1

    .restart local v3    # "wh":I
    :cond_4
    move v1, v6

    .line 112
    goto :goto_2

    .line 113
    .restart local v1    # "retX":I
    :cond_5
    sub-int v4, p2, p1

    div-int/lit8 v2, v4, 0x2

    goto :goto_3
.end method

.method public static decodeBitmapFour(Ljava/io/FileInputStream;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "fs"    # Ljava/io/FileInputStream;

    .prologue
    const/4 v5, 0x1

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 125
    .local v1, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 126
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 127
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 128
    const v4, 0x8000

    new-array v4, v4, [B

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 131
    if-eqz p0, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    :cond_0
    if-eqz p0, :cond_1

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 150
    :cond_1
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e1":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    const/4 v0, 0x0

    .line 141
    if-eqz p0, :cond_1

    .line 143
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 144
    :catch_1
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 141
    if-eqz p0, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 149
    :cond_2
    :goto_1
    throw v4

    .line 144
    :catch_2
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 144
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeBitmapThree(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 42
    .local v9, "bmpFactoryOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 43
    const/4 v6, 0x1

    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 44
    const/4 v6, 0x1

    iput-boolean v6, v9, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 45
    const v6, 0x8000

    new-array v6, v6, [B

    iput-object v6, v9, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 46
    const/4 v15, 0x0

    .line 47
    .local v15, "fs":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 49
    .local v13, "firstFile":Ljava/io/File;
    if-eqz p0, :cond_0

    .line 50
    :try_start_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v13    # "firstFile":Ljava/io/File;
    .local v14, "firstFile":Ljava/io/File;
    move-object v13, v14

    .line 52
    .end local v14    # "firstFile":Ljava/io/File;
    .restart local v13    # "firstFile":Ljava/io/File;
    :cond_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v15    # "fs":Ljava/io/FileInputStream;
    .local v16, "fs":Ljava/io/FileInputStream;
    if-eqz v16, :cond_1

    .line 54
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v9}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 62
    :cond_1
    if-eqz v16, :cond_4

    .line 64
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v15, v16

    .line 71
    .end local v16    # "fs":Ljava/io/FileInputStream;
    .restart local v15    # "fs":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_5

    move/from16 v5, p2

    .line 73
    .local v5, "wh":I
    :goto_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    sub-int v6, p1, p2

    div-int/lit8 v3, v6, 0x2

    .line 74
    .local v3, "retX":I
    :goto_2
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    const/4 v4, 0x0

    .line 76
    .local v4, "retY":I
    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, v5

    .line 75
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 77
    .local v17, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-static/range {v17 .. v17}, Lcom/cmdm/control/util/BitmapUtils;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 78
    .local v10, "bp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 79
    return-object v10

    .line 58
    .end local v3    # "retX":I
    .end local v4    # "retY":I
    .end local v5    # "wh":I
    .end local v10    # "bp":Landroid/graphics/Bitmap;
    .end local v17    # "resizedBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v12

    .line 60
    .local v12, "e1":Ljava/io/IOException;
    :goto_4
    :try_start_3
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    if-eqz v15, :cond_2

    .line 64
    :try_start_4
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v11

    .line 67
    .local v11, "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 62
    :goto_5
    if-eqz v15, :cond_3

    .line 64
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 70
    :cond_3
    :goto_6
    throw v6

    .line 65
    :catch_2
    move-exception v11

    .line 67
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 65
    .end local v11    # "e":Ljava/io/IOException;
    .end local v15    # "fs":Ljava/io/FileInputStream;
    .restart local v16    # "fs":Ljava/io/FileInputStream;
    :catch_3
    move-exception v11

    .line 67
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    .end local v11    # "e":Ljava/io/IOException;
    :cond_4
    move-object/from16 v15, v16

    .end local v16    # "fs":Ljava/io/FileInputStream;
    .restart local v15    # "fs":Ljava/io/FileInputStream;
    goto :goto_0

    :cond_5
    move/from16 v5, p1

    .line 71
    goto :goto_1

    .line 73
    .restart local v5    # "wh":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 74
    .restart local v3    # "retX":I
    :cond_7
    sub-int v6, p2, p1

    div-int/lit8 v4, v6, 0x2

    goto :goto_3

    .line 61
    .end local v3    # "retX":I
    .end local v5    # "wh":I
    .end local v15    # "fs":Ljava/io/FileInputStream;
    .restart local v16    # "fs":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object/from16 v15, v16

    .end local v16    # "fs":Ljava/io/FileInputStream;
    .restart local v15    # "fs":Ljava/io/FileInputStream;
    goto :goto_5

    .line 58
    .end local v15    # "fs":Ljava/io/FileInputStream;
    .restart local v16    # "fs":Ljava/io/FileInputStream;
    :catch_4
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "fs":Ljava/io/FileInputStream;
    .restart local v15    # "fs":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public static decodeBitmaptwo(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 188
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v8, "file":Ljava/io/File;
    const/4 v0, 0x0

    .line 190
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 191
    .local v7, "bp":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    :cond_0
    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 196
    .local v11, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 198
    .local v9, "h":I
    if-le v11, v9, :cond_2

    move v3, v9

    .line 200
    .local v3, "wh":I
    :goto_0
    if-le v11, v9, :cond_3

    sub-int v4, v11, v9

    div-int/lit8 v1, v4, 0x2

    .line 201
    .local v1, "retX":I
    :goto_1
    if-le v11, v9, :cond_4

    move v2, v6

    .line 203
    .local v2, "retY":I
    :goto_2
    const/4 v5, 0x0

    move v4, v3

    .line 202
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 204
    .local v10, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v10}, Lcom/cmdm/control/util/BitmapUtils;->c(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 207
    .end local v1    # "retX":I
    .end local v2    # "retY":I
    .end local v3    # "wh":I
    .end local v9    # "h":I
    .end local v10    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "w":I
    :cond_1
    return-object v7

    .restart local v9    # "h":I
    .restart local v11    # "w":I
    :cond_2
    move v3, v11

    .line 198
    goto :goto_0

    .restart local v3    # "wh":I
    :cond_3
    move v1, v6

    .line 200
    goto :goto_1

    .line 201
    .restart local v1    # "retX":I
    :cond_4
    sub-int v4, v9, v11

    div-int/lit8 v2, v4, 0x2

    goto :goto_2
.end method

.method public static fileIsExists(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 386
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 387
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 393
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    return v2

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getBitmapWithPath(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "dstMaxWH"    # I

    .prologue
    const/4 v4, 0x0

    .line 254
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    .local v5, "srcFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v4

    .line 259
    :cond_1
    const/4 v4, 0x0

    .line 260
    .local v4, "srcBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 262
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 264
    invoke-static {v6, p1}, Lcom/cmdm/control/util/BitmapUtils;->getOptionsWithInSampleSize(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 266
    .local v3, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 268
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 269
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 270
    const/4 v6, 0x0

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 274
    if-eqz v2, :cond_3

    .line 276
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 280
    :goto_1
    const/4 v1, 0x0

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 271
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    if-eqz v1, :cond_0

    .line 276
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v1, 0x0

    goto :goto_0

    .line 277
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 278
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 274
    :goto_4
    if-eqz v1, :cond_2

    .line 276
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 280
    :goto_5
    const/4 v1, 0x0

    .line 282
    :cond_2
    throw v6

    .line 277
    :catch_2
    move-exception v0

    .line 278
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v0

    .line 278
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 273
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 271
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_2

    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "opts":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static getFileSizeString(J)Ljava/lang/String;
    .locals 8
    .param p0, "fileSize"    # J

    .prologue
    const-wide/16 v6, 0x400

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 367
    cmp-long v1, p0, v6

    if-gtz v1, :cond_0

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 373
    :goto_0
    return-object v1

    .line 369
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gtz v1, :cond_1

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    div-long v2, p0, v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 372
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, "mdf":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    long-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 463
    .line 464
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 463
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 473
    .local v1, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 475
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 487
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 479
    .restart local v0    # "imsi":Ljava/lang/String;
    :cond_1
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 481
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "46005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    const-string v2, "46020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 487
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptionsWithInSampleSize(Ljava/lang/String;I)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 229
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 231
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 232
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 233
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v3, p1, 0xa

    div-int v1, v2, v3

    .line 234
    .local v1, "inSampleSize":I
    rem-int/lit8 v2, v1, 0xa

    if-eqz v2, :cond_0

    .line 235
    add-int/lit8 v1, v1, 0xa

    .line 237
    :cond_0
    div-int/lit8 v1, v1, 0xa

    .line 238
    if-gtz v1, :cond_1

    .line 239
    const/4 v1, 0x1

    .line 241
    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 242
    return-object v0
.end method

.method public static getTime()I
    .locals 2

    .prologue
    .line 354
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 355
    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 356
    iget v1, v0, Landroid/text/format/Time;->hour:I

    return v1
.end method

.method public static hasSimCard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 403
    .line 404
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 403
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 405
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static toUnZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "zipFile"    # Ljava/lang/String;
    .param p1, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number_attribution.db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 292
    :cond_0
    invoke-static {p0, p1}, Lcom/cmdm/control/util/BitmapUtils;->Y(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method
