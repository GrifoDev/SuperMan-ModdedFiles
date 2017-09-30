.class public Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/account/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayLabelComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/common/model/account/AccountType;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/text/Collator;


# direct methods
.method private a(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/model/account/AccountType;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->b:Ljava/text/Collator;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->a(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->a(Lcom/android/contacts/common/model/account/AccountType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/contacts/common/model/account/AccountType;

    check-cast p2, Lcom/android/contacts/common/model/account/AccountType;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/account/AccountType$DisplayLabelComparator;->a(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)I

    move-result v0

    return v0
.end method
