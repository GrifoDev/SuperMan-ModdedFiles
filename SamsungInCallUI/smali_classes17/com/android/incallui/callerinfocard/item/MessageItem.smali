.class public Lcom/android/incallui/callerinfocard/item/MessageItem;
.super Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;
.source "MessageItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageItem"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/item/CallerInfoCardItem;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private needTochangeContent(Landroid/content/Context;)Z
    .locals 12
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x1

    .line 231
    invoke-static {p1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isAllowPrivateforNotification()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string v2, "MessageItem"

    const-string v5, "needToChangeContent privNoti"

    invoke-static {v2, v5, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v10, v0

    .line 260
    :cond_0
    :goto_0
    return v10

    .line 235
    :cond_1
    const/4 v10, 0x0

    .line 236
    .local v10, "result":Z
    const-string v5, "content://com.android.mms.csc.PreferenceProvider/key"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, "mUri":Landroid/net/Uri;
    const-string v9, "pref_key_enable_statusbar_preview_message"

    .line 239
    .local v9, "pref_name":Ljava/lang/String;
    const/4 v7, 0x0

    .line 241
    .local v7, "def":Z
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    aput-object v9, v4, v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 242
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v3, "BOOLEAN"

    .line 244
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 248
    const-string v0, "MessageItem"

    const-string v2, "needToChangeContent pref"

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v10, 0x1

    .line 255
    :cond_2
    if-eqz v6, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v6, 0x0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v8

    .line 253
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MessageItem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needTochangeContent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v0, v2, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    if-eqz v6, :cond_0

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v6, 0x0

    goto :goto_0

    .line 255
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private setContent(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "columnIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    .line 173
    :cond_0
    return-void
.end method

.method private setContent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "subjectColumnName"    # Ljava/lang/String;
    .param p3, "textColumnName"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 180
    const/4 v3, 0x0

    .line 183
    .local v3, "subjectCharset":I
    const-string v5, "sub_cs"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "columnIndex":I
    if-eq v0, v6, :cond_0

    .line 187
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 189
    :cond_0
    const/4 v2, 0x0

    .line 191
    .local v2, "subject":Ljava/lang/String;
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 193
    if-eq v0, v6, :cond_1

    .line 195
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 198
    new-instance v1, Lcom/android/incallui/wrapper/EncodedStringValueWrapper;

    invoke-static {v2}, Lcom/android/incallui/wrapper/PduPersisterWrapper;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v3, v5}, Lcom/android/incallui/wrapper/EncodedStringValueWrapper;-><init>(I[B)V

    .line 199
    .local v1, "encodedStringValue":Lcom/android/incallui/wrapper/EncodedStringValueWrapper;
    invoke-virtual {v1}, Lcom/android/incallui/wrapper/EncodedStringValueWrapper;->getString()Ljava/lang/String;

    move-result-object v2

    .line 203
    .end local v1    # "encodedStringValue":Lcom/android/incallui/wrapper/EncodedStringValueWrapper;
    :cond_2
    const/4 v4, 0x0

    .line 205
    .local v4, "text":Ljava/lang/String;
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 207
    if-eq v0, v6, :cond_3

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 212
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 214
    if-nez v4, :cond_4

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_5
    iput-object v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected setItem(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactRef"    # Landroid/net/Uri;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 79
    if-nez p3, :cond_0

    .line 81
    const-string v2, "MessageItem"

    const-string v3, "cursor is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDeleted:Z

    .line 154
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 92
    const-string v2, "MessageItem"

    const-string v3, "cursor count is 0. return false"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 96
    const/4 p3, 0x0

    .line 98
    iput-boolean v4, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDeleted:Z

    goto :goto_0

    .line 105
    :cond_1
    const v2, 0x7f020365

    iput v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mIconRes:I

    .line 107
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    const-string v2, "transport_type"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "columnIndex":I
    if-eq v0, v5, :cond_3

    .line 113
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "transportType":Ljava/lang/String;
    const-string v2, "MessageItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transportType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v2, "mms"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    if-eq v0, v5, :cond_2

    .line 123
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    .line 125
    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDate:Ljava/lang/String;

    .line 129
    :cond_2
    const-string v2, "sub"

    const-string v3, "text"

    invoke-direct {p0, p3, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setContent(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v1    # "transportType":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/incallui/callerinfocard/item/MessageItem;->needTochangeContent(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    const v2, 0x7f0900ba

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mContent:Ljava/lang/String;

    .line 152
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 133
    .restart local v1    # "transportType":Ljava/lang/String;
    :cond_5
    const-string v2, "date"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 135
    if-eq v0, v5, :cond_6

    .line 137
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    .line 139
    iget-wide v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mUpdateTime:J

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/incallui/callerinfocard/item/MessageItem;->getUpdateTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/callerinfocard/item/MessageItem;->mDate:Ljava/lang/String;

    .line 143
    :cond_6
    const-string v2, "body"

    invoke-direct {p0, p3, v2}, Lcom/android/incallui/callerinfocard/item/MessageItem;->setContent(Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_1
.end method
