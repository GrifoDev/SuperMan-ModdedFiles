.class final Ljava/net/NetworkInterface$1;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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

.field final synthetic val$netifs:[Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>([Ljava/net/NetworkInterface;)V
    .locals 1

    iput-object p1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ljava/net/NetworkInterface$1;->i:I

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/net/NetworkInterface$1;->i:I

    iget-object v2, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/net/NetworkInterface$1;->nextElement()Ljava/net/NetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/NetworkInterface;
    .locals 4

    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    if-eqz v1, :cond_0

    iget v1, p0, Ljava/net/NetworkInterface$1;->i:I

    iget-object v2, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Ljava/net/NetworkInterface$1;->val$netifs:[Ljava/net/NetworkInterface;

    iget v2, p0, Ljava/net/NetworkInterface$1;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/net/NetworkInterface$1;->i:I

    aget-object v0, v1, v2

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
