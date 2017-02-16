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

    .prologue
    .line 61
    const-class v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 3
    .param p1, "size"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "shared"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    .line 101
    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    .line 108
    iput v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 110
    iput-boolean v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 112
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 113
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 114
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 117
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    .line 118
    iput-object p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    .line 119
    iput-boolean p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    .line 120
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 121
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    .line 122
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(I)V

    .line 116
    return-void
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 6
    .param p1, "cat"    # I

    .prologue
    const/4 v5, 0x0

    .line 338
    const/4 v0, 0x0

    .line 340
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    add-int/lit16 v3, p1, -0x3e8

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 342
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 343
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    return-object v3

    .line 345
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/clipboard"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v5, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 348
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-object v0

    .line 352
    .end local v1    # "index":I
    .end local v2    # "rootPath":Ljava/io/File;
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 353
    .restart local v1    # "index":I
    if-ltz v1, :cond_2

    .line 354
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    return-object v3

    .line 357
    :cond_2
    const/16 v3, 0x66

    if-ne p1, v3, :cond_3

    .line 358
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 360
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createUserDBAndConnect, good container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {v2}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    .line 363
    return-object v0

    .line 364
    .end local v2    # "rootPath":Ljava/io/File;
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_3
    const/16 v3, 0xc9

    if-lt p1, v3, :cond_4

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_4

    .line 365
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 367
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard/secontainer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 370
    return-object v0

    .line 373
    .end local v2    # "rootPath":Ljava/io/File;
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v2    # "rootPath":Ljava/io/File;
    new-instance v0, Landroid/sec/clipboard/data/file/FileManager;

    .end local v0    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "clips.info"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1, v4}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    .line 375
    .local v0, "fm":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-boolean v3, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v3, :cond_5

    .line 378
    const/16 v3, 0x44c

    if-gt v3, p1, :cond_5

    const/16 v3, 0x4aa

    if-gt p1, v3, :cond_5

    .line 379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    .line 382
    :cond_5
    if-eqz p1, :cond_6

    add-int/lit16 v3, p1, -0x3e8

    invoke-virtual {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 385
    :cond_6
    :goto_0
    return-object v0

    .line 383
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/clipboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v3, v4}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    goto :goto_0
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

    .prologue
    const/4 v2, 0x0

    .line 403
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 404
    .local v7, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 405
    return-object v7

    .line 408
    :cond_0
    const-string/jumbo v0, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 409
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getAllSEContainerCategory"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 410
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 412
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 414
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

    .line 415
    const-string/jumbo v0, "getAllSEContainerCategory"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 427
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAllSEContainerCategory success, return res"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-object v7

    .line 417
    :catchall_0
    move-exception v0

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    throw v0

    .line 421
    :cond_2
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getAllSEContainerCategory query error, return -1"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    if-eqz v6, :cond_3

    .line 423
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    :cond_3
    return-object v7
.end method

.method private getFileManagerIndexById(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 457
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    add-int/lit16 v2, p1, 0x3e8

    if-ne v1, v2, :cond_0

    .line 458
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

    .line 459
    return v0

    .line 456
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
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

    .line 463
    const/4 v1, -0x1

    return v1
.end method

.method private getUserId()I
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 143
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 144
    .local v1, "userId":I
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 146
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getUserId is BBC"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    return v1
.end method

.method private initializeClipboardDataMgr(I)V
    .locals 13
    .param p1, "size"    # I

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x0

    .line 196
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 198
    new-instance v6, Ljava/io/File;

    const-string/jumbo v8, "/data/clipboard"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v6, "rootPath":Ljava/io/File;
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

    .line 201
    const-string/jumbo v2, "clips.info"

    .line 204
    .local v2, "clipFile":Ljava/lang/String;
    new-instance v8, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v11, v10}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    .line 205
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iput v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 209
    const/4 v7, 0x0

    .line 210
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    if-eqz v8, :cond_3

    .line 211
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v7

    .line 212
    .local v7, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 213
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_3

    .line 214
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 213
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v5, v8, Landroid/content/pm/UserInfo;->id:I

    .line 217
    .local v5, "id":I
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

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "cat":I
    if-lt v5, v12, :cond_2

    const/16 v8, 0xc2

    if-gt v5, v8, :cond_2

    .line 220
    add-int/lit16 v0, v5, 0x3e8

    .line 221
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

    .line 222
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    .line 223
    :cond_2
    if-eqz v5, :cond_0

    if-ge v5, v12, :cond_0

    invoke-virtual {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 225
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

    .line 226
    add-int/lit16 v0, v5, 0x3e8

    .line 227
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    .line 233
    .end local v0    # "cat":I
    .end local v3    # "i":I
    .end local v5    # "id":I
    .end local v7    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    const/4 v1, 0x0

    .line 234
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "category":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 236
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 237
    .restart local v3    # "i":I
    invoke-direct {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    .line 195
    .end local v3    # "i":I
    .end local v4    # "i$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private isPersonaManagerEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 130
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_0

    .line 131
    return v1

    .line 133
    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    .line 134
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    .line 138
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
    .locals 14
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;
    .param p2, "callingId"    # I

    .prologue
    const/16 v13, 0x64

    const/4 v12, 0x0

    monitor-enter p0

    .line 616
    const/4 v1, 0x1

    .line 617
    .local v1, "Result":Z
    :try_start_0
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 618
    .local v6, "iSize":I
    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 619
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 620
    .local v9, "textValue":Ljava/lang/String;
    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    monitor-exit p0

    .line 621
    return v12

    .line 626
    .end local v9    # "textValue":Ljava/lang/String;
    :cond_0
    const/4 v8, -0x1

    .line 627
    .local v8, "index":I
    :try_start_1
    iget v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v6, v10, :cond_5

    .line 628
    add-int/lit8 v5, v6, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_2

    .line 629
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v5}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    .line 630
    .local v3, "deleteData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v3, :cond_4

    .line 631
    sget-boolean v10, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 632
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

    .line 634
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v10

    if-nez v10, :cond_4

    .line 635
    move v8, v5

    .line 640
    .end local v3    # "deleteData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_2
    if-ltz v8, :cond_3

    .line 641
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v8}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v10

    iput-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 642
    invoke-virtual {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    .line 643
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .end local v1    # "Result":Z
    .end local v5    # "i":I
    :cond_3
    :goto_1
    monitor-exit p0

    .line 666
    return v1

    .line 628
    .restart local v1    # "Result":Z
    .restart local v3    # "deleteData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 646
    .end local v3    # "deleteData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v5    # "i":I
    :cond_5
    const/4 v2, 0x0

    .line 647
    .local v2, "cat":I
    move/from16 v0, p2

    if-lt v0, v13, :cond_6

    const/16 v10, 0xc2

    move/from16 v0, p2

    if-gt v0, v10, :cond_6

    .line 648
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x3e8

    .line 656
    :goto_2
    :try_start_2
    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v7

    .line 657
    .local v7, "idx":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_9

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    move/from16 v0, p2

    if-eq v0, v10, :cond_9

    .line 658
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v1

    .local v1, "Result":Z
    goto :goto_1

    .line 649
    .end local v7    # "idx":I
    .local v1, "Result":Z
    :cond_6
    if-eqz p2, :cond_7

    move/from16 v0, p2

    if-ge v0, v13, :cond_7

    .line 650
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 653
    :cond_7
    move/from16 v2, p2

    goto :goto_2

    .line 650
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v10

    if-nez v10, :cond_7

    .line 651
    move/from16 v0, p2

    add-int/lit16 v2, v0, 0x3e8

    .line 650
    goto :goto_2

    .line 660
    .restart local v7    # "idx":I
    :cond_9
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .local v1, "Result":Z
    goto :goto_1

    .line 663
    .end local v2    # "cat":I
    .end local v7    # "idx":I
    .local v1, "Result":Z
    :catch_0
    move-exception v4

    .line 664
    .local v4, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "iSize":I
    .end local v8    # "index":I
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 243
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

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 246
    const/4 v0, 0x0

    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 247
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 248
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 249
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

    .line 250
    return v0

    .line 246
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
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

    .line 255
    const/4 v2, -0x1

    return v2
.end method

.method public getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 839
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    .line 843
    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 844
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    .line 846
    .local v4, "personaIDs":[I
    if-eqz v4, :cond_4

    array-length v5, v4

    if-lez v5, :cond_4

    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "fileManagerIndex":I
    const/4 v1, 0x0

    .line 850
    .local v1, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v3, 0x0

    .end local v1    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    .local v3, "index":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 851
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 852
    aget v5, v4, v3

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    .line 854
    if-gez v2, :cond_2

    .line 850
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    :cond_2
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 859
    .local v1, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    .line 865
    .end local v1    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    :cond_3
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not allow! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 871
    .end local v2    # "fileManagerIndex":I
    .end local v3    # "index":I
    .end local v4    # "personaIDs":[I
    :cond_4
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5
.end method

.method public getCurrentListOwnerUid()I
    .locals 1

    .prologue
    .line 166
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

    .prologue
    .line 126
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x0

    .line 550
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 551
    .local v6, "myListSize":I
    const/4 v0, 0x0

    .line 552
    .local v0, "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-ge p1, v6, :cond_1

    .line 553
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    .line 590
    .end local v0    # "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    :goto_0
    return-object v0

    .line 555
    .restart local v0    # "clipData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 556
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 558
    .local v2, "ids":[I
    if-eqz v2, :cond_0

    array-length v8, v2

    if-lez v8, :cond_0

    .line 559
    const/4 v4, 0x0

    .line 560
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    const/4 v1, 0x0

    .line 561
    .local v1, "fileManagerIndex":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .local v5, "listSize":I
    const/4 v3, 0x0

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .local v3, "idsIndex":I
    :goto_1
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 562
    array-length v8, v2

    if-ge v3, v8, :cond_5

    .line 563
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v9, v2, v3

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 564
    aget v8, v2, v3

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    .line 566
    if-gez v1, :cond_2

    .line 561
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 570
    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 571
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 572
    add-int v8, v7, v5

    if-ge p1, v8, :cond_3

    .line 573
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

    .line 574
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v8

    .line 576
    :cond_3
    add-int/2addr v7, v5

    .line 577
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

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 580
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    :cond_4
    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not allow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 583
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

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getPersonaId()I
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "userId":I
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_1

    .line 154
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    goto :goto_0
.end method

.method public getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 596
    .local v1, "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_start_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v4

    .line 597
    .local v4, "userId":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v3, "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 599
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    .end local v1    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v3    # "nonDeletedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .end local v4    # "userId":I
    :goto_0
    return-object v1

    .line 600
    .restart local v1    # "Result":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12
    .param p1, "index"    # I

    .prologue
    const/4 v11, 0x0

    .line 775
    const/4 v4, 0x0

    .line 776
    .local v4, "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const-wide/16 v6, 0x0

    .line 777
    .local v6, "timestamp":J
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 778
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    .line 779
    .local v4, "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v6

    .line 780
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

    .line 782
    .end local v4    # "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 783
    .local v2, "ids":[I
    if-eqz v2, :cond_3

    .line 784
    const/4 v5, 0x0

    .line 785
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    const/4 v3, 0x0

    .line 786
    .local v3, "knoxData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    const/4 v0, -0x1

    .line 788
    .local v0, "fileManagerIndex":I
    const/4 v1, 0x0

    .end local v3    # "knoxData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    .local v1, "i":I
    :goto_0
    array-length v8, v2

    if-ge v1, v8, :cond_3

    .line 789
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v9, v2, v1

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 790
    aget v8, v2, v1

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    .line 792
    if-gez v0, :cond_2

    .line 788
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 796
    :cond_2
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 798
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 799
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 800
    .local v3, "knoxData":Lcom/samsung/android/content/clipboard/data/SemClipData;
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

    .line 801
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_1

    .line 802
    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v6

    .line 803
    move-object v4, v3

    .line 804
    .restart local v4    # "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
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

    .line 810
    .end local v0    # "fileManagerIndex":I
    .end local v1    # "i":I
    .end local v3    # "knoxData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v4    # "latestData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/content/clipboard/data/SemClipData;>;"
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

    .line 811
    return-object v4
.end method

.method public getdeletedItem()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, -0x1

    .line 170
    const-wide/16 v2, -0x1

    .line 171
    .local v2, "origId":J
    const/4 v1, 0x0

    .line 173
    .local v1, "isManagedProfile":Z
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 174
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 175
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    .line 176
    .local v1, "isManagedProfile":Z
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

    .line 182
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .end local v1    # "isManagedProfile":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
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

    .line 187
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "isManagedProfile() Exception!"

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const/4 v1, 0x0

    .line 182
    .local v1, "isManagedProfile":Z
    cmp-long v5, v2, v8

    if-eqz v5, :cond_0

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 181
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "isManagedProfile":Z
    :catchall_0
    move-exception v5

    .line 182
    cmp-long v6, v2, v8

    if-eqz v6, :cond_1

    .line 183
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    :cond_1
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 389
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

    .line 390
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 392
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 393
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    .line 394
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    .line 388
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 396
    .restart local v0    # "index":I
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

    .line 397
    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "mode"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x64

    const/4 v6, -0x1

    .line 292
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

    .line 293
    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "cat":I
    if-lt p1, v7, :cond_1

    const/16 v3, 0xc2

    if-gt p1, v3, :cond_1

    .line 297
    add-int/lit16 v0, p1, 0x3e8

    .line 303
    :goto_0
    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 304
    const-string/jumbo v3, "ADDED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 305
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    .line 291
    :cond_0
    :goto_1
    return-void

    .line 298
    :cond_1
    if-eqz p1, :cond_2

    if-ge p1, v7, :cond_2

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    :cond_2
    move v0, p1

    goto :goto_0

    .line 298
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 299
    add-int/lit16 v0, p1, 0x3e8

    .line 298
    goto :goto_0

    .line 306
    :cond_4
    const-string/jumbo v3, "REMOVED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 307
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    .line 308
    .local v1, "deleteIndex":I
    if-eq v1, v6, :cond_5

    .line 309
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 310
    .local v2, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 312
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    goto :goto_1

    .line 316
    .end local v2    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
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

    .line 318
    .end local v1    # "deleteIndex":I
    :cond_6
    const-string/jumbo v3, "SWITCHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 319
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-ne v0, v3, :cond_7

    .line 320
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

    .line 321
    return-void

    .line 323
    :cond_7
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 324
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v3, v6, :cond_8

    .line 325
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    .line 326
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

    .line 328
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

    .line 329
    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_1

    .line 332
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
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 760
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "reAddForKnox"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v2, 0x0

    .line 762
    .local v2, "listData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    .line 764
    .local v0, "dataListSize":I
    const/4 v1, 0x0

    .end local v2    # "listData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 765
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    .line 766
    .local v2, "listData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 767
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    .line 768
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

    .line 759
    .end local v2    # "listData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_0
    return-void

    .line 764
    .restart local v2    # "listData":Lcom/samsung/android/content/clipboard/data/SemClipData;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    .line 285
    :cond_0
    return-void
.end method

.method public removeAll()Z
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "bRes":Z
    const/4 v9, 0x0

    .line 672
    .local v9, "ownRes":Z
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v6, 0x1

    .line 674
    .local v6, "isOwner":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    .line 675
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v3

    .line 676
    .local v3, "ids":[I
    if-eqz v3, :cond_4

    .line 677
    const/4 v8, 0x0

    .line 678
    .local v8, "listSize":I
    const/4 v2, 0x0

    .line 679
    .local v2, "fileManagerIndex":I
    const/4 v7, 0x0

    .line 680
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v4, 0x0

    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .local v4, "idsIndex":I
    :goto_1
    array-length v10, v3

    if-ge v4, v10, :cond_4

    .line 681
    aget v10, v3, v4

    invoke-direct {p0, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    .line 683
    if-gez v2, :cond_2

    .line 680
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 672
    .end local v2    # "fileManagerIndex":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v6    # "isOwner":Z
    .end local v8    # "listSize":I
    :cond_1
    const/4 v6, 0x0

    .restart local v6    # "isOwner":Z
    goto :goto_0

    .line 687
    .restart local v2    # "fileManagerIndex":I
    .restart local v3    # "ids":[I
    .restart local v4    # "idsIndex":I
    .restart local v8    # "listSize":I
    :cond_2
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 689
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 690
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 691
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_2
    if-ge v5, v8, :cond_0

    .line 692
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v10}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v10

    if-nez v10, :cond_3

    .line 693
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 694
    const/4 v9, 0x1

    .line 691
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 701
    .end local v2    # "fileManagerIndex":I
    .end local v3    # "ids":[I
    .end local v4    # "idsIndex":I
    .end local v5    # "index":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v8    # "listSize":I
    :cond_4
    iget-object v12, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-eqz v10, :cond_6

    move v10, v11

    :goto_3
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v11

    invoke-virtual {v12, v10, v11}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 705
    .end local v0    # "bRes":Z
    :goto_4
    if-eqz v6, :cond_5

    if-eqz v9, :cond_5

    .line 706
    const/4 v0, 0x1

    .line 708
    :cond_5
    return v0

    .line 701
    .restart local v0    # "bRes":Z
    :cond_6
    const/4 v10, 0x1

    goto :goto_3

    .line 702
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public removeClipByID(Ljava/lang/String;)Z
    .locals 12
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 875
    const/4 v6, 0x0

    .line 876
    .local v6, "result":Z
    const/4 v0, 0x0

    .line 879
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :try_start_0
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, p1}, Landroid/sec/clipboard/data/file/FileManager;->removeDataByID(Ljava/lang/String;)Z

    move-result v6

    .line 880
    .local v6, "result":Z
    if-eqz v6, :cond_0

    .line 881
    return v11

    .line 885
    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 886
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v7}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 888
    .local v5, "personaIDs":[I
    if-eqz v5, :cond_4

    array-length v7, v5

    if-lez v7, :cond_4

    .line 889
    const/4 v3, 0x0

    .line 890
    .local v3, "fileManagerIndex":I
    const/4 v2, 0x0

    .line 892
    .local v2, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v4, 0x0

    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    .local v4, "index":I
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_4

    .line 893
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v8, v5, v4

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 894
    aget v7, v5, v4

    invoke-direct {p0, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v3

    .line 896
    if-gez v3, :cond_2

    .line 892
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 900
    :cond_2
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 901
    .local v2, "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    .line 902
    .local v0, "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v0, :cond_1

    .line 903
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 904
    return v11

    .line 907
    .end local v0    # "data":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .end local v2    # "fileManager":Landroid/sec/clipboard/data/file/FileManager;
    :cond_3
    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "not allow! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v5, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 912
    .end local v3    # "fileManagerIndex":I
    .end local v4    # "index":I
    .end local v5    # "personaIDs":[I
    .end local v6    # "result":Z
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 916
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    return v10
.end method

.method public removeData(I)Z
    .locals 13
    .param p1, "index"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 719
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

    .line 722
    :try_start_0
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v8}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    .line 723
    .local v6, "size":I
    if-ge p1, v6, :cond_2

    .line 724
    iget-object v11, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    if-eqz v8, :cond_0

    move v8, v10

    :goto_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v12

    invoke-virtual {v11, v8, v12, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v8

    if-eqz v8, :cond_1

    move v8, v9

    :goto_1
    return v8

    :cond_0
    move v8, v9

    goto :goto_0

    :cond_1
    move v8, v10

    goto :goto_1

    .line 726
    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 727
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v8}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v2

    .line 728
    .local v2, "ids":[I
    if-eqz v2, :cond_5

    array-length v8, v2

    if-lez v8, :cond_5

    .line 729
    const/4 v4, 0x0

    .line 730
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    const/4 v1, 0x0

    .line 732
    .local v1, "fileManagerIndex":I
    const/4 v3, 0x0

    .local v3, "idsIndex":I
    move v7, v6

    .local v7, "totalSize":I
    const/4 v5, 0x0

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .local v5, "listSize":I
    :goto_2
    array-length v8, v2

    if-ge v3, v8, :cond_5

    .line 733
    aget v8, v2, v3

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v1

    .line 735
    if-gez v1, :cond_3

    .line 732
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 739
    :cond_3
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 740
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 741
    add-int v8, v7, v5

    if-ge p1, v8, :cond_4

    .line 742
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

    .line 743
    sub-int v8, p1, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/WrapFileClipData;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 744
    return v9

    .line 746
    :cond_4
    add-int/2addr v7, v5

    .line 747
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

    aget v12, v2, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    goto :goto_3

    .line 753
    .end local v1    # "fileManagerIndex":I
    .end local v2    # "ids":[I
    .end local v3    # "idsIndex":I
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/sec/clipboard/data/file/WrapFileClipData;>;"
    .end local v5    # "listSize":I
    .end local v6    # "size":I
    .end local v7    # "totalSize":I
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 756
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    return v10
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .locals 9
    .param p1, "dataList"    # Landroid/sec/clipboard/data/ClipboardDataMgr;
    .param p2, "userId"    # I

    .prologue
    const/16 v8, 0x64

    const/4 v7, -0x1

    .line 259
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

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "cat":I
    if-lt p2, v8, :cond_1

    const/16 v4, 0xc2

    if-gt p2, v4, :cond_1

    .line 262
    add-int/lit16 v0, p2, 0x3e8

    .line 268
    :goto_0
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    .line 269
    .local v3, "targetId":I
    if-eq v3, v7, :cond_0

    if-eqz p1, :cond_0

    .line 270
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

    .line 271
    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    .line 272
    .local v2, "sourceId":I
    if-eq v2, v7, :cond_0

    .line 273
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 274
    .local v1, "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
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

    .line 275
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 276
    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    .line 277
    iput v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    .line 258
    .end local v1    # "sourceDataList":Landroid/sec/clipboard/data/file/FileManager;
    .end local v2    # "sourceId":I
    :cond_0
    return-void

    .line 263
    .end local v3    # "targetId":I
    :cond_1
    if-eqz p2, :cond_2

    if-ge p2, v8, :cond_2

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 266
    :cond_2
    move v0, p2

    goto :goto_0

    .line 263
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    add-int/lit16 v0, p2, 0x3e8

    .line 263
    goto :goto_0
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "category"    # I

    .prologue
    .line 432
    const-string/jumbo v2, "android.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 433
    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    .line 435
    .local v0, "deleteIndex":I
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 436
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    .line 439
    :cond_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 440
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    .line 441
    .local v1, "mgr":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v1, :cond_1

    .line 442
    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    .line 443
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    .line 431
    .end local v0    # "deleteIndex":I
    .end local v1    # "mgr":Landroid/sec/clipboard/data/file/FileManager;
    :cond_1
    :goto_0
    return-void

    .line 447
    .restart local v0    # "deleteIndex":I
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

    .line 449
    .end local v0    # "deleteIndex":I
    :cond_3
    const-string/jumbo v2, "android.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
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

    .line 451
    invoke-direct {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_0
.end method

.method public setdeletedItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0
    .param p1, "data"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    .line 925
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 924
    return-void
.end method

.method public sharedSize()I
    .locals 3

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v0

    .line 513
    .local v0, "userId":I
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingPersonalDataToKnox(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 514
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not allowed sharing personal data to knox"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 516
    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v1

    return v1
.end method

.method public size()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 471
    const/4 v1, 0x0

    .line 473
    .local v1, "finalSize":I
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v6

    if-nez v6, :cond_3

    .line 474
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaIds()[I

    move-result-object v4

    .line 475
    .local v4, "ids":[I
    if-eqz v4, :cond_3

    .line 476
    const/4 v2, 0x0

    .line 477
    .local v2, "fm":Landroid/sec/clipboard/data/file/FileManager;
    const/4 v5, 0x0

    .line 478
    .local v5, "isAllowed":Z
    const/4 v0, -0x1

    .line 480
    .local v0, "fileManagerIndex":I
    const/4 v3, 0x0

    .end local v2    # "fm":Landroid/sec/clipboard/data/file/FileManager;
    .end local v5    # "isAllowed":Z
    .local v3, "i":I
    :goto_0
    array-length v6, v4

    if-ge v3, v6, :cond_3

    .line 481
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    aget v7, v4, v3

    invoke-virtual {v6, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    .line 482
    .local v5, "isAllowed":Z
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

    aget v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    if-eqz v5, :cond_0

    .line 485
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v3, :cond_2

    .line 486
    aget v6, v4, v3

    invoke-direct {p0, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v0

    .line 488
    if-gez v0, :cond_1

    .line 480
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_1
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    .line 494
    .local v2, "fm":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v2, :cond_0

    .line 495
    invoke-virtual {v2, v9}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v6

    add-int/2addr v1, v6

    goto :goto_1

    .line 498
    .end local v2    # "fm":Landroid/sec/clipboard/data/file/FileManager;
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

    .line 505
    .end local v0    # "fileManagerIndex":I
    .end local v3    # "i":I
    .end local v4    # "ids":[I
    .end local v5    # "isAllowed":Z
    :cond_3
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v6, :cond_4

    .line 506
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    add-int/2addr v6, v1

    return v6

    .line 508
    :cond_4
    return v1
.end method

.method public updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .prologue
    const/4 v1, 0x0

    .line 817
    if-eqz p2, :cond_1

    .line 818
    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 820
    :cond_1
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateData-ClipboardData is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    return v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 825
    return v1
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    .line 525
    .local v0, "fmg":Landroid/sec/clipboard/data/file/FileManager;
    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    .line 527
    .local v3, "size":I
    const/4 v4, 0x0

    .line 528
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    const-string/jumbo v2, ""

    .line 529
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 530
    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v4

    .line 531
    .local v4, "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    if-eqz v4, :cond_0

    .line 532
    invoke-virtual {v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 534
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 535
    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "size":I
    .end local v4    # "wrap":Landroid/sec/clipboard/data/file/WrapFileClipData;
    :cond_1
    return-void
.end method
