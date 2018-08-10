.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    return v3
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p1, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    :cond_1
    return v3
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    const/4 v11, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v7, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v8, v6}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    aput v8, v7, v0

    aget v8, v7, v0

    if-eq v8, v11, :cond_0

    new-instance v3, Landroid/content/ContentProviderOperation;

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Landroid/content/OperationApplicationException;

    const-string/jumbo v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, p1, v6, v9}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Landroid/content/OperationApplicationException;

    const-string/jumbo v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v8, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_5

    aget v8, v7, v0

    if-eq v8, v11, :cond_4

    new-instance v8, Landroid/content/ContentProviderResult;

    aget-object v9, v5, v0

    aget v10, v7, v0

    invoke-direct {v8, v9, v10}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v8, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v8, v4}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v5

    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v9, v4}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v8
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const/4 v1, 0x1

    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p5}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {p4, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const-string/jumbo v1, "r"

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_0

    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, p3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    invoke-virtual {v2, p2, p3, p4, v3}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v4

    :cond_1
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v2

    :cond_2
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    invoke-virtual {v2, p2, p3, p4, v3}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p1, p2, v3}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v2

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap2(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-wrap0(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v0}, Landroid/content/ContentProvider;->-wrap1(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method
