.class final Ljava/util/stream/ForEachOps$ForEachOp$OfRef;
.super Ljava/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/ForEachOps$ForEachOp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/function/Consumer;Z)V
    .locals 0
    .param p2, "ordered"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfRef<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-direct {p0, p2}, Ljava/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 179
    iput-object p1, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    .line 177
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Ljava/util/stream/ForEachOps$ForEachOp$OfRef;, "Ljava/util/stream/ForEachOps$ForEachOp<TT;>.OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/ForEachOps$ForEachOp$OfRef;->consumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
