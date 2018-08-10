.class public Landroid/content/pm/split/SplitAssetDependencyLoader;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SplitAssetDependencyLoader.java"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader",
        "<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/split/SplitAssetLoader;"
    }
.end annotation


# instance fields
.field private mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private mCachedPaths:[[Ljava/lang/String;

.field private final mFlags:I

.field private final mSplitPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray",
            "<[I>;I)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    aput-object v1, v0, v4

    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    return-void
.end method

.method private static createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

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

    const/4 v2, 0x0

    move-object/from16 v0, p0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v20, p0, v2

    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_0

    invoke-static/range {v20 .. v20}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid package file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x64

    invoke-direct {v2, v4, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v21

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v21

    :cond_0
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x65

    invoke-direct {v2, v4, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected constructSplit(I[II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-ltz p3, :cond_0

    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p2, v2

    iget-object v4, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v3, p1

    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    aget-object v3, v3, p1

    iget v4, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    invoke-static {v3, v4}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;

    move-result-object v3

    aput-object v3, v2, p1

    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
