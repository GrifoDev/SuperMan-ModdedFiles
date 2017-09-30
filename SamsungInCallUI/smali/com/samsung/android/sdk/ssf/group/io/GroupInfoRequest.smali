.class public Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;
.super Ljava/lang/Object;


# instance fields
.field public app_id:Ljava/lang/String;

.field public group_name:Ljava/lang/String;

.field public members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/MemberRequest;",
            ">;"
        }
    .end annotation
.end field

.field public message:Ljava/lang/String;

.field public meta_data:Ljava/lang/String;

.field public option:I

.field public optional_id:Ljava/lang/String;

.field public owner_id:Ljava/lang/String;

.field public sid:I

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ssf/group/io/GroupInfoRequest;->members:Ljava/util/List;

    return-void
.end method
