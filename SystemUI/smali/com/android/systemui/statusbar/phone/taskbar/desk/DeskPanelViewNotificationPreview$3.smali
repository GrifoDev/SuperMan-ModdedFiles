.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewNotificationPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

.field final synthetic val$currentState:I

.field final synthetic val$nextState:I

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;FII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$to:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$currentState:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$nextState:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$to:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    const-string/jumbo v1, "DeskPanelViewNotificationPreview"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$currentState:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationPreview$3;->val$nextState:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
