.class Lcom/android/systemui/statusbar/BaseStatusBar$13;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$keyguardShowing:Z

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$appUid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$keyguardShowing:Z

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$appUid:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->val$intent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$13;ZILandroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    return v4
.end method
