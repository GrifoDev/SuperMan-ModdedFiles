.class final synthetic Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeService$Receiver;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService$Receiver;->lambda$-com_android_server_desktopmode_DesktopModeService$Receiver_34954(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/-$Lambda$twBVdBquRVqoeGC66Yb40tVHLCY;->$m$0()V

    return-void
.end method
