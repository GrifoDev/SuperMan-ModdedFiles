.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/ClipboardDataMgr$1;,
        Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentListOwnerUid:I

.field private mFileManager:Landroid/sec/clipboard/data/file/FileManager;

.field private mFileManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShared:Z

.field private mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

.field private final mMaxSize:I

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mUserManager:Landroid/os/UserManager;

.field private tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;


# direct methods
.method static synthetic -get0(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    iput-object p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(I)V

    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/data/file/FileManager;

    return-object v4

    :cond_1
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "/data/clipboard"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "clips.info"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v6, v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/sec/clipboard/data/file/FileManager;

    return-object v4

    :cond_3
    const/16 v4, 0x66

    if-ne p1, v4, :cond_4

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard/secontainer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "clips.info"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p1, v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createUserDBAndConnect, good container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    return-object v0

    :cond_4
    const/16 v4, 0xc9

    if-lt p1, v4, :cond_5

    const/16 v4, 0x1f4

    if-gt p1, v4, :cond_5

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard/secontainer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "clips.info"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p1, v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard/secontainer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    return-object v0

    :cond_5
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "clips.info"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p1, v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v4, :cond_6

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v4, v5}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_6
    if-eqz p1, :cond_7

    add-int/lit16 v4, p1, -0x3e8

    invoke-virtual {p0, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v4, v5}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_7
    return-object v0
.end method

.method private getAllSEContainerCategory()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v7

    :cond_0
    const-string/jumbo v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getAllSEContainerCategory"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAllSEContainerCategory, cat result from query:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "getAllSEContainerCategory"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "getAllSEContainerCategory"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAllSEContainerCategory success, return res"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAllSEContainerCategory query error, return -1"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v7
.end method

.method private getFileManagerIndexById(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    add-int/lit16 v2, p1, 0x3e8

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", i :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find index of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method private getUserId()I
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserId is BBC or DualAppp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private initializeClipboardDataMgr(I)V
    .locals 12

    const/4 v11, 0x0

    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "/data/clipboard"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "clips.info"

    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v11, v10}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "add multi user db...id :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    add-int/lit16 v0, v5, 0x3e8

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "RS:add multi user db...cat :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "secondary user usecase :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v0, v5, 0x3e8

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private isPersonaManagerEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z
    .locals 13

    const/4 v12, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    monitor-exit p0

    return v12

    :cond_0
    const/4 v8, -0x1

    :try_start_1
    iget v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v6, v10, :cond_5

    add-int/lit8 v5, v6, -0x1

    :goto_0
    if-ltz v5, :cond_2

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v5}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    if-eqz v3, :cond_4

    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    sget-object v10, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[addData] deleteData.isProtected() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v10

    if-nez v10, :cond_4

    move v8, v5

    :cond_2
    if-ltz v8, :cond_3

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v8}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v10

    iput-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :cond_3
    :goto_1
    monitor-exit p0

    return v1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_6

    add-int/lit16 v2, p2, 0x3e8

    :goto_2
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    if-eq p2, v10, :cond_9

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_7

    add-int/lit16 v2, p2, 0x3e8

    goto :goto_2

    :cond_7
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    move v2, p2

    goto :goto_2

    :cond_9
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .locals 5

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findFileManagerIndex. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can not find file manager. id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    return v2
.end method

.method public getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    if-gez v2, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    :cond_3
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not allow! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    :cond_5
    return-object v8
.end method

.method public getCurrentListOwnerUid()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    return v0
.end method

.method public getFileManagerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12

    const/4 v11, 0x0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    const/4 v0, 0x0

    if-ge p1, v6, :cond_1

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v4, 0x0

    const/4 v1, 0x0

    move v7, v6

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    if-gez v1, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v8, v7, v5

    if-ge p1, v8, :cond_3

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-int v10, p1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v8

    :cond_3
    add-int/2addr v7, v5

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "next : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not allow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "overflow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPersonaId()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12

    const/4 v11, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v8

    if-lez v8, :cond_0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v6

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in own condtn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemClipData;

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "knoxdata"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v6

    move-object v4, v3

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in knox condtn"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "before return latestdatal"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public getdeletedItem()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .locals 10

    const-wide/16 v8, -0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    :goto_0
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isManagedProfile for userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isManagedProfile() Exception!"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v5

    cmp-long v6, v2, v8

    if-eqz v6, :cond_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .locals 4

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadSEContainerDB, category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", previous category:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadSEContainerDB, findFileManagerIndex returned -1, create db, category :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 7

    const/4 v6, -0x1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentListIndex :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    add-int/lit16 v0, p1, 0x3e8

    :goto_0
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "ADDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "REMOVED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    if-eq v1, v6, :cond_5

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    goto :goto_1

    :cond_5
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "SWITCHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-ne v0, v3, :cond_7

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USER_SWITCHED, but same user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", category: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mCurrentListIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v3, v6, :cond_8

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RS, multiUserMode, findFileManagerIndex returned index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", now getting relevant datalist with handleid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_1

    :cond_9
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "multiUserMode_Called wrong mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 6

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "reAddForKnox"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    :cond_0
    return-void
.end method

.method public removeAll()Z
    .locals 13

    const/4 v0, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v6, 0x1

    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    if-gez v2, :cond_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    const/4 v9, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public removeClipByID(Ljava/lang/String;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v7

    iget v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "removeClipById - remove SharedData : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v11

    :cond_0
    return v10

    :cond_1
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/file/FileManager;->removeDataByID(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v11

    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_6

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v8, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v3

    if-gez v3, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v11

    :cond_5
    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not allow! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return v10
.end method

.method public removeData(I)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "inside removeData method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    if-ge p1, v6, :cond_1

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    xor-int/lit8 v11, v11, 0x1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v8, v11, v12, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    return v8

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v7, v6

    const/4 v5, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    if-gez v1, :cond_2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int v8, v7, v5

    if-ge p1, v8, :cond_3

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "return : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-int v12, p1, v7

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v9

    :cond_3
    add-int/2addr v7, v5

    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "next : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return v10
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .locals 8

    const/4 v7, -0x1

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : userId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    add-int/lit16 v0, p2, 0x3e8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    if-eq v3, v7, :cond_0

    if-eqz p1, :cond_0

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "replaceWithTargetForUser : targetId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    if-eq v2, v7, :cond_0

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .locals 5

    const-string/jumbo v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findFileManagerIndex return an invalid index. id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action secontainer added for category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", creating clipboard db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public setdeletedItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-void
.end method

.method public sharedSize()I
    .locals 3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingPersonalDataToKnox(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not allowed sharing personal data to knox"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v1

    return v1
.end method

.method public size()I
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "policy is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v9}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_1

    :cond_2
    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data list is less than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    add-int/2addr v6, v1

    return v6

    :cond_4
    return v1
.end method

.method public updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    const/4 v4, 0x0

    const-string/jumbo v2, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
