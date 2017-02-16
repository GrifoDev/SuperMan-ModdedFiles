.class public Landroid/app/BluetoothSecureManagerService;
.super Landroid/bluetooth/IBluetoothSecureManagerService$Stub;
.source "BluetoothSecureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final DBG:Z = true

.field public static final Name:Ljava/lang/String; = "bluetooth_secure_mode_manager"

.field public static final SECURE_MANAGER_ENABLE:Ljava/lang/String; = "secure_mode_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_ENABLE:Ljava/lang/String; = "white_list_enable"

.field public static final SECURE_MANAGER_WHITE_LIST_MAX:Ljava/lang/String; = "white_list_max_index"

.field public static final SECURE_MANAGER_WHITE_LIST_PREFIX:Ljava/lang/String; = "white_list"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManagerService"


# instance fields
.field private final SECURE_CONFIG_PATH:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mPrefs:Landroid/app/SharedPreferencesImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;-><init>()V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/system/bt_secure_manager_config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    .line 199
    new-instance v0, Landroid/app/SharedPreferencesImpl;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->SECURE_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/SharedPreferencesImpl;-><init>(Ljava/io/File;I)V

    iput-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    .line 196
    return-void
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Landroid/app/BluetoothSecureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.sec.BLUETOOTH_SECUREMODE_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private final findWhiteListFreeIndex()I
    .locals 6

    .prologue
    .line 222
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 224
    .local v2, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 225
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    return v0

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method private final findWhiteListIndex(Ljava/lang/String;I)I
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I

    .prologue
    .line 210
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 211
    .local v2, "max":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "white_list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v1, v5}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v3

    .line 215
    .local v3, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    if-ne v4, p2, :cond_0

    .line 216
    return v0

    .line 211
    .end local v3    # "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    return v4
.end method

.method public static final getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "valueName"    # Ljava/lang/String;

    .prologue
    .line 207
    return-object p0
.end method

.method private final getWhiteListKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "white_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;

    .prologue
    const/16 v4, 0x3b

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 238
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    const/4 v2, 0x0

    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p3, v2

    .line 241
    .local v1, "u":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "u":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private final unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    .locals 11
    .param p1, "packedValues"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 252
    const-string/jumbo v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unpackWhiteListValue v: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; split len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    array-length v4, v3

    if-nez v4, :cond_0

    .line 255
    return-object v10

    .line 256
    :cond_0
    new-instance v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    invoke-direct {v2, v10}, Landroid/app/BluetoothSecureManagerService$WhiteListValue;-><init>(Landroid/app/BluetoothSecureManagerService$WhiteListValue;)V

    .line 257
    .local v2, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    array-length v4, v3

    if-lt v4, v8, :cond_1

    .line 258
    aget-object v4, v3, v7

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    .line 259
    :cond_1
    array-length v4, v3

    if-lt v4, v9, :cond_2

    .line 260
    aget-object v4, v3, v8

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    .line 261
    :cond_2
    array-length v4, v3

    if-le v4, v9, :cond_3

    .line 262
    array-length v4, v3

    add-int/lit8 v1, v4, -0x2

    .line 263
    .local v1, "size":I
    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    .line 264
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    .line 265
    iget-object v4, v2, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v6, v3, v0

    aput-object v6, v4, v5

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_3
    return-object v2
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I
    .param p3, "uuids"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 363
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWhiteList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; cod: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-nez p3, :cond_0

    .line 366
    const-string/jumbo v4, "BluetoothSecureManagerService"

    const-string/jumbo v5, "addWhiteList: uuids is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v7

    .line 371
    :cond_0
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWhiteList: uuids: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 379
    monitor-enter p0

    .line 380
    :try_start_0
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v4}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "BluetoothSecureManagerService"

    const-string/jumbo v5, "addWhiteList 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 384
    .local v1, "index":I
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWhiteList findWhiteListIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    if-gez v1, :cond_1

    .line 386
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->findWhiteListFreeIndex()I

    move-result v1

    .line 387
    :cond_1
    iget-object v4, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v5, "white_list_max_index"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 388
    .local v2, "max":I
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWhiteList max index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    if-le v1, v2, :cond_2

    .line 390
    const-string/jumbo v4, "white_list_max_index"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/app/BluetoothSecureManagerService;->packWhiteListValue(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, "v":Ljava/lang/String;
    const-string/jumbo v4, "BluetoothSecureManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addWhiteList index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; packed v:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 379
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "index":I
    .end local v2    # "max":I
    .end local v3    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public enableSecureMode(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 275
    const-string/jumbo v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableSecureMode enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string/jumbo v1, "secure_mode_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableWhiteList(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 339
    const-string/jumbo v0, "BluetoothSecureManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableWhiteList, enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string/jumbo v1, "white_list_enable"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/app/BluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 5
    .param p1, "valueName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 299
    const-string/jumbo v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSecureModeSetting, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :try_start_0
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSecureModeSetting name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v4
.end method

.method public getWhiteListCod(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 493
    const-string/jumbo v2, "BluetoothSecureManagerService"

    const-string/jumbo v3, "getWhiteListCod"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "values":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 501
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 502
    iget v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->cod:I

    return v2

    .line 503
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getWhiteListFirstIndex()I
    .locals 6

    .prologue
    .line 430
    const-string/jumbo v3, "BluetoothSecureManagerService"

    const-string/jumbo v4, "getWhiteListFirstIndex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 438
    .local v2, "max":I
    const-string/jumbo v3, "BluetoothSecureManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWhiteListFirstIndex: max: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_1

    .line 440
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit p0

    .line 442
    return v0

    .line 439
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    monitor-exit p0

    return v3

    .line 436
    .end local v0    # "i":I
    .end local v2    # "max":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 475
    const-string/jumbo v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "values":Ljava/lang/String;
    const-string/jumbo v2, "BluetoothSecureManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWhiteListName, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "; values: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 484
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 485
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->name:Ljava/lang/String;

    return-object v2

    .line 486
    :cond_0
    return-object v5
.end method

.method public getWhiteListNextIndex(I)I
    .locals 7
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v6, -0x1

    .line 452
    const-string/jumbo v3, "BluetoothSecureManagerService"

    const-string/jumbo v4, "getWhiteListNextIndex"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-ne p1, v6, :cond_0

    .line 459
    return v6

    .line 460
    :cond_0
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 462
    .local v2, "max":I
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    if-gt v0, v2, :cond_2

    .line 463
    invoke-direct {p0, v0}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v1

    .line 464
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3, v1}, Landroid/app/SharedPreferencesImpl;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p0

    .line 465
    return v0

    .line 462
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    .line 468
    return v6

    .line 460
    .end local v0    # "i":I
    .end local v2    # "max":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 510
    const-string/jumbo v2, "BluetoothSecureManagerService"

    const-string/jumbo v3, "getWhiteListUuids"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v2, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/app/SharedPreferencesImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "values":Ljava/lang/String;
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->unpackWhiteListValue(Ljava/lang/String;)Landroid/app/BluetoothSecureManagerService$WhiteListValue;

    move-result-object v0

    .line 518
    .local v0, "v":Landroid/app/BluetoothSecureManagerService$WhiteListValue;
    if-eqz v0, :cond_0

    .line 519
    iget-object v2, v0, Landroid/app/BluetoothSecureManagerService$WhiteListValue;->uuids:[Ljava/lang/String;

    return-object v2

    .line 520
    :cond_0
    return-object v5
.end method

.method public isSecureModeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 287
    const-string/jumbo v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "isSecureModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string/jumbo v1, "secure_mode_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteListEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 351
    const-string/jumbo v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "isWhiteListEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v1, "white_list_enable"

    invoke-virtual {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cod"    # I

    .prologue
    const/4 v5, 0x0

    .line 403
    const-string/jumbo v3, "BluetoothSecureManagerService"

    const-string/jumbo v4, "removeWhiteList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 412
    monitor-enter p0

    .line 413
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/app/BluetoothSecureManagerService;->findWhiteListIndex(Ljava/lang/String;I)I

    move-result v1

    .line 414
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 415
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v3}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 416
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    const-string/jumbo v4, "white_list_max_index"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/SharedPreferencesImpl;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 417
    .local v2, "max":I
    if-ne v2, v1, :cond_0

    .line 418
    const-string/jumbo v3, "white_list_max_index"

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 419
    :cond_0
    invoke-direct {p0, v1}, Landroid/app/BluetoothSecureManagerService;->getWhiteListKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "max":I
    :cond_1
    monitor-exit p0

    .line 423
    return v5

    .line 412
    .end local v1    # "index":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "valueName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 317
    const-string/jumbo v1, "BluetoothSecureManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSecureModeSetting, name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-direct {p0}, Landroid/app/BluetoothSecureManagerService;->enforcePermission()V

    .line 327
    iget-object v1, p0, Landroid/app/BluetoothSecureManagerService;->mPrefs:Landroid/app/SharedPreferencesImpl;

    invoke-virtual {v1}, Landroid/app/SharedPreferencesImpl;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 328
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Landroid/app/BluetoothSecureManagerService;->getSecureSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 329
    const-string/jumbo v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting calling apply()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    const-string/jumbo v1, "BluetoothSecureManagerService"

    const-string/jumbo v2, "setSecureModeSetting apply() returned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v1, 0x1

    return v1
.end method
