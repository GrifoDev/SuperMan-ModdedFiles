.class Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;
.super Lcom/google/common/util/concurrent/Futures$ImmediateFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImmediateSuccessfulFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Futures$ImmediateFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final NULL:Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;->NULL:Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Futures$ImmediateFuture;-><init>(Lcom/google/common/util/concurrent/Futures$1;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$ImmediateSuccessfulFuture;->value:Ljava/lang/Object;

    return-object v0
.end method
