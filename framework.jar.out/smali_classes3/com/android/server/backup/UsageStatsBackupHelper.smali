.class public Lcom/android/server/backup/UsageStatsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "UsageStatsBackupHelper.java"


# static fields
.field static final BLOB_VERSION:I = 0x1

.field static final DEBUG:Z = false

.field static final KEY_USAGE_STATS:Ljava/lang/String; = "usage_stats"

.field static final TAG:Ljava/lang/String; = "UsgStatsBackupHelper"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "usage_stats"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v3, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 7

    const-string/jumbo v5, "usage_stats"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    array-length v5, p2

    add-int/lit8 v5, v5, -0x4

    new-array v3, v5, [B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v2, v4, p1, v3}, Landroid/app/usage/UsageStatsManagerInternal;->applyRestoredPayload(ILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getBackupPayload(Ljava/lang/String;)[B
    .locals 5

    const-string/jumbo v4, "usage_stats"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-class v4, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Landroid/app/usage/UsageStatsManagerInternal;->getBackupPayload(ILjava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method
