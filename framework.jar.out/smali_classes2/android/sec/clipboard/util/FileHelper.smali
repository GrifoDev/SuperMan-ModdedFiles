.class public Landroid/sec/clipboard/util/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# static fields
.field private static final BASE_64_ENCODING:Ljava/lang/String; = ";base64"

.field private static final LENGTH_CONTENT_URI:I

.field private static final LENGTH_HTTPS_URL:I

.field private static final LENGTH_HTTP_URL:I

.field private static final PREFIX_CONTENT_URI:Ljava/lang/String; = "content://"

.field private static final PREFIX_DATA:Ljava/lang/String; = "data:"

.field private static final PREFIX_FILE:Ljava/lang/String; = "file://"

.field private static final PREFIX_HTTPS_URL:Ljava/lang/String; = "https://"

.field private static final PREFIX_HTTP_URL:Ljava/lang/String; = "http://"

.field private static final PREFIX_STORAGE:Ljava/lang/String; = "storage/emulated/"

.field private static instance:Landroid/sec/clipboard/util/FileHelper;


# instance fields
.field private NullFile:Ljava/io/File;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/sec/clipboard/util/FileHelper;

    invoke-direct {v0}, Landroid/sec/clipboard/util/FileHelper;-><init>()V

    sput-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    .line 66
    const-string/jumbo v0, "http://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    .line 67
    const-string/jumbo v0, "https://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    .line 68
    const-string/jumbo v0, "content://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "FileHelper"

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "_TEMP_FILE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method private getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmapPath"    # Ljava/lang/String;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 654
    const/4 v3, 0x2

    .line 655
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 657
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 662
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 665
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 671
    :try_start_0
    const-string/jumbo v4, "FileHelper"

    const-string/jumbo v5, "BitmapFactory.decodeFile(bitmapPath, bitmapOption"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 679
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :goto_0
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bitmapOption.outWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bitmapOption.outHieght:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mGridItemWidth:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mGridItemHeight:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_0

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p3, :cond_0

    .line 683
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 673
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 685
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    add-int/lit8 v3, v3, -0x1

    .line 689
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 692
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 693
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 697
    :goto_2
    return-object v1

    .line 694
    :catch_1
    move-exception v2

    .line 695
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static getInstance()Landroid/sec/clipboard/util/FileHelper;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/sec/clipboard/util/FileHelper;->instance:Landroid/sec/clipboard/util/FileHelper;

    return-object v0
.end method


# virtual methods
.method public checkDir(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 741
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public checkFile(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 762
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method public createTemporaryThumnailImage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 322
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 323
    .local v0, "Result":Z
    const/16 v7, 0x14a

    const/16 v8, 0xf0

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 325
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 326
    const-string/jumbo v7, "FileHelper"

    const-string/jumbo v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return v0

    .line 330
    :cond_0
    const/4 v4, 0x0

    .line 333
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_1

    .line 336
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 337
    const/4 v0, 0x1

    .line 343
    :cond_1
    if-eqz v5, :cond_2

    .line 344
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    .line 351
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    return v0

    .line 346
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 340
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 343
    if-eqz v4, :cond_3

    .line 344
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 346
    :catch_2
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 341
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 343
    :goto_3
    if-eqz v4, :cond_4

    .line 344
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 341
    :cond_4
    :goto_4
    throw v7

    .line 346
    :catch_3
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 341
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 339
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public createThumnailFromData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;)Ljava/lang/String;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 356
    const/4 v11, 0x0

    .line 357
    .local v11, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 359
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const/16 v18, 0x180

    .line 360
    .local v18, "thumbImageWidth":I
    const/16 v17, 0x180

    .line 363
    .local v17, "thumbImageHeight":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501e9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 364
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x10501e8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    .line 369
    :goto_0
    if-eqz p2, :cond_2

    .line 370
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v11, p2

    .line 371
    check-cast v11, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .line 381
    .local v11, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    const-string/jumbo v20, "FileHelper"

    const-string/jumbo v21, "Create preview image for html data in createThumnailFromData()"

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v3, 0x0

    .line 383
    .local v3, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v14, ""

    .line 385
    .local v14, "sFileName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 388
    invoke-static {v14}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 389
    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/text/Spanned;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    .line 394
    :goto_1
    if-eqz v14, :cond_0

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 395
    :cond_0
    const-string/jumbo v20, "FileHelper"

    const-string/jumbo v21, "getFirstImage : FileName is empty."

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v20, 0x0

    return-object v20

    .line 365
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v14    # "sFileName":Ljava/lang/String;
    .local v11, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    :catch_0
    move-exception v8

    .line 366
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v20, "FileHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "createThumnailFromData() is false because clip is not html type. clip.GetFomat() :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v20, 0x0

    return-object v20

    .line 377
    :cond_2
    const-string/jumbo v20, "FileHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v20, 0x0

    return-object v20

    .line 390
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    .local v11, "htmlClip":Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;
    .restart local v14    # "sFileName":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 391
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 399
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v20, "FileHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    .line 402
    .local v13, "length":I
    const-string/jumbo v20, "data:"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 403
    const/16 v20, 0x2c

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .line 404
    .local v12, "index":I
    if-lez v12, :cond_4

    if-ge v12, v13, :cond_4

    const-string/jumbo v20, "data:"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v14, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, ";base64"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 405
    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 406
    .local v6, "decodedString":[B
    const/16 v20, 0x4

    move/from16 v0, v20

    invoke-static {v6, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    .line 407
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v6, v0, v1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 432
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "decodedString":[B
    .end local v12    # "index":I
    :cond_4
    :goto_2
    if-eqz v3, :cond_e

    .line 433
    new-instance v15, Ljava/io/File;

    const-string/jumbo v20, "/data/clipboard/temp/"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v15, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 436
    new-instance v5, Ljava/io/File;

    const-string/jumbo v20, "/data/clipboard/temp/"

    const-string/jumbo v21, "previewhtmlclipboarditem"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    .local v5, "createFile":Ljava/io/File;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "_thum.jpg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 438
    .local v16, "thumFullPath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 440
    .local v9, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    if-eqz v10, :cond_5

    .line 442
    :try_start_3
    sget-object v20, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v21, 0x32

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 448
    :cond_5
    if-eqz v10, :cond_6

    .line 449
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    move-object v9, v10

    .line 456
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 457
    return-object v16

    .line 410
    .end local v5    # "createFile":Ljava/io/File;
    .end local v15    # "tempFolder":Ljava/io/File;
    .end local v16    # "thumFullPath":Ljava/lang/String;
    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_8
    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    move/from16 v0, v20

    if-le v13, v0, :cond_a

    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "http://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_a

    .line 412
    :cond_9
    const-string/jumbo v20, "FileHelper"

    const-string/jumbo v21, "downloadSimpleBitmap"

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :try_start_5
    const-string/jumbo v20, "FileHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "html : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v14, v0, v1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v3

    .local v3, "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 411
    .local v3, "bm":Landroid/graphics/Bitmap;
    :cond_a
    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    move/from16 v0, v20

    if-le v13, v0, :cond_b

    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "https://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_9

    .line 422
    :cond_b
    if-eqz v4, :cond_c

    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v20

    if-le v13, v0, :cond_c

    .line 423
    sget v20, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v21, "content://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_c

    .line 424
    const-string/jumbo v20, "FileHelper"

    const-string/jumbo v21, "getUriPathBitmap..."

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 426
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v4, v0, v1, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 417
    .end local v19    # "uri":Landroid/net/Uri;
    .local v3, "bm":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v8

    .line 418
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 419
    const/16 v20, 0x0

    return-object v20

    .line 428
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_c
    const-string/jumbo v20, "FileHelper"

    const-string/jumbo v21, "invalid data"

    invoke-static/range {v20 .. v21}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 451
    .end local v3    # "bm":Landroid/graphics/Bitmap;
    .restart local v5    # "createFile":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "tempFolder":Ljava/io/File;
    .restart local v16    # "thumFullPath":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 452
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 444
    .end local v7    # "e":Ljava/io/IOException;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    .line 445
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 448
    if-eqz v9, :cond_7

    .line 449
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_4

    .line 451
    :catch_5
    move-exception v7

    .line 452
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .line 446
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    .line 448
    :goto_6
    if-eqz v9, :cond_d

    .line 449
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 446
    :cond_d
    :goto_7
    throw v20

    .line 451
    :catch_6
    move-exception v7

    .line 452
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 459
    .end local v5    # "createFile":Ljava/io/File;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v15    # "tempFolder":Ljava/io/File;
    .end local v16    # "thumFullPath":Ljava/lang/String;
    :cond_e
    const/16 v20, 0x0

    return-object v20

    .line 446
    .restart local v5    # "createFile":Ljava/io/File;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "tempFolder":Ljava/io/File;
    .restart local v16    # "thumFullPath":Ljava/lang/String;
    :catchall_1
    move-exception v20

    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 444
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v9, v10

    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5
.end method

.method public createThumnailFromUriData(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Ljava/lang/String;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clip"    # Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .prologue
    .line 564
    const/16 v18, 0x0

    .line 565
    .local v18, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 567
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/16 v16, 0x180

    .line 568
    .local v16, "thumbImageWidth":I
    const/16 v15, 0x180

    .line 571
    .local v15, "thumbImageHeight":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501e9

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v16, v0

    .line 572
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10501e8

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 577
    :goto_0
    if-eqz p2, :cond_2

    .line 578
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v19

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 579
    move-object/from16 v18, p2

    .line 589
    .local v18, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    const-string/jumbo v19, "FileHelper"

    const-string/jumbo v20, "Create preview image for uri data in createThumnailFromData()"

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v2, 0x0

    .line 592
    .local v2, "bm":Landroid/graphics/Bitmap;
    const-string/jumbo v12, ""

    .line 594
    .local v12, "sFileName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 595
    if-eqz v12, :cond_0

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 596
    :cond_0
    const-string/jumbo v19, "FileHelper"

    const-string/jumbo v20, "getFirstImage : FileName is empty."

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v19, 0x0

    return-object v19

    .line 573
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v12    # "sFileName":Ljava/lang/String;
    .local v18, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :catch_0
    move-exception v7

    .line 574
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 581
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v19, "FileHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "createThumnailFromData() is false because clip is not uri type. clip.GetFomat() :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v19, 0x0

    return-object v19

    .line 585
    :cond_2
    const-string/jumbo v19, "FileHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "createThumnailFromData() is false because clip is invalid data. clip :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/16 v19, 0x0

    return-object v19

    .line 600
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v12    # "sFileName":Ljava/lang/String;
    .local v18, "uriClip":Lcom/samsung/android/content/clipboard/data/SemUriClipData;
    :cond_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .line 602
    .local v11, "length":I
    const-string/jumbo v19, "FileHelper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "name = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string/jumbo v19, "data:"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 605
    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 606
    .local v10, "index":I
    if-lez v10, :cond_4

    if-ge v10, v11, :cond_4

    const-string/jumbo v19, "data:"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v12, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, ";base64"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 607
    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 608
    .local v5, "decodedString":[B
    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v5, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 609
    move/from16 v0, v16

    invoke-static {v5, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getResizeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 622
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .end local v5    # "decodedString":[B
    .end local v10    # "index":I
    :cond_4
    :goto_1
    if-eqz v2, :cond_d

    .line 623
    new-instance v13, Ljava/io/File;

    const-string/jumbo v19, "/data/clipboard/temp/"

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v13, "tempFolder":Ljava/io/File;
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/sec/clipboard/util/FileHelper;->makeDir(Ljava/io/File;)V

    .line 626
    new-instance v4, Ljava/io/File;

    const-string/jumbo v19, "/data/clipboard/temp/"

    const-string/jumbo v20, "previewhtmlclipboarditem"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .local v4, "createFile":Ljava/io/File;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "_thum.jpg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 628
    .local v14, "thumFullPath":Ljava/lang/String;
    const/4 v8, 0x0

    .line 630
    .local v8, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v9, "fos":Ljava/io/FileOutputStream;
    if-eqz v9, :cond_5

    .line 632
    :try_start_2
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x32

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 638
    :cond_5
    if-eqz v9, :cond_6

    .line 639
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_6
    :goto_2
    move-object v8, v9

    .line 646
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 647
    return-object v14

    .line 611
    .end local v4    # "createFile":Ljava/io/File;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    .restart local v2    # "bm":Landroid/graphics/Bitmap;
    :cond_8
    const-string/jumbo v19, "storage/emulated/"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_9

    const-string/jumbo v19, "file://"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 612
    :cond_9
    move/from16 v0, v16

    invoke-static {v12, v0, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 613
    .local v2, "bm":Landroid/graphics/Bitmap;
    :cond_a
    if-eqz v3, :cond_b

    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    move/from16 v0, v19

    if-le v11, v0, :cond_b

    .line 614
    sget v19, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "content://"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v19

    if-nez v19, :cond_b

    .line 615
    const-string/jumbo v19, "FileHelper"

    const-string/jumbo v20, "getUriPathBitmap..."

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 617
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v3, v0, v1, v15}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "bm":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 619
    .end local v17    # "uri":Landroid/net/Uri;
    .local v2, "bm":Landroid/graphics/Bitmap;
    :cond_b
    const-string/jumbo v19, "FileHelper"

    const-string/jumbo v20, "invalid data"

    invoke-static/range {v19 .. v20}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 641
    .end local v2    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 642
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 634
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    .line 635
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 638
    if-eqz v8, :cond_7

    .line 639
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    .line 641
    :catch_3
    move-exception v6

    .line 642
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 636
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 638
    :goto_5
    if-eqz v8, :cond_c

    .line 639
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 636
    :cond_c
    :goto_6
    throw v19

    .line 641
    :catch_4
    move-exception v6

    .line 642
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 649
    .end local v4    # "createFile":Ljava/io/File;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "tempFolder":Ljava/io/File;
    .end local v14    # "thumFullPath":Ljava/lang/String;
    :cond_d
    const/16 v19, 0x0

    return-object v19

    .line 636
    .restart local v4    # "createFile":Ljava/io/File;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "tempFolder":Ljava/io/File;
    .restart local v14    # "thumFullPath":Ljava/lang/String;
    :catchall_1
    move-exception v19

    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 634
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public createThumnailImage(Ljava/lang/String;)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "thumFullPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 256
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 257
    .local v0, "Result":Z
    const/16 v7, 0x99

    const/16 v8, 0x56

    invoke-direct {p0, p1, v7, v8}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 258
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 259
    const-string/jumbo v7, "FileHelper"

    const-string/jumbo v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return v0

    .line 263
    :cond_0
    const/4 v4, 0x0

    .line 266
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_1

    .line 269
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    const/4 v0, 0x1

    .line 276
    :cond_1
    if-eqz v5, :cond_2

    .line 277
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    .line 283
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 284
    return v0

    .line 279
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 272
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 273
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    if-eqz v4, :cond_3

    .line 277
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 279
    :catch_2
    move-exception v2

    .line 280
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 276
    :goto_3
    if-eqz v4, :cond_4

    .line 277
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 274
    :cond_4
    :goto_4
    throw v7

    .line 279
    :catch_3
    move-exception v2

    .line 280
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 274
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 272
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public createThumnailImage(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_thum.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 289
    .local v6, "thumFullPath":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p3}, Landroid/sec/clipboard/util/FileHelper;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 290
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 291
    .local v0, "Result":Z
    if-nez v1, :cond_0

    .line 292
    const-string/jumbo v7, "FileHelper"

    const-string/jumbo v8, "createThumnailImage Bitmap is null"

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return v0

    .line 295
    :cond_0
    const/4 v4, 0x0

    .line 297
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_1

    .line 300
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x32

    invoke-virtual {v1, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    const/4 v0, 0x1

    .line 307
    :cond_1
    if-eqz v5, :cond_2

    .line 308
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v4, v5

    .line 315
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 316
    return v0

    .line 310
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 311
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    .line 304
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 307
    if-eqz v4, :cond_3

    .line 308
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 310
    :catch_2
    move-exception v2

    .line 311
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 305
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 307
    :goto_3
    if-eqz v4, :cond_4

    .line 308
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 305
    :cond_4
    :goto_4
    throw v7

    .line 310
    :catch_3
    move-exception v2

    .line 311
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 305
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 303
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public delete(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 772
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 773
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 774
    return-void

    .line 777
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 778
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 779
    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_2

    .line 780
    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 781
    .local v0, "f":Ljava/io/File;
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 783
    .end local v0    # "f":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 771
    .end local v1    # "list":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method public fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .locals 18
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "Result":Z
    const/4 v12, 0x0

    .line 170
    .local v12, "inputStream":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 171
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 172
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    const/4 v8, 0x0

    .line 173
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 175
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 176
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/16 v16, -0x1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v5, v0, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 177
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .local v13, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .local v15, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-result-object v3

    .line 180
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 181
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 182
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 183
    const/4 v2, 0x1

    .line 191
    if-eqz v3, :cond_0

    .line 192
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 194
    :cond_0
    if-eqz v8, :cond_1

    .line 195
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 197
    :cond_1
    if-eqz v13, :cond_2

    .line 198
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 200
    :cond_2
    if-eqz v15, :cond_3

    .line 201
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 205
    const/16 p1, 0x0

    .local p1, "pfd":Landroid/os/ParcelFileDescriptor;
    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .line 210
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v6    # "lSize":J
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_0
    return v2

    .line 206
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v6    # "lSize":J
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local p1, "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v10

    .line 207
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 187
    .end local v6    # "lSize":J
    .end local v10    # "e":Ljava/io/IOException;
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v10

    .line 188
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    if-eqz v3, :cond_4

    .line 192
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 194
    :cond_4
    if-eqz v8, :cond_5

    .line 195
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 197
    :cond_5
    if-eqz v12, :cond_6

    .line 198
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 200
    :cond_6
    if-eqz v14, :cond_7

    .line 201
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 205
    const/16 p1, 0x0

    .local p1, "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_0

    .line 206
    .local p1, "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v10

    .line 207
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    .line 185
    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    const/4 v4, 0x0

    .line 191
    if-eqz v3, :cond_8

    .line 192
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 194
    :cond_8
    if-eqz v8, :cond_9

    .line 195
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 197
    :cond_9
    if-eqz v12, :cond_a

    .line 198
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 200
    :cond_a
    if-eqz v14, :cond_b

    .line 201
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 205
    const/16 p1, 0x0

    .line 186
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_3
    return v4

    .line 206
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v10

    .line 207
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 189
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 191
    :goto_4
    if-eqz v3, :cond_c

    .line 192
    :try_start_8
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 194
    :cond_c
    if-eqz v8, :cond_d

    .line 195
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 197
    :cond_d
    if-eqz v12, :cond_e

    .line 198
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 200
    :cond_e
    if-eqz v14, :cond_f

    .line 201
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 204
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 205
    const/16 p1, 0x0

    .line 189
    .end local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    throw v4

    .line 206
    .restart local p1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_5
    move-exception v10

    .line 207
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 189
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v14    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v4

    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 184
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v9

    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 187
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .restart local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .restart local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v3    # "fcin":Ljava/nio/channels/FileChannel;
    .end local v8    # "fcout":Ljava/nio/channels/FileChannel;
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    .end local v14    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v15    # "outputStream":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v10

    .restart local v10    # "e":Ljava/io/IOException;
    move-object v14, v15

    .end local v15    # "outputStream":Ljava/io/FileOutputStream;
    .local v14, "outputStream":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "inputStream":Ljava/io/FileInputStream;
    .restart local v12    # "inputStream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public fileCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 16
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "Result":Z
    const/4 v11, 0x0

    .line 83
    .local v11, "inputStream":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 86
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->createNewFile()Z

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v4, v5, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 88
    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v12, "inputStream":Ljava/io/FileInputStream;
    move-object v11, v12

    .line 98
    .end local v12    # "inputStream":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 104
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    if-eqz v11, :cond_0

    if-nez v13, :cond_4

    .line 105
    :cond_0
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 106
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "break fileCopy()...because of inputStream :"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ", or outputStream :"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    if-eqz v13, :cond_2

    .line 110
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 112
    :cond_2
    if-eqz v11, :cond_3

    .line 113
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 118
    :cond_3
    :goto_1
    return v2

    .line 93
    .restart local v11    # "inputStream":Ljava/io/FileInputStream;
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v10

    .line 94
    .local v10, "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 90
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 91
    .local v9, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    return v2

    .line 99
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v11    # "inputStream":Ljava/io/FileInputStream;
    .end local v13    # "outputStream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    .line 100
    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    return v2

    .line 115
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .local v13, "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    .line 116
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v10    # "e":Ljava/io/IOException;
    :cond_4
    invoke-virtual {v11}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 122
    .local v3, "fcin":Ljava/nio/channels/FileChannel;
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    .line 124
    .local v8, "fcout":Ljava/nio/channels/FileChannel;
    if-eqz v3, :cond_5

    .line 125
    :try_start_3
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    .line 126
    .local v6, "lSize":J
    const-wide/16 v4, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 127
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 129
    .end local v6    # "lSize":J
    :cond_5
    if-eqz v8, :cond_6

    .line 130
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 132
    :cond_6
    if-eqz v13, :cond_7

    .line 133
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 135
    :cond_7
    if-eqz v11, :cond_8

    .line 136
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    :cond_8
    const/4 v2, 0x1

    .line 146
    if-eqz v3, :cond_9

    .line 147
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 149
    :cond_9
    if-eqz v8, :cond_a

    .line 150
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 152
    :cond_a
    if-eqz v11, :cond_b

    .line 153
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 155
    :cond_b
    if-eqz v13, :cond_c

    .line 156
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 164
    :cond_c
    :goto_2
    return v2

    .line 158
    :catch_4
    move-exception v10

    .line 159
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 139
    .end local v10    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v10

    .line 140
    .restart local v10    # "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    const/4 v2, 0x0

    .line 146
    if-eqz v3, :cond_d

    .line 147
    :try_start_6
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 149
    :cond_d
    if-eqz v8, :cond_e

    .line 150
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 152
    :cond_e
    if-eqz v11, :cond_f

    .line 153
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 155
    :cond_f
    if-eqz v13, :cond_c

    .line 156
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_2

    .line 158
    :catch_6
    move-exception v10

    .line 159
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 146
    if-eqz v3, :cond_10

    .line 147
    :try_start_7
    invoke-virtual {v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 149
    :cond_10
    if-eqz v8, :cond_11

    .line 150
    invoke-virtual {v8}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 152
    :cond_11
    if-eqz v11, :cond_12

    .line 153
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 155
    :cond_12
    if-eqz v13, :cond_13

    .line 156
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 144
    :cond_13
    :goto_3
    throw v4

    .line 158
    :catch_7
    move-exception v10

    .line 159
    .restart local v10    # "e":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public getAbsoluteNullFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/io/File;)[Ljava/io/File;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 768
    .local v0, "list":[Ljava/io/File;
    return-object v0
.end method

.method public getNullFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Landroid/sec/clipboard/util/FileHelper;->NullFile:Ljava/io/File;

    return-object v0
.end method

.method public loadObjectFile(Ljava/io/File;)Ljava/lang/Object;
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 701
    const/4 v9, 0x0

    .line 702
    .local v9, "result":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 703
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 705
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    const-string/jumbo v10, "FileHelper"

    const-string/jumbo v11, "load object file"

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_14
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 709
    .local v8, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    move-result-object v9

    .line 722
    if-eqz v8, :cond_0

    .line 723
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_0
    if-eqz v6, :cond_1

    .line 726
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .line 732
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v9    # "result":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-object v9

    .line 728
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v9    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 729
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v3

    .line 719
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .local v3, "e":Ljava/lang/ClassCastException;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 722
    if-eqz v7, :cond_3

    .line 723
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_3
    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 728
    :catch_2
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 716
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v1

    .line 717
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 722
    if-eqz v7, :cond_4

    .line 723
    :try_start_7
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_4
    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 728
    :catch_4
    move-exception v1

    .line 729
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 714
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v4

    .line 715
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 722
    if-eqz v7, :cond_5

    .line 723
    :try_start_9
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_5
    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 728
    :catch_6
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 712
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v2

    .line 713
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "e":Ljava/io/StreamCorruptedException;
    :goto_5
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 722
    if-eqz v7, :cond_6

    .line 723
    :try_start_b
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_6
    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_1

    .line 728
    :catch_8
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 710
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/io/StreamCorruptedException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :catch_9
    move-exception v0

    .line 711
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 722
    if-eqz v7, :cond_7

    .line 723
    :try_start_d
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_7
    if-eqz v5, :cond_2

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_1

    .line 728
    :catch_a
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 720
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 722
    :goto_7
    if-eqz v7, :cond_8

    .line 723
    :try_start_e
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V

    .line 725
    :cond_8
    if-eqz v5, :cond_9

    .line 726
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 720
    :cond_9
    :goto_8
    throw v10

    .line 728
    :catch_b
    move-exception v1

    .line 729
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 720
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 710
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_d
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 712
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v2

    .restart local v2    # "e":Ljava/io/StreamCorruptedException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "e":Ljava/io/StreamCorruptedException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_f
    move-exception v2

    .restart local v2    # "e":Ljava/io/StreamCorruptedException;
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 714
    .end local v2    # "e":Ljava/io/StreamCorruptedException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v4

    .restart local v4    # "e":Ljava/lang/ClassNotFoundException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v4

    .restart local v4    # "e":Ljava/lang/ClassNotFoundException;
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 716
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_13
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 718
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    :catch_14
    move-exception v3

    .restart local v3    # "e":Ljava/lang/ClassCastException;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v3    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "ois":Ljava/io/ObjectInputStream;
    :catch_15
    move-exception v3

    .restart local v3    # "e":Ljava/lang/ClassCastException;
    move-object v7, v8

    .end local v8    # "ois":Ljava/io/ObjectInputStream;
    .local v7, "ois":Ljava/io/ObjectInputStream;
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method public makeDir(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v2, -0x1

    .line 750
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 752
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 749
    :cond_0
    return-void
.end method

.method public saveObjectFile(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 218
    if-nez p2, :cond_0

    .line 219
    const-string/jumbo v6, "FileHelper"

    const-string/jumbo v7, "obj == null"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v6, 0x0

    return v6

    .line 223
    :cond_0
    const/4 v5, 0x1

    .line 224
    .local v5, "result":Z
    const/4 v1, 0x0

    .line 225
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 228
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    .local v4, "oos":Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v4, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 237
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    if-eqz v4, :cond_1

    .line 238
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 240
    :cond_1
    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_0
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .line 249
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    :cond_3
    :goto_1
    return v5

    .line 243
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 232
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string/jumbo v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveObjectFile~IOException :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 234
    const/4 v5, 0x0

    .line 237
    if-eqz v3, :cond_4

    .line 238
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 240
    :cond_4
    if-eqz v1, :cond_3

    .line 241
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 243
    :catch_2
    move-exception v0

    .line 244
    const-string/jumbo v6, "FileHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 237
    :goto_3
    if-eqz v3, :cond_5

    .line 238
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 240
    :cond_5
    if-eqz v1, :cond_6

    .line 241
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 235
    :cond_6
    :goto_4
    throw v6

    .line 243
    :catch_3
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "FileHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "close : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 235
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 231
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "oos":Ljava/io/ObjectOutputStream;
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public setFirstImagePathFromHtmlData(Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;)Z
    .locals 11
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 463
    if-nez p1, :cond_0

    .line 464
    return v7

    .line 467
    :cond_0
    const-string/jumbo v3, ""

    .line 469
    .local v3, "sFileName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->getHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/sec/clipboard/util/ClipboardProcText;->getImgFileNameFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 472
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Spanned;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 478
    :goto_0
    if-eqz v3, :cond_1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v8, :cond_2

    .line 479
    :cond_1
    const-string/jumbo v4, "FileHelper"

    const-string/jumbo v5, "getFirstImage : FileName is empty."

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v8

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 486
    .local v2, "length":I
    const-string/jumbo v4, "data:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 487
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 488
    .local v1, "index":I
    if-lez v1, :cond_a

    if-ge v1, v2, :cond_a

    const-string/jumbo v4, "data:"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ";base64"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 489
    invoke-virtual {p1, v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 490
    return v8

    .line 492
    .end local v1    # "index":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_4

    invoke-virtual {v3, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "file://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_4

    .line 493
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-virtual {p1, v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 495
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFirstImagePathFromData: Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return v8

    .line 497
    :cond_4
    const-string/jumbo v4, "storage/emulated/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 498
    invoke-virtual {p1, v3}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 499
    const-string/jumbo v4, "FileHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "directly use firstImagePath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return v8

    .line 502
    :cond_5
    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    if-le v2, v4, :cond_7

    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTP_URL:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 504
    :cond_6
    invoke-virtual {p1, v9}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 505
    return v8

    .line 503
    :cond_7
    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    if-le v2, v4, :cond_8

    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_HTTPS_URL:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    :cond_8
    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v2, v4, :cond_9

    .line 507
    sget v4, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "content://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 508
    invoke-virtual {p1, v9}, Lcom/samsung/android/content/clipboard/data/SemHtmlClipData;->setThumbnailImagePath(Ljava/lang/String;)Z

    .line 509
    return v8

    .line 511
    :cond_9
    return v7

    .line 515
    .restart local v1    # "index":I
    :cond_a
    return v7
.end method

.method public setThumbnailImagePathFromUriData(Lcom/samsung/android/content/clipboard/data/SemUriClipData;)Z
    .locals 10
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemUriClipData;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 519
    if-nez p1, :cond_0

    .line 520
    return v6

    .line 523
    :cond_0
    const-string/jumbo v2, ""

    .line 524
    .local v2, "sFileName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_2

    .line 527
    :cond_1
    const-string/jumbo v3, "FileHelper"

    const-string/jumbo v4, "getThumbnailImage : FileName is empty."

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v7

    .line 531
    :cond_2
    const-string/jumbo v3, "FileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 535
    .local v1, "length":I
    const-string/jumbo v3, "data:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 536
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 537
    .local v0, "index":I
    if-lez v0, :cond_7

    if-ge v0, v1, :cond_7

    const-string/jumbo v3, "data:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";base64"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 538
    invoke-virtual {p1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 539
    return v7

    .line 541
    .end local v0    # "index":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_4

    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 542
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {p1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 544
    const-string/jumbo v3, "FileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setThumbnailPathFromData: Substring Filepath  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return v7

    .line 546
    :cond_4
    const-string/jumbo v3, "storage/emulated/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 547
    invoke-virtual {p1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 548
    const-string/jumbo v3, "FileHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "directly use ThumbnailPath...getFilePathBitmap : Substring Filepath  - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v7

    .line 551
    :cond_5
    sget v3, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    if-le v1, v3, :cond_6

    .line 552
    sget v3, Landroid/sec/clipboard/util/FileHelper;->LENGTH_CONTENT_URI:I

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    .line 553
    invoke-virtual {p1, v8}, Lcom/samsung/android/content/clipboard/data/SemUriClipData;->setThumbnailPath(Ljava/lang/String;)Z

    .line 554
    return v7

    .line 556
    :cond_6
    return v6

    .line 560
    .restart local v0    # "index":I
    :cond_7
    return v6
.end method
