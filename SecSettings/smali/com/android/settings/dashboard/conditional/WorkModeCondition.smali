.class public Lcom/android/settings/dashboard/conditional/WorkModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "WorkModeCondition.java"


# instance fields
.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method private updateUserHandle()V
    .locals 6

    iget-object v4, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public refreshState()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->updateUserHandle()V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
