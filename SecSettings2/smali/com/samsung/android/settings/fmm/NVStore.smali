.class public Lcom/samsung/android/settings/fmm/NVStore;
.super Ljava/lang/Object;
.source "NVStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/fmm/NVStore$datatype;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNvData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public GetMTStatus()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    return v5

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    return v5

    :cond_2
    aget-object v3, v2, v6

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    return v6

    :cond_3
    return v5
.end method

.method public GetPhPWD()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    return-object v5

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ge v0, v3, :cond_2

    return-object v5

    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_4

    :cond_3
    return-object v5

    :cond_4
    aget-object v3, v2, v6

    return-object v3
.end method

.method public GetRec1()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2
    const/4 v3, 0x3

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec2()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2
    const/4 v3, 0x4

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec3()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2
    const/4 v3, 0x5

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec4()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2
    const/4 v3, 0x6

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetRec5()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "none"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "none"

    return-object v3

    :cond_2
    const/4 v3, 0x7

    aget-object v3, v2, v3

    return-object v3
.end method

.method public GetSenderName()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "Not Mentioned"

    return-object v3

    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetSmsMsg()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x8

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x9

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x50

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "Keep this message."

    return-object v3

    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredICCID()Ljava/lang/String;
    .locals 6

    const/16 v5, 0xb

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xc

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "00000000"

    return-object v3

    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x9

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_2
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x15

    if-le v3, v4, :cond_3

    const-string/jumbo v3, "0000"

    return-object v3

    :cond_3
    aget-object v3, v2, v5

    return-object v3
.end method

.method public GetStoredIMSI2()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "0000"

    return-object v0
.end method

.method public IsPhLockeEnabled()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    if-nez v3, :cond_0

    return v5

    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    const-string/jumbo v4, ";"

    invoke-direct {v1, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xb

    if-ge v0, v3, :cond_2

    return v5

    :cond_2
    const/16 v3, 0xa

    aget-object v3, v2, v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    return v3

    :cond_3
    return v5
.end method

.method public ReaddataFromNv()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v6, "/efs/sec_efs/mobiletracker.txt"

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v11, 0x100

    :try_start_2
    new-array v7, v11, [C

    invoke-virtual {v9, v7}, Ljava/io/InputStreamReader;->read([C)I

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>([C)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v10

    if-eqz v9, :cond_0

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    :goto_1
    return-object v10

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v2

    :goto_2
    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_4
    return-object v12

    :catch_3
    move-exception v3

    goto :goto_3

    :catch_4
    move-exception v3

    goto :goto_4

    :catch_5
    move-exception v1

    :goto_5
    if-eqz v8, :cond_4

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_5
    :goto_7
    return-object v12

    :catch_6
    move-exception v3

    goto :goto_6

    :catch_7
    move-exception v3

    goto :goto_7

    :catchall_0
    move-exception v11

    :goto_8
    if-eqz v8, :cond_6

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_7
    :goto_a
    throw v11

    :catch_8
    move-exception v3

    goto :goto_9

    :catch_9
    move-exception v3

    goto :goto_a

    :catchall_1
    move-exception v11

    move-object v4, v5

    goto :goto_8

    :catchall_2
    move-exception v11

    move-object v8, v9

    move-object v4, v5

    goto :goto_8

    :catch_a
    move-exception v1

    move-object v4, v5

    goto :goto_5

    :catch_b
    move-exception v1

    move-object v8, v9

    move-object v4, v5

    goto :goto_5

    :catch_c
    move-exception v2

    move-object v4, v5

    goto :goto_2

    :catch_d
    move-exception v2

    move-object v8, v9

    move-object v4, v5

    goto :goto_2
.end method

.method public writedata(Ljava/lang/String;Lcom/samsung/android/settings/fmm/NVStore$datatype;)V
    .locals 12

    const-string/jumbo v6, ""

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->ReaddataFromNv()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHPWD:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v5, "1"

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->IsPhLockeEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    iput-object v6, p0, Lcom/samsung/android/settings/fmm/NVStore;->mNvData:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_pwd"

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_2
    :try_start_0
    const-string/jumbo v4, "/efs/sec_efs/mobiletracker.txt"

    new-instance v8, Ljava/io/RandomAccessFile;

    const-string/jumbo v9, "rw"

    invoke-direct {v8, v4, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_3
    move-object v7, v8

    :cond_2
    :goto_4
    return-void

    :cond_3
    const-string/jumbo v5, "0"

    goto/16 :goto_0

    :cond_4
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->PHLOCK_STATE:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v5, "1"

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v5, "0"

    goto/16 :goto_5

    :cond_6
    sget-object v9, Lcom/samsung/android/settings/fmm/NVStore$datatype;->ENABLE_PHLOCK_FIRST:Lcom/samsung/android/settings/fmm/NVStore$datatype;

    if-ne p2, v9, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetMTStatus()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v5, "1"

    :goto_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSenderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/fmm/NVStore;->GetStoredIMSI2()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v5, "0"

    goto/16 :goto_6

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/fmm/NVStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mt_state"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :catch_0
    move-exception v3

    goto/16 :goto_3

    :catch_1
    move-exception v1

    :goto_7
    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v3

    goto/16 :goto_4

    :catch_3
    move-exception v2

    :goto_8
    if-eqz v7, :cond_2

    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v3

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :goto_9
    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v3

    goto/16 :goto_4

    :catchall_0
    move-exception v9

    :goto_a
    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_a
    :goto_b
    throw v9

    :catch_7
    move-exception v3

    goto :goto_b

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v7, v8

    goto :goto_9

    :catch_9
    move-exception v2

    move-object v7, v8

    goto :goto_8

    :catch_a
    move-exception v1

    move-object v7, v8

    goto :goto_7
.end method
