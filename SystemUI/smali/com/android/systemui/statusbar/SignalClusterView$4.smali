.class Lcom/android/systemui/statusbar/SignalClusterView$4;
.super Ljava/lang/Object;
.source "SignalClusterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/SignalClusterView;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/SignalClusterView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView$4;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$4;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView$4;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView$4;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-get5(Lcom/android/systemui/statusbar/SignalClusterView;)Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView;Z)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->-set0(Lcom/android/systemui/statusbar/SignalClusterView;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView$4;->this$0:Lcom/android/systemui/statusbar/SignalClusterView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView;->-wrap1(Lcom/android/systemui/statusbar/SignalClusterView;)V

    return-void
.end method
