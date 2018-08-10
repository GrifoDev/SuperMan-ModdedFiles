.class Lcom/android/systemui/statusbar/phone/StatusBar$68;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$appUid:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$appUid:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->val$intent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$68;ILandroid/content/Intent;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    return v3
.end method
