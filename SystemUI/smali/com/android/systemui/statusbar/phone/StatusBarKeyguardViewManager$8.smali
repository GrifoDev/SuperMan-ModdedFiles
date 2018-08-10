.class Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field final synthetic val$finalDelay:J

.field final synthetic val$finalFadeoutDuration:J

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/View;JJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$rootView:Landroid/view/View;

    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$finalDelay:J

    iput-wide p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$finalFadeoutDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_phone_StatusBarKeyguardViewManager$8_31499(JJ)V
    .locals 7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-wrap0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;JJZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public onPreDraw()Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-set1(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/view/ViewTreeObserver$OnPreDrawListener;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$finalDelay:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$finalFadeoutDuration:J

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/-$Lambda$MI_rj-HsrcR1Kk2qibP2z_YaSqk$5;-><init>(JJLjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->val$rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$8;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->-get0(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
