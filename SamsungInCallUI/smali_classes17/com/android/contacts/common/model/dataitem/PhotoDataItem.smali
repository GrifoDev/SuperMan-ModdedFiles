.class public Lcom/android/contacts/common/model/dataitem/PhotoDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;
.source "PhotoDataItem.java"


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getPhoto()[B
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data15"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPhotoFileId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data14"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
