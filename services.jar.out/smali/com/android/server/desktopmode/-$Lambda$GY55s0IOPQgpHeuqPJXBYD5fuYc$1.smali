.class final synthetic Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/desktopmode/DeviceDisplayManager;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DeviceDisplayManager;->lambda$-com_android_server_desktopmode_DeviceDisplayManager_5265()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/-$Lambda$GY55s0IOPQgpHeuqPJXBYD5fuYc$1;->$m$0()V

    return-void
.end method
