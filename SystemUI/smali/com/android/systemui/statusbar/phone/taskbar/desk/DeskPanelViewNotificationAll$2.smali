.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewNotificationAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->collapse(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

.field final synthetic val$currentState:I

.field final synthetic val$nextState:I

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;FII)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$to:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$currentState:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$nextState:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$to:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    const-string/jumbo v1, "DeskPanelViewNotificationAll"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$currentState:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationAll$2;->val$nextState:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
