.class Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;
.super Ljava/lang/Object;
.source "ChooseLockEnterpriseIdentity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    iput-object p2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$1;->this$0:Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;

    invoke-static {v3}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->-get13(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v2, "checkPassword succeed - escrow token become active"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
