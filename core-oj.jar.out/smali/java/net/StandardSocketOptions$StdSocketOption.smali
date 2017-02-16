.class Ljava/net/StandardSocketOptions$StdSocketOption;
.super Ljava/lang/Object;
.source "StandardSocketOptions.java"

# interfaces
.implements Ljava/net/SocketOption;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/StandardSocketOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StdSocketOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/net/SocketOption",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    .line 358
    iput-object p2, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->type:Ljava/lang/Class;

    .line 356
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->name:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Ljava/net/StandardSocketOptions$StdSocketOption;, "Ljava/net/StandardSocketOptions$StdSocketOption<TT;>;"
    iget-object v0, p0, Ljava/net/StandardSocketOptions$StdSocketOption;->type:Ljava/lang/Class;

    return-object v0
.end method
