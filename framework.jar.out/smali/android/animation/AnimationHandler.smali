.class public Landroid/animation/AnimationHandler;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/AnimationHandler$1;,
        Landroid/animation/AnimationHandler$AnimationFrameCallback;,
        Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;,
        Landroid/animation/AnimationHandler$MyFrameCallbackProvider;
    }
.end annotation


# static fields
.field public static final sAnimatorHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/animation/AnimationHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAnimationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCommitCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayedCallbackStartTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/AnimationHandler$AnimationFrameCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mListDirty:Z

.field private mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;


# direct methods
.method static synthetic -get0(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 1

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/animation/AnimationHandler;->commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/animation/AnimationHandler;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/animation/AnimationHandler;->doAnimationFrame(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/animation/AnimationHandler$1;

    invoke-direct {v0, p0}, Landroid/animation/AnimationHandler$1;-><init>(Landroid/animation/AnimationHandler;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    return-void
.end method

.method private cleanUpList()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    :cond_2
    return-void
.end method

.method private commitAnimationFrame(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 2

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2, p3}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->commitAnimationFrame(J)V

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private doAnimationFrame(J)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2, v3}, Landroid/animation/AnimationHandler;->isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/animation/AnimationHandler$AnimationFrameCallback;->doAnimationFrame(J)Z

    iget-object v5, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v5

    new-instance v6, Landroid/animation/AnimationHandler$2;

    invoke-direct {v6, p0, v0}, Landroid/animation/AnimationHandler$2;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$AnimationFrameCallback;)V

    invoke-interface {v5, v6}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postCommitCallback(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/animation/AnimationHandler;->cleanUpList()V

    return-void
.end method

.method public static getAnimationCount()I
    .locals 2

    sget-object v1, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getCallbackSize()I

    move-result v1

    return v1
.end method

.method private getCallbackSize()I
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Landroid/animation/AnimationHandler;
    .locals 2

    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    new-instance v1, Landroid/animation/AnimationHandler;

    invoke-direct {v1}, Landroid/animation/AnimationHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Landroid/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method private getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    return-object v0
.end method

.method private isCallbackDue(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)Z
    .locals 6

    const/4 v4, 0x1

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-gez v1, :cond_1

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static setFrameDelay(J)V
    .locals 2

    invoke-static {}, Landroid/animation/AnimationHandler;->getInstance()Landroid/animation/AnimationHandler;

    move-result-object v0

    invoke-direct {v0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->setFrameDelay(J)V

    return-void
.end method


# virtual methods
.method public addAnimationFrameCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;J)V
    .locals 4

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/animation/AnimationHandler;->getProvider()Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-interface {v0, v1}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public addOneShotCommitCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method autoCancelBasedOn(Landroid/animation/ObjectAnimator;)V
    .locals 3

    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimationHandler$AnimationFrameCallback;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->shouldAutoCancel(Landroid/animation/AnimationHandler$AnimationFrameCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeCallback(Landroid/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 3

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mCommitCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/AnimationHandler;->mListDirty:Z

    :cond_0
    return-void
.end method

.method public setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;

    invoke-direct {v0, p0, v1}, Landroid/animation/AnimationHandler$MyFrameCallbackProvider;-><init>(Landroid/animation/AnimationHandler;Landroid/animation/AnimationHandler$MyFrameCallbackProvider;)V

    iput-object v0, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/animation/AnimationHandler;->mProvider:Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    goto :goto_0
.end method
