.class public Landroid/sec/clipboard/data/file/WrapFileClipData;
.super Ljava/lang/Object;
.source "WrapFileClipData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "WrapFileClipData"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

.field private mDeletedUserList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:Ljava/io/File;

.field private mPath:Ljava/io/File;


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/data/file/WrapFileClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method static synthetic -get1(Landroid/sec/clipboard/data/file/WrapFileClipData;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/clipboard/util/FileHelper;->getNullFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-void
.end method

.method private loadClipboardData(Landroid/sec/clipboard/data/ClipboardData;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WrapFileClipData"

    const-string/jumbo v1, "Restoring data from ClipboardData to SemClipData."

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private loadData()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/util/FileHelper;->loadObjectFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->checkClipId()V

    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_1
    const/4 v3, 0x1

    return v3

    :pswitch_0
    iget-object v2, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->toLoad()V

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WrapFileClipData"

    const-string/jumbo v4, "SemTextClipData is empty. Hence return false"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_1
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "WrapFileClipData"

    const-string/jumbo v4, "SemImageClipData is not exist. Hence return false"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addDeletedUserList(I)V
    .locals 3

    const-string/jumbo v0, "WrapFileClipData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addDeletedUserList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->isDeletedUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->load()Z

    :cond_0
    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method public getDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-object v0
.end method

.method public isDeletedUser(I)Z
    .locals 2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    return v0
.end method

.method public load()Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadData()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    instance-of v1, v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadSemClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    return v1

    :cond_1
    instance-of v1, v0, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->loadClipboardData(Landroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->save()V

    const/4 v1, 0x1

    return v1

    :cond_2
    return v3

    :cond_3
    const-string/jumbo v1, "WrapFileClipData"

    const-string/jumbo v2, "While loading data, no matching class found!"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public reAddForKnox()V
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WrapFileClipData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reAddForKnox : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public resetOwnerClips(I)V
    .locals 4

    const-string/jumbo v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetOwnerClips : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const-string/jumbo v1, "WrapFileClipData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDeletedUserList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public save()V
    .locals 2

    iget-object v0, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/sec/clipboard/data/file/WrapFileClipData$1;

    invoke-direct {v1, p0}, Landroid/sec/clipboard/data/file/WrapFileClipData$1;-><init>(Landroid/sec/clipboard/data/file/WrapFileClipData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setClipData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setClipData(Landroid/content/ClipData;)V

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mClip:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-void
.end method

.method public setDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mDir:Ljava/io/File;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/file/WrapFileClipData;->mPath:Ljava/io/File;

    return-void
.end method
