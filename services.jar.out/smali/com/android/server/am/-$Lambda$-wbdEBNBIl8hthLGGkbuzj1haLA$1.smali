.class final synthetic Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserController$3;

    iget v1, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f1:I

    iget-boolean v2, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f0:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/UserController$3;->lambda$-com_android_server_am_UserController$3_28399(IZ)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f0:Z

    iput p2, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f1:I

    iput-object p3, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA$1;->$m$0()V

    return-void
.end method
