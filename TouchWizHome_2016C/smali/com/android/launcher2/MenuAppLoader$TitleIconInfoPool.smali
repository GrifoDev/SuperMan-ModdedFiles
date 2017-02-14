.class Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleIconInfoPool"
.end annotation


# instance fields
.field private final mTileIconInfoPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PkgResCache$TitleIconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->mTileIconInfoPool:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/MenuAppLoader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->mTileIconInfoPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->mTileIconInfoPool:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v0}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->reset()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$TitleIconInfoPool;->mTileIconInfoPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
