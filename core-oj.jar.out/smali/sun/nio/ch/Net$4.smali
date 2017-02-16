.class final Lsun/nio/ch/Net$4;
.super Ljava/lang/Object;
.source "Net.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/nio/ch/Net;->anyInet4Address(Ljava/net/NetworkInterface;)Ljava/net/Inet4Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/net/Inet4Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$interf:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 0
    .param p1, "val$interf"    # Ljava/net/NetworkInterface;

    .prologue
    .line 259
    iput-object p1, p0, Lsun/nio/ch/Net$4;->val$interf:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lsun/nio/ch/Net$4;->run()Ljava/net/Inet4Address;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/net/Inet4Address;
    .locals 3

    .prologue
    .line 261
    iget-object v2, p0, Lsun/nio/ch/Net$4;->val$interf:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 262
    .local v1, "addrs":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 264
    .local v0, "addr":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 265
    nop

    nop

    .end local v0    # "addr":Ljava/net/InetAddress;
    return-object v0

    .line 268
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
