.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;
.super Ljava/lang/Object;
.source "DeskStatusBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarFragment;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    return-void
.end method
