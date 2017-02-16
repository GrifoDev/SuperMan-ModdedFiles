.class Ljava/net/NetworkInterface$1checkedAddresses;
.super Ljava/lang/Object;
.source "NetworkInterface.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkedAddresses"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private i:I

.field private local_addrs:[Ljava/net/InetAddress;

.field final synthetic this$0:Ljava/net/NetworkInterface;


# direct methods
.method constructor <init>(Ljava/net/NetworkInterface;)V
    .locals 7
    .param p1, "this$0"    # Ljava/net/NetworkInterface;

    .prologue
    const/4 v4, 0x0

    .line 109
    iput-object p1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->this$0:Ljava/net/NetworkInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iput v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    .line 110
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [Ljava/net/InetAddress;

    iput-object v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    .line 111
    const/4 v3, 0x1

    .line 113
    .local v3, "trusted":Z
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    .line 114
    .local v2, "sec":Ljava/lang/SecurityManager;
    if-eqz v2, :cond_0

    .line 116
    :try_start_0
    new-instance v4, Ljava/net/NetPermission;

    const-string/jumbo v5, "getNetworkInformation"

    invoke-direct {v4, v5}, Ljava/net/NetPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 123
    if-eqz v2, :cond_1

    if-eqz v3, :cond_2

    .line 126
    :cond_1
    :goto_2
    :try_start_1
    iget-object v4, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v5, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v4, v5

    .line 121
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    .end local v1    # "j":I
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x0

    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/lang/SecurityException;
    .restart local v1    # "j":I
    :cond_2
    invoke-static {p1}, Ljava/net/NetworkInterface;->-get0(Ljava/net/NetworkInterface;)[Ljava/net/InetAddress;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/SecurityException;
    goto :goto_3

    .line 109
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_3
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

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

    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/net/NetworkInterface$1checkedAddresses;->nextElement()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->count:I

    if-ge v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Ljava/net/NetworkInterface$1checkedAddresses;->local_addrs:[Ljava/net/InetAddress;

    iget v1, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/net/NetworkInterface$1checkedAddresses;->i:I

    aget-object v0, v0, v1

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
