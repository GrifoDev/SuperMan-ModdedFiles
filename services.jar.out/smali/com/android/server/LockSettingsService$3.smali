.class Lcom/android/server/LockSettingsService$3;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iput p2, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService$3_25671(ILcom/android/server/SdpManagerService;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    return-void
.end method

.method static synthetic lambda$-com_android_server_LockSettingsService$3_26029(ILcom/android/server/SdpManagerService;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    new-instance v6, Landroid/os/UserHandle;

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap17(Lcom/android/server/LockSettingsService;Landroid/os/UserHandle;)V

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap6(Lcom/android/server/LockSettingsService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5, v4}, Lcom/android/server/LockSettingsService;->-wrap19(Lcom/android/server/LockSettingsService;Landroid/os/UserHandle;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v5

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/LockSettingsService;->tieManagedProfileLockIfNecessary(ILjava/lang/String;)V

    :cond_2
    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap2(Lcom/android/server/LockSettingsService;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "LockSettingsService.SDP"

    const-string/jumbo v6, "Unlocking user - Check user %d security status : %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v9, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v8, v9}, Lcom/android/server/LockSettingsService;->-wrap11(Lcom/android/server/LockSettingsService;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap6(Lcom/android/server/LockSettingsService;I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap0(Lcom/android/server/LockSettingsService;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "LockSettingsService.SDP"

    const-string/jumbo v6, "Unlocking user - User %d has legacy credential"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    iget v6, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v5, v6}, Lcom/android/server/LockSettingsService;->-wrap1(Lcom/android/server/LockSettingsService;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "LockSettingsService.SDP"

    const-string/jumbo v6, "Unlocking user - User %d has none type credential"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-wrap12(Lcom/android/server/LockSettingsService;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {v6, v7}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$3;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "LockSettingsService.SDP"

    const-string/jumbo v6, "Unlocking user - User %d has no credential"

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/LockSettingsService$3;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v5}, Lcom/android/server/LockSettingsService;->-wrap12(Lcom/android/server/LockSettingsService;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$4;

    iget v7, p0, Lcom/android/server/LockSettingsService$3;->val$userId:I

    invoke-direct {v6, v7}, Lcom/android/server/-$Lambda$3ppOfNoHK7gU64PsFhIJAmO8LxY$4;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_1
.end method
