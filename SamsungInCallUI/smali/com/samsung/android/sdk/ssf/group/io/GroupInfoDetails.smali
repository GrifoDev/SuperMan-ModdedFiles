.class public Lcom/samsung/android/sdk/ssf/group/io/GroupInfoDetails;
.super Ljava/lang/Object;


# instance fields
.field public app_id:Ljava/lang/String;

.field public created_at:Ljava/lang/Long;

.field public group_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public members_count:I

.field public meta_data:Ljava/lang/Object;

.field public non_members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/GroupMembersId;",
            ">;"
        }
    .end annotation
.end field

.field public option:I

.field public owner_id:Ljava/lang/String;

.field public sid:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
