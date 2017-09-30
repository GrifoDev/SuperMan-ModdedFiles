.class public Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AccountSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/a/b/u;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/CustomContactListFilterActivity$AccountDisplay;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method
