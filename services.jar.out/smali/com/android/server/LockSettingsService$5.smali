.class Lcom/android/server/LockSettingsService$5;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->createSelfRecoveryRunnable([BLjava/lang/String;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$credential:Ljava/lang/String;

.field final synthetic val$sdpMasterKey:[B

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;[BLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/LockSettingsService$5;->val$sdpMasterKey:[B

    iput-object p3, p0, Lcom/android/server/LockSettingsService$5;->val$credential:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/LockSettingsService$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/LockSettingsService$5;->this$0:Lcom/android/server/LockSettingsService;

    iget-object v1, p0, Lcom/android/server/LockSettingsService$5;->val$sdpMasterKey:[B

    iget-object v2, p0, Lcom/android/server/LockSettingsService$5;->val$credential:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LockSettingsService$5;->val$userId:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->-wrap15(Lcom/android/server/LockSettingsService;[BLjava/lang/String;I)V

    return-void
.end method
