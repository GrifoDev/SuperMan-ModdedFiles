.class Lsun/nio/ch/SocketOptionRegistry;
.super Ljava/lang/Object;
.source "SocketOptionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;,
        Lsun/nio/ch/SocketOptionRegistry$RegistryKey;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findOption(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)Lsun/nio/ch/OptionKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption",
            "<*>;",
            "Ljava/net/ProtocolFamily;",
            ")",
            "Lsun/nio/ch/OptionKey;"
        }
    .end annotation

    new-instance v0, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;

    invoke-direct {v0, p0, p1}, Lsun/nio/ch/SocketOptionRegistry$RegistryKey;-><init>(Ljava/net/SocketOption;Ljava/net/ProtocolFamily;)V

    sget-object v1, Lsun/nio/ch/SocketOptionRegistry$LazyInitialization;->options:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/nio/ch/OptionKey;

    return-object v1
.end method
