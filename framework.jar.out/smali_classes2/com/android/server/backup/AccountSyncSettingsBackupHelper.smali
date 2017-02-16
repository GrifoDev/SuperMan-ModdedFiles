.class public Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
.super Ljava/lang/Object;
.source "AccountSyncSettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "account_data"

.field private static final JSON_FORMAT_VERSION:I = 0x1

.field private static final KEY_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final KEY_ACCOUNT_AUTHORITIES:Ljava/lang/String; = "authorities"

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "name"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_AUTHORITY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_AUTHORITY_SYNC_ENABLED:Ljava/lang/String; = "syncEnabled"

.field private static final KEY_AUTHORITY_SYNC_STATE:Ljava/lang/String; = "syncState"

.field private static final KEY_MASTER_SYNC_ENABLED:Ljava/lang/String; = "masterSyncEnabled"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final MD5_BYTE_SIZE:I = 0x10

.field private static final STASH_FILE:Ljava/lang/String;

.field private static final STATE_VERSION:I = 0x1

.field private static final SYNC_REQUEST_LATCH_TIMEOUT_SECONDS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AccountSyncSettingsBackupHelper"


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "/backup/unadded_account_syncsettings.json"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    .line 85
    return-void
.end method

.method public static accountAdded(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    new-instance v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "helper":Lcom/android/server/backup/AccountSyncSettingsBackupHelper;
    invoke-direct {v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAddedInternal()V

    .line 346
    return-void
.end method

.method private accountAddedInternal()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 322
    const/4 v0, 0x0

    .local v0, "fIn":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    sget-object v10, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .local v1, "fIn":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 324
    .local v3, "in":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 332
    .local v6, "jsonString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_0
    :goto_0
    if-eqz v9, :cond_4

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 325
    :catch_0
    move-exception v2

    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .line 328
    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "jsonString":Ljava/lang/String;
    :goto_1
    return-void

    .line 332
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "jsonString":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_0

    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v6    # "jsonString":Ljava/lang/String;
    .restart local v0    # "fIn":Ljava/io/FileInputStream;
    :catch_2
    move-exception v8

    .end local v0    # "fIn":Ljava/io/FileInputStream;
    :goto_2
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_3
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_1
    :goto_4
    if-eqz v9, :cond_3

    :try_start_6
    throw v9

    .line 325
    :catch_3
    move-exception v2

    .restart local v2    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 332
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    if-nez v9, :cond_2

    move-object v9, v10

    goto :goto_4

    :cond_2
    if-eq v9, v10, :cond_1

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 329
    :catch_5
    move-exception v4

    .line 331
    .local v4, "ioe":Ljava/io/IOException;
    :goto_5
    return-void

    .line 332
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_3
    throw v8
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 335
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "jsonString":Ljava/lang/String;
    :cond_4
    :try_start_7
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 336
    .local v7, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v7}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 319
    .end local v7    # "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    :goto_6
    return-void

    .line 337
    :catch_6
    move-exception v5

    .line 339
    .local v5, "jse":Lorg/json/JSONException;
    const-string/jumbo v8, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v9, "there was an error with the stashed sync settings"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 329
    .end local v5    # "jse":Lorg/json/JSONException;
    :catch_7
    move-exception v4

    .restart local v4    # "ioe":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .local v0, "fIn":Ljava/io/FileInputStream;
    goto :goto_5

    .line 332
    .end local v3    # "in":Ljava/io/DataInputStream;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v6    # "jsonString":Ljava/lang/String;
    .local v0, "fIn":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .local v0, "fIn":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "fIn":Ljava/io/FileInputStream;
    .restart local v1    # "fIn":Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v0, v1

    .end local v1    # "fIn":Ljava/io/FileInputStream;
    .restart local v0    # "fIn":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private generateMd5Checksum([B)[B
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 233
    if-nez p1, :cond_0

    .line 234
    return-object v1

    .line 237
    :cond_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 238
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private getAccounts()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v3, p0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v3}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    .line 358
    .local v2, "accounts":[Landroid/accounts/Account;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 359
    .local v1, "accountHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    const/4 v3, 0x0

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 360
    .local v0, "account":Landroid/accounts/Account;
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_0
    return-object v1
.end method

.method private readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .locals 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    .line 192
    new-instance v0, Ljava/io/DataInputStream;

    .line 193
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 192
    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 195
    .local v0, "dataInput":Ljava/io/DataInputStream;
    new-array v3, v8, [B

    .line 197
    .local v3, "oldMd5Checksum":[B
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 198
    .local v4, "stateVersion":I
    if-gt v4, v7, :cond_0

    .line 202
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 203
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v3, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v5, "AccountSyncSettingsBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Backup state version is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 207
    const-string/jumbo v7, " (support only up to version "

    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 207
    const/4 v7, 0x1

    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 207
    const-string/jumbo v7, ")"

    .line 206
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v4    # "stateVersion":I
    :cond_1
    :goto_1
    return-object v3

    .line 209
    :catch_0
    move-exception v1

    .local v1, "eof":Ljava/io/EOFException;
    goto :goto_1
.end method

.method private restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "accountJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 397
    const-string/jumbo v9, "authorities"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 398
    .local v3, "authorities":Lorg/json/JSONArray;
    const-string/jumbo v9, "name"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "accountName":Ljava/lang/String;
    const-string/jumbo v9, "type"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 401
    .local v2, "accountType":Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .local v0, "account":Landroid/accounts/Account;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 403
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 404
    .local v4, "authority":Lorg/json/JSONObject;
    const-string/jumbo v9, "name"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "authorityName":Ljava/lang/String;
    const-string/jumbo v9, "syncEnabled"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 406
    .local v7, "wasSyncEnabled":Z
    const-string/jumbo v9, "syncState"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 408
    .local v8, "wasSyncable":I
    invoke-static {v0, v5, v7, v10}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 411
    if-nez v7, :cond_0

    .line 415
    if-nez v8, :cond_1

    move v9, v10

    .line 412
    :goto_1
    invoke-static {v0, v5, v9}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 402
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 416
    :cond_1
    const/4 v9, 0x2

    goto :goto_1

    .line 395
    .end local v4    # "authority":Lorg/json/JSONObject;
    .end local v5    # "authorityName":Ljava/lang/String;
    .end local v7    # "wasSyncEnabled":Z
    .end local v8    # "wasSyncable":I
    :cond_2
    return-void
.end method

.method private restoreFromJsonArray(Lorg/json/JSONArray;)V
    .locals 21
    .param p1, "accountJSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->getAccounts()Ljava/util/HashSet;

    move-result-object v7

    .line 278
    .local v7, "currentAccounts":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/accounts/Account;>;"
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 279
    .local v16, "unaddedAccountsJSONArray":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_1

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 281
    .local v4, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v17, "name"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "accountName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 284
    .local v6, "accountType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 286
    .local v2, "account":Landroid/accounts/Account;
    :try_start_0
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .line 293
    .end local v2    # "account":Landroid/accounts/Account;
    .local v3, "account":Landroid/accounts/Account;
    invoke-virtual {v7, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 295
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreExistingAccountSyncSettingsFromJSON(Lorg/json/JSONObject;)V

    move-object v2, v3

    .line 279
    .end local v3    # "account":Landroid/accounts/Account;
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 297
    .restart local v3    # "account":Landroid/accounts/Account;
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v2, v3

    .end local v3    # "account":Landroid/accounts/Account;
    .local v2, "account":Landroid/accounts/Account;
    goto :goto_1

    .line 301
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v4    # "accountJSON":Lorg/json/JSONObject;
    .end local v5    # "accountName":Ljava/lang/String;
    .end local v6    # "accountType":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_7

    .line 302
    const/16 v18, 0x0

    const/4 v8, 0x0

    .local v8, "fOutput":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v9, Ljava/io/FileOutputStream;

    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 303
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .local v9, "fOutput":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, "jsonString":Ljava/lang/String;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 305
    .local v14, "out":Ljava/io/DataOutputStream;
    invoke-virtual {v14, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 309
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_2
    if-eqz v18, :cond_3

    :try_start_4
    throw v18
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 306
    :catch_0
    move-exception v12

    .local v12, "ioe":Ljava/io/IOException;
    move-object v8, v9

    .line 308
    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/DataOutputStream;
    :goto_3
    const-string/jumbo v17, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v18, "unable to write the sync settings to the stash file"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v12    # "ioe":Ljava/io/IOException;
    :cond_3
    :goto_4
    return-void

    .line 309
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v13    # "jsonString":Ljava/lang/String;
    .restart local v14    # "out":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v18

    goto :goto_2

    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .end local v13    # "jsonString":Ljava/lang/String;
    .end local v14    # "out":Ljava/io/DataOutputStream;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v17

    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_5
    throw v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v18

    move-object/from16 v20, v18

    move-object/from16 v18, v17

    move-object/from16 v17, v20

    :goto_6
    if-eqz v8, :cond_4

    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_7
    if-eqz v18, :cond_6

    :try_start_7
    throw v18

    .line 306
    :catch_3
    move-exception v12

    .restart local v12    # "ioe":Ljava/io/IOException;
    goto :goto_3

    .line 309
    .end local v12    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v19

    if-nez v18, :cond_5

    move-object/from16 v18, v19

    goto :goto_7

    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_4

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_6
    throw v17
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 311
    :cond_7
    new-instance v15, Ljava/io/File;

    sget-object v17, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->STASH_FILE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v15, "stashFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 309
    .end local v15    # "stashFile":Ljava/io/File;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    goto :goto_6

    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v17

    move-object v8, v9

    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .local v8, "fOutput":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v9    # "fOutput":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v17

    move-object v8, v9

    .end local v9    # "fOutput":Ljava/io/FileOutputStream;
    .restart local v8    # "fOutput":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 287
    .end local v8    # "fOutput":Ljava/io/FileOutputStream;
    .local v2, "account":Landroid/accounts/Account;
    .restart local v4    # "accountJSON":Lorg/json/JSONObject;
    .restart local v5    # "accountName":Ljava/lang/String;
    .restart local v6    # "accountType":Ljava/lang/String;
    :catch_6
    move-exception v11

    .local v11, "iae":Ljava/lang/IllegalArgumentException;
    goto/16 :goto_1
.end method

.method private serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 129
    .local v6, "accounts":[Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getUserId()I

    move-result v17

    .line 128
    invoke-static/range {v17 .. v17}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v14

    .line 133
    .local v14, "syncAdapters":[Landroid/content/SyncAdapterType;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v5, "accountTypeToAuthorities":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v18, v17

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v13, v14, v18

    .line 137
    .local v13, "syncAdapter":Landroid/content/SyncAdapterType;
    invoke-virtual {v13}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v17

    if-nez v17, :cond_0

    .line 135
    :goto_1
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 141
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-object v0, v13, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    iget-object v0, v13, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v13    # "syncAdapter":Landroid/content/SyncAdapterType;
    :cond_2
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 148
    .local v12, "backupJSON":Lorg/json/JSONObject;
    const-string/jumbo v17, "version"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 149
    const-string/jumbo v17, "masterSyncEnabled"

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 151
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 152
    .local v4, "accountJSONArray":Lorg/json/JSONArray;
    const/16 v17, 0x0

    array-length v0, v6

    move/from16 v18, v0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v2, v6, v17

    .line 153
    .local v2, "account":Landroid/accounts/Account;
    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 157
    .local v7, "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 152
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 161
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .local v3, "accountJSON":Lorg/json/JSONObject;
    const-string/jumbo v19, "name"

    iget-object v0, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string/jumbo v19, "type"

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .local v8, "authoritiesJSONArray":Lorg/json/JSONArray;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "authority$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 168
    .local v9, "authority":Ljava/lang/String;
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v16

    .line 169
    .local v16, "syncState":I
    invoke-static {v2, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .line 171
    .local v15, "syncEnabled":Z
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v11, "authorityJSON":Lorg/json/JSONObject;
    const-string/jumbo v19, "name"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string/jumbo v19, "syncState"

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v19, "syncEnabled"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 177
    .end local v9    # "authority":Ljava/lang/String;
    .end local v11    # "authorityJSON":Lorg/json/JSONObject;
    .end local v15    # "syncEnabled":Z
    .end local v16    # "syncState":I
    :cond_5
    const-string/jumbo v19, "authorities"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 181
    .end local v2    # "account":Landroid/accounts/Account;
    .end local v3    # "accountJSON":Lorg/json/JSONObject;
    .end local v7    # "authorities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "authoritiesJSONArray":Lorg/json/JSONArray;
    .end local v10    # "authority$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v17, "accounts"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    return-object v12
.end method

.method private writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .locals 4
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Ljava/io/DataOutputStream;

    .line 222
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 221
    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 224
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 220
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "output"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->serializeAccountSyncSettingsToJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 104
    .local v1, "dataJSON":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    .local v0, "dataBytes":[B
    invoke-direct {p0, p1}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v5

    .line 106
    .local v5, "oldMd5Checksum":[B
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    .line 107
    .local v4, "newMd5Checksum":[B
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    array-length v2, v0

    .line 109
    .local v2, "dataSize":I
    const-string/jumbo v6, "account_data"

    invoke-virtual {p2, v6, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 110
    invoke-virtual {p2, v0, v2}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 112
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v7, "Backup successful."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v2    # "dataSize":I
    :goto_0
    invoke-direct {p0, p3, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V

    .line 95
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :goto_1
    return-void

    .line 114
    .restart local v0    # "dataBytes":[B
    .restart local v1    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "newMd5Checksum":[B
    .restart local v5    # "oldMd5Checksum":[B
    :cond_0
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v7, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v0    # "dataBytes":[B
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "newMd5Checksum":[B
    .end local v5    # "oldMd5Checksum":[B
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AccountSyncSettingsBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Couldn\'t backup account sync settings\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v7

    new-array v2, v7, [B

    .line 249
    .local v2, "dataBytes":[B
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 250
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v4, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 253
    .local v4, "dataString":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "dataJSON":Lorg/json/JSONObject;
    const-string/jumbo v7, "masterSyncEnabled"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 255
    .local v6, "masterSyncEnabled":Z
    const-string/jumbo v7, "accounts"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 257
    .local v0, "accountJSONArray":Lorg/json/JSONArray;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 258
    .local v1, "currentMasterSyncEnabled":Z
    if-eqz v1, :cond_0

    .line 260
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 269
    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    const-string/jumbo v8, "Restore successful."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v1    # "currentMasterSyncEnabled":Z
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "dataString":Ljava/lang/String;
    .end local v6    # "masterSyncEnabled":Z
    :goto_0
    return-void

    .line 265
    .restart local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .restart local v1    # "currentMasterSyncEnabled":Z
    .restart local v3    # "dataJSON":Lorg/json/JSONObject;
    .restart local v4    # "dataString":Ljava/lang/String;
    .restart local v6    # "masterSyncEnabled":Z
    :catchall_0
    move-exception v7

    .line 267
    invoke-static {v6}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 265
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 270
    .end local v0    # "accountJSONArray":Lorg/json/JSONArray;
    .end local v1    # "currentMasterSyncEnabled":Z
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "dataString":Ljava/lang/String;
    .end local v6    # "masterSyncEnabled":Z
    :catch_0
    move-exception v5

    .line 271
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "AccountSyncSettingsBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t restore account sync settings\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 422
    return-void
.end method
