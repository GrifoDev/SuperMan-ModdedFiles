.class Lcom/android/server/LockSettingsService$8;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$CredentialUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;Lcom/android/server/LockSettingsStorage$CredentialHash;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$8;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public getLockType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setCredential(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/LockSettingsService$8;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->-wrap7(Lcom/android/server/LockSettingsService;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public toHash(Ljava/lang/String;I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$8;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get5(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method
