.class public Lcom/android/incallui/callerinfocard/item/MemoItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "MemoItem.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "memo"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final FILEPATH_ACTIONMEMO:Ljava/lang/String; = "sec_custom1"

.field public static final LASTMODIFIEDAT:Ljava/lang/String; = "lastModifiedAt"

.field public static final STRIPPEDCONTENT:Ljava/lang/String; = "strippedContent"

.field private static final TAG:Ljava/lang/String; = "MemoItem"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.memo/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    return-void
.end method

.method private getActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected setActionMemoThumbnail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    if-eqz p2, :cond_0

    const-string v2, "0"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v18, 0x0

    const-string v11, "content://com.samsung.android.snoteprovider/thumbnail"

    const-string v8, "filepath"

    const-string v10, "lastmodified"

    const-string v9, "FromCallLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filepath = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.samsung.android.snoteprovider/thumbnail"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "lastmodified"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.android.snoteprovider/thumbnail\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "filepath"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FromCallLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    if-eqz v17, :cond_3

    new-instance v19, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v12, v2, v13, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v19

    :cond_3
    if-eqz v18, :cond_4

    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v16

    :goto_2
    :try_start_3
    const-string v2, "MemoItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActionMemoThumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v18, :cond_4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v18, :cond_5

    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    throw v2

    :catch_3
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    goto :goto_3

    :catch_4
    move-exception v16

    move-object/from16 v18, v19

    goto :goto_2
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    const v2, 0x7f02036d

    iput v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mIconRes:I

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0900bd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContent:Ljava/lang/String;

    const-string v2, "sec_custom1"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/callerinfocard/item/MemoItem;->setActionMemoThumbnail(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const-string v2, "MemoItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItem : ActionMemo NO THUMBNAIL... fp is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean v5, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mDeleted:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "strippedContent"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContent:Ljava/lang/String;

    :cond_2
    const-string v2, "lastModifiedAt"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mDate:Ljava/lang/String;

    goto :goto_0
.end method
