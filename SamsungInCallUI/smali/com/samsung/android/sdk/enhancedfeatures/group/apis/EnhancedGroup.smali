.class public Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;


# instance fields
.field private enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private mId:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

.field private mOptionalId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mId:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mOptionalId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    return-object v0
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EnhancedGroup is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ssf/group/util/GroupLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->setCustomId(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->setOptionalId(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Device was not authenticated."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/AddGroupMembersTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/AddGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;)V

    goto :goto_0
.end method

.method public addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    return-void
.end method

.method public checkGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CheckGroupMemberTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CheckGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CheckGroupMembersListener;)V

    goto :goto_0
.end method

.method public createGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/CreateGroupTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/CreateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/CreateGroupListener;)V

    goto :goto_0
.end method

.method public deleteGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupListener;)V

    goto :goto_0
.end method

.method public deleteGroupMember(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupMemberTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupMemberRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupMemberListener;)V

    goto :goto_0
.end method

.method public deleteGroupsMadeByUser(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupsMadeByUserRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteGroupsMadeByUserRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;)V

    goto :goto_0
.end method

.method public deleteMemberFromAllGroups(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteMemberFromAllGroupsRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteMemberFromAllGroupsListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteMemberFromAllGroupsTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteMemberFromAllGroupsTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteMemberFromAllGroupsTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DeleteMemberFromAllGroupsRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteMemberFromAllGroupsListener;)V

    goto :goto_0
.end method

.method public denyTojoinGroupRequest(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DenyToJoinGroupRequestTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/DenyToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DenyGroupRequestListener;)V

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getGroupInfo(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupInfoTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupInfoRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupInfoListener;)V

    goto :goto_0
.end method

.method public getGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupMembersTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupMembersListener;)V

    goto :goto_0
.end method

.method public getGroupsByGuid(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsByGuidTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsByGuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsByGuidListener;)V

    goto :goto_0
.end method

.method public getGroupsByUserId(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsUserBelongsRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsUserBelongsTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsUserBelongsRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsUserBelongsListener;)V

    goto :goto_0
.end method

.method public getGroupsMadeByUser(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/GetGroupsMadeByUserTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/GetGroupsMadeByUserRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GetGroupsMadeByUserListener;)V

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getDuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptionalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mOptionalId:Ljava/lang/String;

    return-object v0
.end method

.method public joinGroupRequest(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/JoinToGroupRequestTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/JoinToGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/JoinGroupRequestListener;)V

    goto :goto_0
.end method

.method public replaceMsisdnWithDuid(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ReplaceMsisdnWithDuidTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ReplaceMsisdnWithDuidRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ReplaceMsisdnWithDuidListener;)V

    goto :goto_0
.end method

.method public requestGroupPushInfo()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/EnhancedGroupPushListener;

    if-nez v0, :cond_1

    const-string v0, "PushListener is not added!"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/util/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;->setReqId(I)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;->setUserData(Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/RequestPushTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/RequestPushTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p0, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/RequestPushTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/internal/listener/RequestPushListener;)V

    goto :goto_0
.end method

.method public responseGroupPushInfo(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/ResponsePushTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/ResponsePushRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/ResponsePushListener;)V

    goto :goto_0
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mId:Ljava/lang/String;

    return-void
.end method

.method public setOptionalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->mOptionalId:Ljava/lang/String;

    return-void
.end method

.method public updateGroup(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupListener;)V

    goto :goto_0
.end method

.method public updateGroupMembers(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupMembersListener;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->isNotAuth(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/GroupListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupMembersTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupMembersTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/UpdateGroupMembersTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/EnhancedGroup;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/request/UpdateGroupMembersRequest;Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/UpdateGroupMembersListener;)V

    goto :goto_0
.end method
