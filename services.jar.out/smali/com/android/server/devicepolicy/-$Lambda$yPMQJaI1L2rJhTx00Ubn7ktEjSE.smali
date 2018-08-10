.class final synthetic Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    check-cast p2, Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-static {p1, p2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->lambda$-com_android_server_devicepolicy_SecurityLogMonitor_9444(Landroid/app/admin/SecurityLog$SecurityEvent;Landroid/app/admin/SecurityLog$SecurityEvent;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/-$Lambda$yPMQJaI1L2rJhTx00Ubn7ktEjSE;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
