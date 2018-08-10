.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;
.super Ljava/lang/Thread;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStatsThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method


# virtual methods
.method checkNetworkAvailable(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return v5

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get1()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->checkNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set2(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    const-string/jumbo v0, "NetworkSpeedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkStatsThread-mNetworkStats = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get3(Lcom/android/systemui/statusbar/policy/NetspeedView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-get4(Lcom/android/systemui/statusbar/policy/NetspeedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkStatsThread;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetspeedView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
