.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewQuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskPanelViewQuickSetting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$1;->val$to:F

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;F)V

    return-void
.end method
