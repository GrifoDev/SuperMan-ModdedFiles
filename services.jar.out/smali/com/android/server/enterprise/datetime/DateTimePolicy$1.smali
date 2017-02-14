.class Lcom/android/server/enterprise/datetime/DateTimePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/datetime/DateTimePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-get1(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-get0(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-get0(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->-wrap0(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
