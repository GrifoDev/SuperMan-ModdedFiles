.class public Landroid/content/pm/split/DefaultSplitAssetLoader;
.super Ljava/lang/Object;
.source "DefaultSplitAssetLoader.java"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# instance fields
.field private final mBaseCodePath:Ljava/lang/String;

.field private mCachedAssetManager:Landroid/content/res/AssetManager;

.field private final mFlags:I

.field private final mSplitCodePaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    return-void
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid package file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x64

    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed adding asset path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x65

    invoke-direct {v0, v2, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_0
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    return-object v2

    :cond_0
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    :try_start_0
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mBaseCodePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    invoke-static {v1, v2, v3}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mSplitCodePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v20, v3, v2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mFlags:I

    move-object/from16 v0, v20

    invoke-static {v1, v0, v5}, Landroid/content/pm/split/DefaultSplitAssetLoader;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/pm/split/DefaultSplitAssetLoader;->mCachedAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/split/DefaultSplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method
