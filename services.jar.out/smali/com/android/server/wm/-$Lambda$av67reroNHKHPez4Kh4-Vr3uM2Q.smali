.class final synthetic Lcom/android/server/wm/-$Lambda$av67reroNHKHPez4Kh4-Vr3uM2Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$av67reroNHKHPez4Kh4-Vr3uM2Q;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotSurface;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface$Window;->-com_android_server_wm_TaskSnapshotSurface$Window-mthref-0(Lcom/android/server/wm/TaskSnapshotSurface;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$av67reroNHKHPez4Kh4-Vr3uM2Q;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$av67reroNHKHPez4Kh4-Vr3uM2Q;->$m$0()V

    return-void
.end method
