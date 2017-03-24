.class Lcom/android/systemui/statusbar/policy/NetspeedView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetspeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "NetworkSpeedView"

    const-string/jumbo v1, "mScreenOnOffCallback onScreenTurnedOff "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set1(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-wrap1(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    const-string/jumbo v0, "NetworkSpeedView"

    const-string/jumbo v1, "mScreenOnOffCallback onScreenTurnedOn "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-set1(Lcom/android/systemui/statusbar/policy/NetspeedView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$3;->this$0:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetspeedView;->-wrap1(Lcom/android/systemui/statusbar/policy/NetspeedView;)V

    return-void
.end method
