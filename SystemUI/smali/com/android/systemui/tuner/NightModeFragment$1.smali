.class Lcom/android/systemui/tuner/NightModeFragment$1;
.super Ljava/lang/Object;
.source "NightModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/NightModeFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/NightModeFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/NightModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/NightModeFragment$1;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment$1;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-static {v1}, Lcom/android/systemui/tuner/NightModeFragment;->-get0(Lcom/android/systemui/tuner/NightModeFragment;)Lcom/android/systemui/statusbar/policy/NightModeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NightModeController;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment$1;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/NightModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x135

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment$1;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-static {v1}, Lcom/android/systemui/tuner/NightModeFragment;->-get0(Lcom/android/systemui/tuner/NightModeFragment;)Lcom/android/systemui/statusbar/policy/NightModeController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NightModeController;->setNightMode(Z)V

    iget-object v1, p0, Lcom/android/systemui/tuner/NightModeFragment$1;->this$0:Lcom/android/systemui/tuner/NightModeFragment;

    invoke-static {v1}, Lcom/android/systemui/tuner/NightModeFragment;->-get1(Lcom/android/systemui/tuner/NightModeFragment;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
