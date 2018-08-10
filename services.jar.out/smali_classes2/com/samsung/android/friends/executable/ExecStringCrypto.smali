.class public Lcom/samsung/android/friends/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/samsung/android/friends/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecStringCrypto"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v5

    const-string/jumbo v6, "decryptResult"

    invoke-static {v0}, Lcom/samsung/android/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    :cond_2
    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v5

    const-string/jumbo v6, "decryptResult"

    invoke-static {v1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v3

    goto :goto_0
.end method

.method private getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "dataType"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v7, "decryptMultipleData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    new-instance v7, Lcom/samsung/android/friends/executable/-$Lambda$xUHLb4iibbz6QZBi3rS1SgDY6kk;

    invoke-direct {v7, v3}, Lcom/samsung/android/friends/executable/-$Lambda$xUHLb4iibbz6QZBi3rS1SgDY6kk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo v7, "decryptMultipleResult"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const-string/jumbo v7, "decryptMultipleData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v7, "paramList0"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {p0, v0, v4, v7}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "decryptMultipleResult"

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v8, "paramList1"

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v5

    const-string/jumbo v6, "encryptResult"

    invoke-static {v0}, Lcom/samsung/android/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    :cond_2
    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->create()Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v5

    const-string/jumbo v6, "encryptResult"

    invoke-static {v1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/friends/common/BundleFrs$Builder;

    move-result-object v3

    goto :goto_0
.end method

.method private getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "dataType"

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v7, "encryptMultipleData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_0

    new-instance v7, Lcom/samsung/android/friends/executable/-$Lambda$xUHLb4iibbz6QZBi3rS1SgDY6kk$1;

    invoke-direct {v7, v3}, Lcom/samsung/android/friends/executable/-$Lambda$xUHLb4iibbz6QZBi3rS1SgDY6kk$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string/jumbo v7, "encryptMultipleResult"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    const-string/jumbo v7, "encryptMultipleData"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v7, "paramList0"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {p0, v0, v4, v7}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v8, "encryptMultipleResult"

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [B

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v8, "paramList1"

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method static synthetic lambda$-com_samsung_android_friends_executable_ExecStringCrypto_2765(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$-com_samsung_android_friends_executable_ExecStringCrypto_3996(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private mergeEncryptedData([BLjava/util/ArrayList;Z)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Landroid/util/Pair",
            "<[B",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v10, 0x0

    return-object v10

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_0

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v9, v4

    invoke-static {p1, v2, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    if-eqz p3, :cond_2

    invoke-static {v1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    const-string/jumbo v11, "ExecStringCrypto"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mergeEncryptedData "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz p3, :cond_3

    const-string/jumbo v10, "en"

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, "crypt failed !!"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v10, v12}, Lcom/samsung/android/friends/util/LogFrs;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v10, 0x0

    return-object v10

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/friends/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v10, "de"

    goto :goto_2

    :cond_4
    array-length v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/2addr v2, v4

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    const/4 v10, 0x0

    return-object v10
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ExecStringCrypto"

    const-string/jumbo v1, "ActionSecurityUtil"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    sparse-switch p3, :sswitch_data_0

    :cond_0
    return-object v3

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->getEncryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/friends/executable/ExecStringCrypto;->getDecryptedMultipleData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x120003 -> :sswitch_0
        0x120004 -> :sswitch_1
        0x120010 -> :sswitch_2
        0x120011 -> :sswitch_3
    .end sparse-switch
.end method
