.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;
.super Landroid/os/Handler;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1180

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap9(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    :cond_0
    return-void
.end method
