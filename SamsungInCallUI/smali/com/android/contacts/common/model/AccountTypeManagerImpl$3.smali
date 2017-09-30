.class final Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/AccountTypeManagerImpl;
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
        "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
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
.method public a(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    if-nez v1, :cond_3

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    check-cast p2, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManagerImpl$3;->a(Lcom/android/contacts/common/model/account/AccountWithDataSet;Lcom/android/contacts/common/model/account/AccountWithDataSet;)I

    move-result v0

    return v0
.end method
