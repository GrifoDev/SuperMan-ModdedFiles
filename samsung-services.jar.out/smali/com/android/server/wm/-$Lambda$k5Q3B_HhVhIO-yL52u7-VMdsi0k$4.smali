.class final synthetic Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/SamsungWindowManagerService;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SamsungWindowManagerService;->lambda$-com_android_server_wm_SamsungWindowManagerService_12960(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$k5Q3B_HhVhIO-yL52u7-VMdsi0k$4;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
