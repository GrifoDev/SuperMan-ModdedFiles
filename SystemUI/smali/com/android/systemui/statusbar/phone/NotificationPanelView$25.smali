.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->doCaptureScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$clockView:Landroid/view/View;

.field final synthetic val$isCover:Z

.field final synthetic val$left:Landroid/view/View;

.field final synthetic val$right:Landroid/view/View;

.field final synthetic val$windowHeight:I

.field final synthetic val$windowWidth:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;ILandroid/view/View;Landroid/view/View;Landroid/view/View;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$windowHeight:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$clockView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$left:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$right:Landroid/view/View;

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$isCover:Z

    iput p7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$windowWidth:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$windowHeight:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-get1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/keyguard/ViewCaptureUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$clockView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$left:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$right:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$isCover:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsDeskMode:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$windowWidth:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;->val$windowHeight:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/keyguard/ViewCaptureUtil;->captureScreen(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZII)V

    :cond_0
    return-void
.end method
