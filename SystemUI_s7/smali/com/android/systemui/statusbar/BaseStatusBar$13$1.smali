.class Lcom/android/systemui/statusbar/BaseStatusBar$13$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$13;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$13;ZILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$keyguardShowing:Z

    iput p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$appUid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$keyguardShowing:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$appUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$intent:Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$intent:Landroid/content/Intent;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$13;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13$1;->val$keyguardShowing:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
