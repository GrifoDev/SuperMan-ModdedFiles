.class Lcom/android/server/LockSettingsService$7;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Lcom/android/server/LockSettingsService$IKeystoreUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
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

    iput-object p1, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doHardHashAdjustment(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPasswordHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardHashMigration(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePasswordHash(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyAdjustment(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->adjustPassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public doHardKeyMigration(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get4(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->migratePassword(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getLockType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
