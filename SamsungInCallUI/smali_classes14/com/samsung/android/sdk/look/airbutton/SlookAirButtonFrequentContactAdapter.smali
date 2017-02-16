.class public final Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;
.super Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
.source "SlookAirButtonFrequentContactAdapter.java"


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field private static final EMAIL:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field private static final EXTRA_CONDITION:Ljava/lang/String; = "extra_condition"

.field private static final FREQUENT_URI:Ljava/lang/String; = "content://com.android.contacts/contacts/frequent_data"

.field public static final ID:Ljava/lang/String; = "id"

.field private static final IS_PRIVATE:Ljava/lang/String; = "is_private"

.field public static final LOOKUP_KEY:Ljava/lang/String; = "lookup_key"

.field private static final MIME_TYPE:Ljava/lang/String; = "MIME_TYPE"

.field private static final PHONE:Ljava/lang/String; = "vnd.android.cursor.item/phone_v2"

.field public static final PHOTO:Ljava/lang/String; = "photo"

.field public static final PHOTO_URI:Ljava/lang/String; = "photo_uri"

.field private static final TAG:Ljava/lang/String; = "AirButtonFrequentContactAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowing:Z

.field private mMaxCount:I

.field private mNeedUpdate:Z

.field private mSelectionSb:Ljava/lang/StringBuilder;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "option"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 112
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    .line 91
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    .line 93
    new-instance v4, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v4}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 95
    const/16 v4, 0xf

    iput v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mMaxCount:I

    .line 98
    iput-boolean v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    .line 99
    iput-boolean v5, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    .line 102
    iput v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    .line 113
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 114
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You should set the View and Bundle in Param"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    :cond_0
    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->isSupport(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 160
    :cond_1
    :goto_0
    return-void

    .line 121
    :cond_2
    if-eqz p2, :cond_8

    .line 122
    const-string v4, "MIME_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, "isMimeType":Z
    if-eqz v2, :cond_3

    .line 127
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "view_data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v0, 0x1

    .line 135
    :cond_3
    const-string v4, "PRIVATE"

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 136
    .local v1, "isPrivate":Z
    if-nez v1, :cond_5

    .line 137
    if-eqz v0, :cond_4

    .line 138
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "is_private=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_5
    const-string v4, "extra_condition"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "selection":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 145
    if-nez v0, :cond_6

    if-nez v1, :cond_7

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v0    # "isMimeType":Z
    .end local v1    # "isPrivate":Z
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :cond_8
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mMaxCount:I

    .line 155
    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    .line 158
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isSupport(I)Z
    .locals 2
    .param p1, "ver"    # I

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateData()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 247
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 250
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    .line 251
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    .line 254
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 255
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 256
    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 257
    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 258
    const-string v3, "data15"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 259
    const-string v3, "lookup"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 260
    const-string v3, "mimetype"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    .line 261
    const-string v3, "data1"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    .line 262
    const-string v3, "is_private"

    aput-object v3, v2, v0

    .line 265
    .local v2, "PROJECTION":[Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/frequent_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 267
    .local v1, "frequentDataUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "_id LIMIT "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mMaxCount:I

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 269
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 273
    :goto_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 286
    if-eqz v7, :cond_2

    .line 287
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 290
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I
    :try_end_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Ljava/lang/NoSuchMethodError;
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 247
    .end local v1    # "frequentDataUri":Landroid/net/Uri;
    .end local v2    # "PROJECTION":[Ljava/lang/String;
    .end local v7    # "c":Landroid/database/Cursor;
    .end local v8    # "e":Ljava/lang/NoSuchMethodError;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    .restart local v1    # "frequentDataUri":Landroid/net/Uri;
    .restart local v2    # "PROJECTION":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 274
    .restart local v7    # "c":Landroid/database/Cursor;
    :cond_4
    :try_start_6
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "id"

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v0, "display_name"

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "photo_uri"

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v0, "photo"

    const/4 v3, 0x3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 279
    const-string v0, "lookup_key"

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "MIME_TYPE"

    const/4 v3, 0x5

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "data"

    const/4 v3, 0x6

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v3, "is_private"

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_6

    move v0, v9

    :goto_3
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 285
    .end local v6    # "bundle":Landroid/os/Bundle;
    :catchall_1
    move-exception v0

    .line 286
    if-eqz v7, :cond_5

    .line 287
    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v6    # "bundle":Landroid/os/Bundle;
    :cond_6
    move v0, v10

    .line 282
    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .locals 9
    .param p1, "idx"    # I

    .prologue
    .line 229
    iget-object v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "display_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "name":Ljava/lang/String;
    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "data":Ljava/lang/String;
    const-string v6, "photo"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 234
    .local v4, "photo":[B
    if-nez v4, :cond_0

    .line 236
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getDrawableId(I)I

    move-result v5

    .line 237
    .local v5, "resourceId":I
    iget-object v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 241
    .end local v5    # "resourceId":I
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v6, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-direct {v6, v2, v3, v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

    .line 239
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v4

    invoke-static {v4, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    .line 203
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 204
    iput v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    .line 205
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 185
    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    .line 187
    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iput v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    .line 189
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->updateData()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    .line 173
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 174
    return-void
.end method
