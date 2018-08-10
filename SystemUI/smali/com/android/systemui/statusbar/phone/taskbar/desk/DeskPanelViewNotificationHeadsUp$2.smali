.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeskPanelViewNotificationHeadsUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->expand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

.field final synthetic val$animate:Z

.field final synthetic val$currentState:I

.field final synthetic val$nextState:I

.field final synthetic val$to:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;FIIZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$to:F

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$currentState:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$nextState:I

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$animate:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->mIsCanceled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$animate:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->collapse(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->mIsCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$to:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->-set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->-wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    const-string/jumbo v1, "DeskPanelViewNotificationHeadsUp"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$currentState:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->val$nextState:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelViewNotificationVisibilityChanged(Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp$2;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotificationHeadsUp;->setVisibility(I)V

    return-void
.end method
