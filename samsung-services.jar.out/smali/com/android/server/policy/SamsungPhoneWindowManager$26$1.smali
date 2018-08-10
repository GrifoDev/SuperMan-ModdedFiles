.class Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager$26;->onDesktopModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$26;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager$26;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    iput-boolean p2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "SamsungPhoneWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;->val$enabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager$26;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$26$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$26;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$26;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "bixby_enabled"

    const-string/jumbo v3, "false"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set2(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    return-void
.end method
