.class final synthetic Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/UserController;

    iget-boolean v2, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f0:Z

    iget-object v1, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f2:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserController;->lambda$-com_android_server_am_UserController_22399(ZLcom/android/server/am/UserState;)V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f0:Z

    iput-object p2, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/-$Lambda$-wbdEBNBIl8hthLGGkbuzj1haLA;->$m$0()V

    return-void
.end method
