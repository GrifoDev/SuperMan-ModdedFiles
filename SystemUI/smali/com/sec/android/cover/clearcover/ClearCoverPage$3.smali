.class Lcom/sec/android/cover/clearcover/ClearCoverPage$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ClearCoverPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverPage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v1, v4}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set1(Lcom/sec/android/cover/clearcover/ClearCoverPage;I)I

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get1(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "automatic_unlock"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAutoUnlockEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKeyguardSecure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get2(Lcom/sec/android/cover/clearcover/ClearCoverPage;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Setting expand delay to default"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverPage$3;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverPage;

    const/16 v2, 0x578

    invoke-static {v1, v2}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->-set1(Lcom/sec/android/cover/clearcover/ClearCoverPage;I)I

    goto :goto_1
.end method
