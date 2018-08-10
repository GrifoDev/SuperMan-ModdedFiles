.class final synthetic Lcom/android/server/wm/-$Lambda$ciWQwJI1JkWGjENAc2_yhiUogoU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$ciWQwJI1JkWGjENAc2_yhiUogoU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowToken;

    check-cast p1, Lcom/android/server/wm/WindowState;

    check-cast p2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowToken;->lambda$-com_android_server_wm_WindowToken_4099(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$ciWQwJI1JkWGjENAc2_yhiUogoU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$ciWQwJI1JkWGjENAc2_yhiUogoU;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
