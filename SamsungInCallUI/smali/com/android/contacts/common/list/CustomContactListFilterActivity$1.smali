.class final Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)I
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->f()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;->f()Ljava/lang/Long;

    move-result-object v4

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v6, v4

    if-lez v1, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    check-cast p2, Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$1;->a(Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;Lcom/android/contacts/common/list/CustomContactListFilterActivity$GroupDelta;)I

    move-result v0

    return v0
.end method
