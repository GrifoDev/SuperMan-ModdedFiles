.class Lcom/android/server/LockSettingsService$SdpHandler$2;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LockSettingsService$SdpHandler;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$type:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService$SdpHandler;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iput p2, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    iput-object p3, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$credential:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/android/server/LockSettingsService;->-get0()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$userId:I

    iget-object v3, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$credential:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v4, v4, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v4}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v4

    iget v5, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$type:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/LockSettingsService$SdpHandler;->verifyInternal(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->this$1:Lcom/android/server/LockSettingsService$SdpHandler;

    iget-object v0, v0, Lcom/android/server/LockSettingsService$SdpHandler;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v2, p0, Lcom/android/server/LockSettingsService$SdpHandler$2;->val$credential:Ljava/lang/String;

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
