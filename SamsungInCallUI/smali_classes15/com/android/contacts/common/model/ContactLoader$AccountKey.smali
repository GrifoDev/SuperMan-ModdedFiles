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
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "dataSet"    # Ljava/lang/String;

    .prologue
    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    iput-object p1, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    .line 810
    iput-object p2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    .line 811
    iput-object p3, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    .line 812
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 821
    instance-of v2, p1, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    if-nez v2, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 824
    check-cast v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;

    .line 825
    .local v0, "other":Lcom/android/contacts/common/model/ContactLoader$AccountKey;
    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mAccountType:Ljava/lang/String;

    .line 826
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/common/model/ContactLoader$AccountKey;->mDataSet:Ljava/lang/String;

    .line 827
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 816
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
