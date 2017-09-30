.class public Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected groups_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getGroups()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->groups:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGroups_count()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->groups_count:I

    return v0
.end method

.method public setGroups(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->groups:Ljava/util/ArrayList;

    return-void
.end method

.method public setGroups_count(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->groups_count:I

    return-void
.end method
