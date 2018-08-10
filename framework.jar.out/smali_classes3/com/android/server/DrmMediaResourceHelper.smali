.class Lcom/android/server/DrmMediaResourceHelper;
.super Ljava/lang/Object;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DrmMediaResourceHelper$1;
    }
.end annotation


# instance fields
.field private BoostedPIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private TAG:Ljava/lang/String;

.field private final mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method static synthetic -get0(Lcom/android/server/DrmMediaResourceHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/DrmMediaResourceHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/DrmMediaResourceHelper;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->addPIDToBoostedList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/DrmMediaResourceHelper;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->isResourcePresent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/DrmMediaResourceHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/DrmMediaResourceHelper;->removePID(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "DrmMediaResourceHelper"

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/DrmMediaResourceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/DrmMediaResourceHelper$1;-><init>(Lcom/android/server/DrmMediaResourceHelper;)V

    iput-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-direct {p0}, Lcom/android/server/DrmMediaResourceHelper;->createMediaResourceHelper()V

    return-void
.end method

.method private addPIDToBoostedList(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private createMediaResourceHelper()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "createMediaResourceHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper;->mMediaResourceInfoChangedListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/DrmMediaResourceHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "IllegalStateException SemMediaResourceHelper"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isResourcePresent(I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private removePID(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/DrmMediaResourceHelper;->BoostedPIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    return-void
.end method
