.class Lsun/nio/ch/ExtendedSocketOption;
.super Ljava/lang/Object;
.source "ExtendedSocketOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/ExtendedSocketOption$1;
    }
.end annotation


# static fields
.field static final SO_OOBINLINE:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/nio/ch/ExtendedSocketOption$1;

    invoke-direct {v0}, Lsun/nio/ch/ExtendedSocketOption$1;-><init>()V

    sput-object v0, Lsun/nio/ch/ExtendedSocketOption;->SO_OOBINLINE:Ljava/net/SocketOption;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
