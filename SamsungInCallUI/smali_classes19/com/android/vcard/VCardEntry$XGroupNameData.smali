.class public Lcom/android/vcard/VCardEntry$XGroupNameData;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XGroupNameData"
.end annotation


# static fields
.field public static mResover:Landroid/content/ContentResolver;


# instance fields
.field private mGroupAccount:Landroid/accounts/Account;

.field private mGroupName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/accounts/Account;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "pGroupName"    # Ljava/lang/String;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    .line 1892
    iput-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupAccount:Landroid/accounts/Account;

    .line 1897
    iput-object p1, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    .line 1898
    iput-object p2, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupAccount:Landroid/accounts/Account;

    .line 1899
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .param p2, "backReferenceIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1911
    .local p1, "operationList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "data/group_membership_only_raw_contact_id"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1913
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1914
    const-string v1, "account_type"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1915
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1916
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1917
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1918
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1920
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1945
    if-ne p0, p1, :cond_0

    .line 1946
    const/4 v1, 0x1

    .line 1952
    :goto_0
    return v1

    .line 1948
    :cond_0
    instance-of v1, p1, Lcom/android/vcard/VCardEntry$XGroupNameData;

    if-nez v1, :cond_1

    .line 1949
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 1951
    check-cast v0, Lcom/android/vcard/VCardEntry$XGroupNameData;

    .line 1952
    .local v0, "Data":Lcom/android/vcard/VCardEntry$XGroupNameData;
    iget-object v1, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 1903
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->XGROUPNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1926
    const/4 v0, 0x1

    .line 1927
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vcard/VCardEntry$XGroupNameData;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
