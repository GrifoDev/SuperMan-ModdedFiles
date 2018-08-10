.class public Landroid/sec/clipboard/data/file/FileManager;
.super Ljava/lang/Object;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Clipboard.FileManager"


# instance fields
.field private mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

.field private mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleID:I

.field private mRemoveIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Landroid/sec/clipboard/data/file/FileManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mRemoveIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Landroid/sec/clipboard/data/file/FileManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/FileManager;->mRemoveIdList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/sec/clipboard/data/file/FileManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager;->updateCategory()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mRemoveIdList:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mRemoveIdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mRemoveIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/sec/clipboard/data/file/FileManager$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/file/FileManager$1;-><init>(Landroid/sec/clipboard/data/file/FileManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private deleteDirectoryContent(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateCategory()V
    .locals 3

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v0, v0, -0x3e8

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RS: FileManager, add: knox case, user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v2, v2, -0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/clipboard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    add-int/lit16 v1, v1, -0x3e8

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileManager, add: GOOD CATEGORY, adding clip, cat value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/clipboard/secontainer/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0xc9

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    const-string/jumbo v0, "Clipboard.FileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FileManager, add: GENERIC CONTAINER CATEGORY, mHandleID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/clipboard/secontainer/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-static {v0, v1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    const-string/jumbo v1, "Clipboard.FileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add data..file system, handleid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public add(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_0
    const-string/jumbo v4, "Clipboard.FileManager"

    const-string/jumbo v5, "getDataByID: wrapData is not null, but wrapData.getClipData() returns null!"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "Clipboard.FileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mDataList.get("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") returns null!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v7
.end method

.method public getHandleId()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    return v0
.end method

.method public getNonDeletedClips(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reAddForKnox(I)V
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->reAddForKnox()V

    return-void
.end method

.method public refresh()V
    .locals 2

    const-string/jumbo v0, "Clipboard.FileManager"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public remove(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Clipboard.FileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed removing data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    if-nez v1, :cond_1

    return-object v5

    :cond_1
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    return-object v2
.end method

.method public remove(ZII)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    :cond_0
    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v3, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v0, 0x1

    if-ne p3, v0, :cond_3

    const-string/jumbo v5, "Clipboard.FileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "index is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v6, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    move v0, v1

    :cond_2
    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public removeAll(ZI)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    move v6, v4

    :goto_0
    if-ltz v6, :cond_4

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v9, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    :cond_5
    return v0
.end method

.method public removeClipboardDB()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    :cond_0
    return-void
.end method

.method public removeDataByID(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "Clipboard.FileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed removing data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v4, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    return v1
.end method

.method public resetOwnerClips(I)V
    .locals 3

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->resetOwnerClips(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(ILcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->save()V

    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method public sharedSize(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateProtectedStatusByID(Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v2

    if-ne v2, p2, :cond_1

    return v4

    :cond_1
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setProtected(Z)V

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update(Ljava/util/ArrayList;)V

    return v4
.end method
