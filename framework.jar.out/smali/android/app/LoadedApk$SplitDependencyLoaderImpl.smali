.class Landroid/app/LoadedApk$SplitDependencyLoaderImpl;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SplitDependencyLoaderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader",
        "<",
        "Landroid/content/pm/PackageManager$NameNotFoundException;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCachedClassLoaders:[Ljava/lang/ClassLoader;

.field private final mCachedResourcePaths:[[Ljava/lang/String;

.field final synthetic this$0:Landroid/app/LoadedApk;


# direct methods
.method constructor <init>(Landroid/app/LoadedApk;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[I>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p1}, Landroid/app/LoadedApk;->-get2(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-static {p1}, Landroid/app/LoadedApk;->-get2(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    return-void
.end method

.method private ensureSplitLoaded(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get2(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Split name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' is not installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->loadDependenciesForSplit(I)V

    return v0
.end method


# virtual methods
.method protected constructSplit(I[II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0, v4}, Landroid/app/LoadedApk;->-wrap0(Landroid/app/LoadedApk;Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get0(Landroid/app/LoadedApk;)Ljava/lang/ClassLoader;

    move-result-object v1

    aput-object v1, v0, v3

    array-length v1, p2

    move v0, v3

    :goto_0
    if-ge v0, v1, :cond_0

    aget v7, p2, v0

    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v2}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v7, -0x1

    aget-object v2, v2, v4

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v1, v3

    return-void

    :cond_1
    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v6, v0, p3

    iget-object v9, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-static {}, Landroid/app/ApplicationLoaders;->getDefault()Landroid/app/ApplicationLoaders;

    move-result-object v0

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get1(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-virtual {v2}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/ApplicationLoaders;->getClassLoader(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    aput-object v0, v9, p1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v8, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v0}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v0, p2

    :goto_1
    if-ge v3, v0, :cond_2

    aget v7, p2, v3

    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->this$0:Landroid/app/LoadedApk;

    invoke-static {v1}, Landroid/app/LoadedApk;->-get3(Landroid/app/LoadedApk;)[Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v7, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v1, p1

    return-void
.end method

.method getClassLoaderForSplit(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method getSplitPathsForSplit(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedResourcePaths:[[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->ensureSplitLoaded(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .locals 1

    iget-object v0, p0, Landroid/app/LoadedApk$SplitDependencyLoaderImpl;->mCachedClassLoaders:[Ljava/lang/ClassLoader;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
