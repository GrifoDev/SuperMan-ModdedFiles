.class Lcom/android/contacts/common/model/ContactLoader$AccountKey;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountKey"
.end annotation


# instance fields
.field private final mAccountName:Ljava/lang/String;

.field private final mAccountType:Ljava/lang/String;

.field private final mDataSet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
