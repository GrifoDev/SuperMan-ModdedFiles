.class public final Landroid/media/VolumeShaper;
.super Ljava/lang/Object;
.source "VolumeShaper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeShaper$Configuration;,
        Landroid/media/VolumeShaper$Operation;,
        Landroid/media/VolumeShaper$State;
    }
.end annotation


# instance fields
.field private mId:I

.field private final mWeakPlayerBase:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/PlayerBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->defer()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper;->mId:I

    return-void
.end method

.method private applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .locals 6

    iget-object v3, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/PlayerBase;

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "player deallocated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {v2, p1, p2}, Landroid/media/PlayerBase;->playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v1

    if-gez v1, :cond_3

    const/16 v0, -0x26

    const/16 v3, -0x26

    if-ne v1, v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "player or VolumeShaper deallocated"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "uninitialized shaper"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid configuration or operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    return v1
.end method

.method private getStatePlayer(I)Landroid/media/VolumeShaper$State;
    .locals 4

    iget-object v2, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/PlayerBase;

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "player deallocated"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/media/PlayerBase;->playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "shaper cannot be found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "uninitialized shaper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public apply(Landroid/media/VolumeShaper$Operation;)V
    .locals 2

    new-instance v0, Landroid/media/VolumeShaper$Configuration;

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    invoke-direct {p0, v0, p1}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    return-void
.end method

.method public close()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/media/VolumeShaper$Configuration;

    iget v2, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {v1, v2}, Landroid/media/VolumeShaper$Configuration;-><init>(I)V

    new-instance v2, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/media/VolumeShaper$Operation$Builder;->terminate()Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/VolumeShaper;->mWeakPlayerBase:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/VolumeShaper;->close()V

    return-void
.end method

.method getId()I
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    return v0
.end method

.method public getVolume()F
    .locals 1

    iget v0, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-direct {p0, v0}, Landroid/media/VolumeShaper;->getStatePlayer(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$State;->getVolume()F

    move-result v0

    return v0
.end method

.method public replace(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;Z)V
    .locals 2

    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    invoke-direct {v0, p2}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    iget v1, p0, Landroid/media/VolumeShaper;->mId:I

    invoke-virtual {v0, v1, p3}, Landroid/media/VolumeShaper$Operation$Builder;->replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/media/VolumeShaper;->applyPlayer(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeShaper;->mId:I

    return-void
.end method
