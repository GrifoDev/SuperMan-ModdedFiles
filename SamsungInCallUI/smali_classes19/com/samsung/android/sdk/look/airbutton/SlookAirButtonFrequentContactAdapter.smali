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

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    new-instance v4, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v4}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/16 v4, 0xf

    iput v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mMaxCount:I

    iput-boolean v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    iput-boolean v5, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    iput v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You should set the View and Bundle in Param"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->isSupport(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_8

    const-string v4, "MIME_TYPE"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "view_data."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_3
    const-string v4, "PRIVATE"

    invoke-virtual {p2, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, "is_private=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v4, "extra_condition"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    if-nez v0, :cond_6

    if-nez v1, :cond_7

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSelectionSb:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mMaxCount:I

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getText(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->setEmptyText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isSupport(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized updateData()V
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "photo_uri"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "data15"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "lookup"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "mimetype"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "data1"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "is_private"

    aput-object v3, v2, v0

    const-string v0, "content://com.android.contacts/contacts/frequent_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

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

    if-eqz v7, :cond_0

    :goto_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    if-eqz v7, :cond_2

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

    :catch_0
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/lang/NoSuchMethodError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :try_start_6
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v0, "id"

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "display_name"

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "photo_uri"

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "photo"

    const/4 v3, 0x3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "lookup_key"

    const/4 v3, 0x4

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MIME_TYPE"

    const/4 v3, 0x5

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    const/4 v3, 0x6

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_private"

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_6

    move v0, v9

    :goto_3
    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v7, :cond_5

    :try_start_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    move v0, v10

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    .locals 9

    iget-object v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v6, "display_name"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "photo"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/samsung/android/sdk/look/SlookResourceManager;->getDrawableId(I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    new-instance v6, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    invoke-direct {v6, v2, v3, v1, v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v6

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

    goto :goto_0
.end method

.method public onDismiss(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V

    return-void
.end method

.method public onHide(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mNeedUpdate:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mCount:I

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    return-void
.end method

.method public onShow(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->updateData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonFrequentContactAdapter;->mIsShowing:Z

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    return-void
.end method
