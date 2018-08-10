.class Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
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
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateLockscreenHiddenItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onUpdateLockscreenHiddenItems()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    return-void
.end method
