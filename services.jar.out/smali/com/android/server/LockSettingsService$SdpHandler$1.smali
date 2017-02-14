.class Lcom/android/server/LockSettingsService$SdpHandler$1;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$newPassword:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput-object p2, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/android/server/LockSettingsService;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$userId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPasswordInternal(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v0, v0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$1;->val$newPassword:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/server/LockSettingsService;->-wrap3(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
