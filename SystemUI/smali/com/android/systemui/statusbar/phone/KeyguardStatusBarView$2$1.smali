.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-get1(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->isMultiUserSwitchAnimation:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-set0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method
