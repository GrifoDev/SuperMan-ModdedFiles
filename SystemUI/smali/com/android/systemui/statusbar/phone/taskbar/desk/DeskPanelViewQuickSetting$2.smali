.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewQuickSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->expandDeskPanelViewQuickSetting(Z)V
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->val$to:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->val$to:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
