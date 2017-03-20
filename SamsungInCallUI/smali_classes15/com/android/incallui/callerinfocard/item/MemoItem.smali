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

    .prologue
    .line 59
    const-string v0, "content://com.samsung.android.memo/memo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method private getActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, "fp":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "columnIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected setActionMemoThumbnail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p2, :cond_0

    const-string v2, "0"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 143
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    const/16 v18, 0x0

    .line 153
    .local v18, "fileInputStream":Ljava/io/FileInputStream;
    const-string v11, "content://com.samsung.android.snoteprovider/thumbnail"

    .line 155
    .local v11, "URI_THUMBNAIL":Ljava/lang/String;
    const-string v8, "filepath"

    .line 157
    .local v8, "FILE_PATH_COLUMN":Ljava/lang/String;
    const-string v10, "lastmodified"

    .line 159
    .local v10, "MODIFIED_TIME_COLUMN":Ljava/lang/String;
    const-string v9, "FromCallLog"

    .line 162
    .local v9, "FROM_CALL_LOG":Ljava/lang/String;
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

    .line 164
    .local v5, "selection":Ljava/lang/String;
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

    .line 167
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_1

    .line 169
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const-string v2, "lastmodified"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    .line 173
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

    .line 176
    .local v20, "fileUri":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v17

    .line 177
    .local v17, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v17, :cond_3

    .line 179
    new-instance v19, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v18    # "fileInputStream":Ljava/io/FileInputStream;
    .local v19, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 183
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v13, v2, 0x2

    .line 185
    .local v13, "coorY":I
    const/4 v2, 0x0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v12, v2, v13, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 187
    .local v14, "croppedBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    .line 191
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v18, v19

    .line 202
    .end local v12    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "coorY":I
    .end local v14    # "croppedBitmap":Landroid/graphics/Bitmap;
    .end local v19    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v18, :cond_4

    .line 203
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v20    # "fileUri":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 205
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v20    # "fileUri":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 206
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v16    # "e":Ljava/io/IOException;
    .end local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v16

    .line 196
    .local v16, "e":Ljava/io/FileNotFoundException;
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

    .line 198
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    if-eqz v18, :cond_4

    .line 203
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 205
    :catch_2
    move-exception v16

    .line 206
    .local v16, "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v16    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 202
    :goto_3
    if-eqz v18, :cond_5

    .line 203
    :try_start_5
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_5
    :goto_4
    throw v2

    .line 205
    :catch_3
    move-exception v16

    .line 206
    .restart local v16    # "e":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 201
    .end local v16    # "e":Ljava/io/IOException;
    .end local v18    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v17    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v19    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 195
    .end local v18    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v19    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v16

    move-object/from16 v18, v19

    .end local v19    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v18    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 79
    const v2, 0x7f020363

    iput v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mIconRes:I

    .line 81
    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->supportActionMemo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const v2, 0x7f0900bd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContent:Ljava/lang/String;

    .line 85
    const-string v2, "sec_custom1"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getActionMemoPath(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "fp":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/android/incallui/callerinfocard/item/MemoItem;->setActionMemoThumbnail(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mActionMemoThumbnail:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    .line 91
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

    .line 93
    iput-boolean v5, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mDeleted:Z

    .line 119
    .end local v1    # "fp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v2, "strippedContent"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, "columnIndex":I
    if-eq v0, v3, :cond_2

    .line 103
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mContent:Ljava/lang/String;

    .line 107
    :cond_2
    const-string v2, "lastModifiedAt"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    if-eq v0, v3, :cond_0

    .line 111
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    .line 113
    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MemoItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MemoItem;->mDate:Ljava/lang/String;

    goto :goto_0
.end method
