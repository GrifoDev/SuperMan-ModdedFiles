.class Lcom/android/systemui/statusbar/phone/StatusBar$63;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startUnlockAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field clockOriginalScaleX:F

.field clockOriginalScaleY:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$bottomArea:Landroid/view/View;

.field final synthetic val$clock:Landroid/view/View;

.field final synthetic val$keyguardHeader:Landroid/view/View;

.field final synthetic val$notification:Landroid/view/View;

.field final synthetic val$wallpaper:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$notification:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$keyguardHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$bottomArea:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$wallpaper:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleY:F

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleX:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$notification:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "NSSL is visible again by unlock animation end..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$keyguardHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$bottomArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$bottomArea:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$wallpaper:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$wallpaper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/Rune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMascotView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set24(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string/jumbo v1, "StatusBar"

    const-string/jumbo v2, "onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleX:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$clock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->clockOriginalScaleY:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isGoingToNotificationShade()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$63;->val$notification:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "NSSL is gone by unlock animation start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
