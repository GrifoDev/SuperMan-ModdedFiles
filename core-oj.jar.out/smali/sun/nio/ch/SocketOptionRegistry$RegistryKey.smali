.class Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketOptionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegistryKey"
.end annotation


# instance fields
.field private final family:Ljava/net/ProtocolFamily;

.field private final name:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V
    .locals 0
    .param p2, "family"    # Ljava/net/ProtocolFamily;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/net/ProtocolFamily;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    .line 42
    iput-object p2, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "ob"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_0

    return v3

    .line 49
    :cond_0
    instance-of v1, p1, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    if-nez v1, :cond_1

    return v3

    :cond_1
    move-object v0, p1

    .line 50
    nop

    nop

    .line 51
    .local v0, "other":Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    iget-object v2, v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    if-eq v1, v2, :cond_2

    return v3

    .line 52
    :cond_2
    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    iget-object v2, v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    if-eq v1, v2, :cond_3

    return v3

    .line 53
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->name:Ljava/net/SocketOption;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;->family:Ljava/net/ProtocolFamily;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
