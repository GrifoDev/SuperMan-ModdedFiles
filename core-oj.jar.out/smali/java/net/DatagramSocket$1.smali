.class Ljava/net/DatagramSocket$1;
.super Ljava/lang/Object;
.source "DatagramSocket.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/net/DatagramSocket;->checkOldImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Ljava/net/DatagramSocket;)V
    .locals 0

    iput-object p1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/DatagramSocket$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Ljava/net/DatagramSocket$1;->this$0:Ljava/net/DatagramSocket;

    iget-object v1, v1, Ljava/net/DatagramSocket;->impl:Ljava/net/DatagramSocketImpl;

    invoke-virtual {v1}, Ljava/net/DatagramSocketImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "peekData"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    return-object v1
.end method
