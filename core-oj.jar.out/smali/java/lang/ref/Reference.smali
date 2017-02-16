.class public abstract Ljava/lang/ref/Reference;
.super Ljava/lang/Object;
.source "Reference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static disableIntrinsic:Z

.field private static slowPathEnabled:Z


# instance fields
.field pendingNext:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<*>;"
        }
    .end annotation
.end field

.field final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;"
        }
    .end annotation
.end field

.field queueNext:Ljava/lang/ref/Reference;

.field volatile referent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Ljava/lang/ref/Reference;->disableIntrinsic:Z

    .line 55
    sput-boolean v0, Ljava/lang/ref/Reference;->slowPathEnabled:Z

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 150
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    .local p1, "referent":Ljava/lang/Object;, "TT;"
    .local p2, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 156
    iput-object p2, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 154
    return-void
.end method

.method private final native getReferent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/Reference;->referent:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public enqueue()Z
    .locals 1

    .prologue
    .line 144
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->enqueue(Ljava/lang/ref/Reference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;->getReferent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEnqueued()Z
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/lang/ref/Reference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0, p0}, Ljava/lang/ref/ReferenceQueue;->isEnqueued(Ljava/lang/ref/Reference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
