.class public Lcom/samsung/android/sdk/ssf/group/io/GroupMemberResponse;
.super Ljava/lang/Object;


# instance fields
.field public count:I

.field public display:I

.field public id:Ljava/lang/String;

.field public member:Lcom/samsung/android/sdk/ssf/group/io/Member;

.field public members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/Member;",
            ">;"
        }
    .end annotation
.end field

.field public offset:I

.field public pages_remain:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
