.class final synthetic Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;

    iget-object v1, p0, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/friends/cmdsvc/CmdSvcFacade;->lambda$-com_samsung_android_friends_cmdsvc_CmdSvcFacade_1885(Ljava/lang/Thread;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/friends/cmdsvc/-$Lambda$lJ5tFYo-_ILpkzL1Empwndg6uA4;->$m$0(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
