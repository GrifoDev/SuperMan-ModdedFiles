.class public Lcom/samsung/android/sdk/ssf/group/io/DeleteMemberResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field public deleted_groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/group/io/MemberId;",
            ">;"
        }
    .end annotation
.end field

.field public groups_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method
