.class Lcom/android/systemui/statusbar/phone/StatusBar$75;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$action:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$75;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$75;->val$action:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "updateCoverState: cancel to launch notification"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$75;->val$action:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$75;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set2(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    return-void
.end method
