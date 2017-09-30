.class final Lcom/android/contacts/common/model/account/AccountType$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
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
        "Lcom/android/contacts/common/model/dataitem/DataKind;",
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
.method public a(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/dataitem/DataKind;)I
    .locals 2

    iget v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->f:I

    iget v1, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataKind;

    check-cast p2, Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$1;->a(Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v0

    return v0
.end method
