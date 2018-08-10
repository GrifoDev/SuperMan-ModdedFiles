.class Lcom/android/systemui/statusbar/phone/StatusBar$64;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startUnlockBgAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$wallpaper:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$wallpaper:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$wallpaper:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->val$wallpaper:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap20(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$64;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set24(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
