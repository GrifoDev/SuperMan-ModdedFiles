.class Lcom/android/server/policy/NaviBarForceTouchManager$1;
.super Ljava/lang/Object;
.source "NaviBarForceTouchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/NaviBarForceTouchManager;->dismissKeyguard()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/NaviBarForceTouchManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/NaviBarForceTouchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/NaviBarForceTouchManager$1;->this$0:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager$1;->this$0:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-virtual {v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->pendingDismissKeyugard()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NaviBarForceTouchMgr"

    const-string/jumbo v1, "dismissKeyguard, pending to dismissKeyguard by going to sleep"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/NaviBarForceTouchManager$1;->this$0:Lcom/android/server/policy/NaviBarForceTouchManager;

    invoke-static {v0}, Lcom/android/server/policy/NaviBarForceTouchManager;->-get0(Lcom/android/server/policy/NaviBarForceTouchManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    return-void
.end method
