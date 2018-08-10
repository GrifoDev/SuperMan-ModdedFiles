.class Lcom/android/systemui/statusbar/phone/StatusBar$68$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$68;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$68;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$68;ILandroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$68;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->val$appUid:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->val$appUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->val$intent:Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$68;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$68;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$68$1;->val$intent:Landroid/content/Intent;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
