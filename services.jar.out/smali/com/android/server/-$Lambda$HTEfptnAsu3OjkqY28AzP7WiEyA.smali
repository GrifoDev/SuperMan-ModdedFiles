.class final synthetic Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->lambda$-com_android_server_SystemServerInitThreadPool_2249(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/-$Lambda$HTEfptnAsu3OjkqY28AzP7WiEyA;->$m$0()V

    return-void
.end method
