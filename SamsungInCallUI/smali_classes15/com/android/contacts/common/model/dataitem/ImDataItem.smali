.class public Lcom/android/contacts/common/model/dataitem/ImDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "ImDataItem.java"


# instance fields
.field private final mCreatedFromEmail:Z


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentValues;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    iput-boolean p2, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return-void
.end method

.method public static createFromEmail(Lcom/android/contacts/common/model/dataitem/EmailDataItem;)Lcom/android/contacts/common/model/dataitem/ImDataItem;
    .locals 3

    new-instance v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    new-instance v1, Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;Z)V

    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->setMimeType(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChatCapability()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "chat_capability"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getCustomProtocol()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data6"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data5"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isCreatedFromEmail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mCreatedFromEmail:Z

    return v0
.end method

.method public isProtocolValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 6

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/ImDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_6

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move v2, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_9
    move v2, v1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1

    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/ImDataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
