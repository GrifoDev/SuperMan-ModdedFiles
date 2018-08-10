.class public Lcom/samsung/android/settings/utils/ProfileLoader;
.super Ljava/lang/Object;
.source "ProfileLoader.java"


# static fields
.field private static PROJECTION_DATA:[Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data14"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "data15"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->PROJECTION_DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/utils/ProfileLoader;
    .locals 2

    const-class v1, Lcom/samsung/android/settings/utils/ProfileLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/utils/ProfileLoader;

    invoke-direct {v0}, Lcom/samsung/android/settings/utils/ProfileLoader;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/utils/ProfileLoader;->sInstance:Lcom/samsung/android/settings/utils/ProfileLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private samsungAccountExists(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public loadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 14

    const/4 v11, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/utils/ProfileLoader;->PROJECTION_DATA:[Ljava/lang/String;

    const-string/jumbo v3, "account_type_and_data_set =? AND mimetype =?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.sec.contact.phone"

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_0
    if-eqz v7, :cond_1

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v11

    :goto_0
    if-eqz v0, :cond_2

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-object v11

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    return-object v11

    :cond_3
    const/4 v10, 0x0

    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :cond_4
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v0, "Settings/ProfileLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thumbNail ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/io/InputStream;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_7

    const-string/jumbo v0, "Settings/ProfileLoader"

    const-string/jumbo v1, "loadBitmap failed to get mediaInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v7, :cond_5

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_5
    move-object v0, v11

    :goto_1
    if-eqz v0, :cond_6

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_2
    move-exception v0

    goto :goto_1

    :cond_6
    return-object v11

    :cond_7
    if-eqz v7, :cond_8

    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_8
    move-object v0, v11

    :goto_2
    if-eqz v0, :cond_9

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_9
    return-object v6

    :catch_4
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_3
    if-eqz v7, :cond_a

    :try_start_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_a
    :goto_4
    if-eqz v1, :cond_c

    :try_start_a
    throw v1

    :catch_5
    move-exception v2

    if-nez v1, :cond_b

    move-object v1, v2

    goto :goto_4

    :cond_b
    if-eq v1, v2, :cond_a

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_1
    move-exception v0

    move-object v1, v11

    goto :goto_3
.end method

.method public makeAvatarDrawable(Landroid/content/Context;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "Settings/ProfileLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skip update:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/utils/ProfileLoader;->samsungAccountExists(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/utils/ProfileLoader;->loadBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v2, "Settings/ProfileLoader"

    const-string/jumbo v3, "skip update:can not get bitmap:"

    invoke-static {v2, v3}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    return-object v1

    :cond_3
    return-object v5
.end method

.method public openProfile(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string/jumbo v2, "com.samsung.android.mobileservice"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.mobileservice.action.ACTION_OPEN_SASETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
