.class public Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;
.super Ljava/lang/Object;


# instance fields
.field private guid:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->guid:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/group/io/GetGroupsUserBelongsByGuidRequest;->type:Ljava/lang/String;

    return-void
.end method
