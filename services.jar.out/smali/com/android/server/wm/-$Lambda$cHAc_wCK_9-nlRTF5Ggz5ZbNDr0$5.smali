.class final synthetic Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f0:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$-com_android_server_wm_RootWindowContainer_15816(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f0:I

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$cHAc_wCK_9-nlRTF5Ggz5ZbNDr0$5;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
