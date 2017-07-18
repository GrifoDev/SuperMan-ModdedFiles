.class Ljava/net/NetworkInterface$1subIFs;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getSubInterfaces()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "subIFs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/NetworkInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field final synthetic this$0:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 1

    iput-object p1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    iget v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    iget-object v1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    invoke-static {v1}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/net/NetworkInterface$1subIFs;->nextElement()Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/NetworkInterface;
    .locals 3

    iget v0, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    iget-object v1, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    invoke-static {v1}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/net/NetworkInterface$1subIFs;->this$0:Ljava/net/NetworkInterface;

    invoke-static {v0}, Ljava/net/NetworkInterface;->-get1(Ljava/net/NetworkInterface;)[Ljava/net/NetworkInterface;

    move-result-object v0

    iget v1, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/net/NetworkInterface$1subIFs;->i:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
