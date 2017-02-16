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


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/data/file/FileManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/sec/clipboard/data/file/FileManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/FileManager;->updateCategory()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILandroid/content/Context;)V
    .locals 1
    .param p1, "infoFile"    # Ljava/io/File;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 69
    iput-object p3, p0, Landroid/sec/clipboard/data/file/FileManager;->mContext:Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-direct {v0, p0, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;-><init>(Landroid/sec/clipboard/data/file/FileManager;Ljava/io/File;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 72
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 73
    iput p2, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    .line 68
    return-void
.end method

.method private deleteDirectoryContent(Ljava/io/File;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 148
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 151
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2

    .line 155
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateCategory()V
    .locals 3

    .prologue
    .line 114
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x44c

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x4aa

    if-gt v0, v1, :cond_1

    .line 115
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

    .line 116
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

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_2

    .line 118
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

    .line 119
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

    .line 120
    :cond_2
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0xc9

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    .line 121
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

    .line 122
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
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 136
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

    .line 137
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 139
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->save(Landroid/sec/clipboard/data/file/WrapFileClipData;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 142
    const/4 v1, 0x1

    return v1

    .line 144
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public add(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 2
    .param p1, "element"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 127
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->createData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 128
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 130
    const/4 v1, 0x1

    return v1

    .line 132
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->allDelete()V

    .line 277
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 275
    return-void
.end method

.method public get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 295
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 296
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    return-object v0

    .line 298
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v2, 0x0

    .line 310
    .local v2, "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 311
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipId()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "curID":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 318
    .end local v0    # "curID":Ljava/lang/String;
    :cond_0
    return-object v2

    .line 310
    .restart local v0    # "curID":Ljava/lang/String;
    .restart local v2    # "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHandleId()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mHandleID:I

    return v0
.end method

.method public getNonDeletedClips(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/content/clipboard/data/SemClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 208
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 209
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method public getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/WrapFileClipData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v2, "realDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 218
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-object v2
.end method

.method public getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 302
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 303
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    return-object v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public reAddForKnox(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 202
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->reAddForKnox()V

    .line 201
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "Clipboard.FileManager"

    const-string/jumbo v1, "refresh() - reload the mDataList "

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->load()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    .line 81
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x0

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 250
    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    .line 252
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
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

    .line 258
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 260
    if-nez v1, :cond_1

    .line 261
    return-object v5

    .line 263
    :cond_1
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    return-object v2
.end method

.method public remove(ZII)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 8
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I
    .param p3, "index"    # I

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    invoke-virtual {p0, p3}, Landroid/sec/clipboard/data/file/FileManager;->remove(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    .line 229
    :cond_0
    const/4 v2, 0x0

    .line 230
    .local v2, "retData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v0, 0x0

    .line 231
    .local v0, "realIndex":I
    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "wrap$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 232
    .local v3, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v3, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 233
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "realIndex":I
    .local v1, "realIndex":I
    if-ne p3, v0, :cond_3

    .line 234
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

    .line 235
    invoke-virtual {v3, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 236
    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 237
    .local v2, "retData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v5, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    move v0, v1

    .line 242
    .end local v1    # "realIndex":I
    .end local v2    # "retData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .restart local v0    # "realIndex":I
    :cond_2
    return-object v2

    .end local v0    # "realIndex":I
    .restart local v1    # "realIndex":I
    .local v2, "retData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v3    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_3
    move v0, v1

    .end local v1    # "realIndex":I
    .restart local v0    # "realIndex":I
    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 1
    .param p1, "clip"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 268
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(ZI)Z
    .locals 9
    .param p1, "isOwner"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "bRes":Z
    if-eqz p1, :cond_3

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v7, 0x0

    .line 163
    .local v7, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 165
    .local v4, "dataListSize":I
    move v6, v4

    .end local v1    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .local v6, "i":I
    :goto_0
    if-ltz v6, :cond_5

    .line 166
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 167
    .local v7, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    .line 168
    .local v1, "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    .line 171
    .local v5, "dir":Ljava/io/File;
    if-nez v5, :cond_2

    .line 172
    invoke-virtual {v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 174
    :cond_2
    if-eqz v5, :cond_0

    .line 175
    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/sec/clipboard/util/FileHelper;->delete(Ljava/io/File;)V

    .line 176
    const/4 v0, 0x1

    goto :goto_1

    .line 182
    .end local v1    # "clipboardData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "dataListSize":I
    .end local v5    # "dir":Ljava/io/File;
    .end local v6    # "i":I
    .end local v7    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_3
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "data$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 183
    .local v2, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    if-nez v8, :cond_4

    .line 184
    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 185
    const/4 v0, 0x1

    goto :goto_2

    .line 189
    .end local v2    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v3    # "data$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz v0, :cond_6

    .line 190
    iget-object v8, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 192
    :cond_6
    return v0
.end method

.method public removeClipboardDB()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->removeDB()V

    .line 93
    iput-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    .line 90
    :cond_0
    return-void
.end method

.method public removeDataByID(Ljava/lang/String;)Z
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v2

    .line 323
    .local v2, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const/4 v1, 0x0

    .line 325
    .local v1, "result":Z
    if-nez v2, :cond_0

    .line 326
    const/4 v3, 0x0

    return v3

    .line 329
    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 330
    .local v1, "result":Z
    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v0

    .line 332
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_1

    .line 333
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/FileManager;->deleteDirectoryContent(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 334
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

    .line 338
    .end local v0    # "dir":Ljava/io/File;
    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 339
    return v1
.end method

.method public resetOwnerClips(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 196
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 197
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->resetOwnerClips(I)V

    goto :goto_0

    .line 195
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    return-void
.end method

.method public set(ILcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v2, 0x0

    .line 99
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 100
    .local v0, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->setClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    .line 102
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->save()V

    .line 103
    iget-object v1, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v0, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 106
    .restart local v0    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    return-object v2
.end method

.method public sharedSize(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "sharedSize":I
    iget-object v3, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "wrapData$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 287
    .local v1, "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    .end local v1    # "wrapData":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public updateProtectedStatusByID(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isProtected"    # Z

    .prologue
    const/4 v3, 0x1

    .line 344
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v1

    .line 345
    .local v1, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-nez v1, :cond_0

    .line 346
    const/4 v2, 0x0

    return v2

    .line 349
    :cond_0
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v2

    if-ne v2, p2, :cond_1

    .line 350
    return v3

    .line 353
    :cond_1
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setProtected(Z)V

    .line 354
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 355
    .local v0, "index":I
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    check-cast v1, Landroid/sec/clipboard/data/file/WrapFileClipData;

    .line 356
    .restart local v1    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v2, p0, Landroid/sec/clipboard/data/file/FileManager;->mConnectFileSystem:Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager$ConnectFileSystem;->update()V

    .line 358
    return v3
.end method
