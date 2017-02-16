.class public Lcom/android/contacts/common/model/dataitem/EventDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "EventDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data3"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z
    .locals 5
    .param p1, "t"    # Lcom/android/contacts/common/model/dataitem/DataItem;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    instance-of v3, p1, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    if-nez v3, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 48
    check-cast v0, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    .line 50
    .local v0, "that":Lcom/android/contacts/common/model/dataitem/EventDataItem;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getStartDate()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 53
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->hasKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    .line 54
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getDataKind()Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 56
    iget-object v3, p0, Lcom/android/contacts/common/model/dataitem/EventDataItem;->mKind:Lcom/android/contacts/common/model/dataitem/DataKind;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getKindTypeColumn(Lcom/android/contacts/common/model/dataitem/DataKind;)I

    move-result v3

    if-nez v3, :cond_5

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_5
    move v2, v1

    .line 61
    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 29
    check-cast p1, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/model/dataitem/EventDataItem;->shouldCollapseWith(Lcom/android/contacts/common/model/dataitem/DataItem;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
