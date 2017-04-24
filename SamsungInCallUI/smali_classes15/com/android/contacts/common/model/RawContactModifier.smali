.class public Lcom/android/contacts/common/model/RawContactModifier;
.super Ljava/lang/Object;
.source "RawContactModifier.java"


# static fields
.field private static final COLUMN_FOR_LABEL:Ljava/lang/String; = "data3"

.field private static final COLUMN_FOR_TYPE:Ljava/lang/String; = "data2"

.field private static final DEBUG:Z = false

.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_CUSTOM:I

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v0, Lcom/android/contacts/common/model/RawContactModifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    const-string v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "vnd.android.cursor.item/sip_address"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    :goto_0
    return v5

    :cond_1
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_2
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    goto :goto_1

    :cond_3
    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/common/model/RawContactModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v5, v7

    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v4, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v1

    iget v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :goto_1
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    iget v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method

.method public static ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, p2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    :goto_0
    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    :goto_1
    return-object v3

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v4, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    move-object v3, v0

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4

    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 11

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditType;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    iget v0, v9, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne p3, v0, :cond_3

    move-object v2, v9

    goto :goto_0

    :cond_3
    if-lez v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object v2, v0

    goto :goto_0

    :cond_5
    move-object v2, v8

    goto :goto_0
.end method

.method public static getCurrentType(Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentType(Landroid/database/Cursor;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 2

    iget-object v1, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/common/model/RawContactModifier;->getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/common/model/dataitem/DataKind;I)Lcom/android/contacts/common/model/account/AccountType$EditType;
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;
    .locals 9

    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    iget-object v6, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getCurrentType(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    iget v7, v4, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_2
    const/high16 v6, -0x80000000

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getTypePrecedence(Lcom/android/contacts/common/model/dataitem/DataKind;I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v2, v1, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method public static getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/account/AccountType$EditType;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v6

    :cond_1
    if-nez p4, :cond_2

    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->getTypeFrequencies(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    :cond_2
    const/4 v3, 0x1

    if-eqz p5, :cond_3

    const/high16 v7, -0x80000000

    invoke-virtual {p4, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iget v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    const/4 v3, 0x1

    :cond_3
    :goto_0
    iget-object v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    const/4 v5, 0x1

    :goto_2
    if-eqz p3, :cond_a

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v2, p2}, Lcom/android/contacts/common/model/account/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget v7, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-ge v1, v7, :cond_7

    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    :cond_8
    iget v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    iget-boolean v8, v2, Lcom/android/contacts/common/model/account/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private static hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Set;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v4, v3, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v5

    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_3
    :goto_1
    return v5

    :cond_4
    move v2, v6

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public static hasChanges(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;Ljava/util/Set;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            "Lcom/android/contacts/common/model/AccountTypeManager;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForSplitting()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->isMarkedForJoining()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "data_set"

    invoke-virtual {v4, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    invoke-static {v2, v3, p2}, Lcom/android/contacts/common/model/RawContactModifier;->hasChanges(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/Set;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/android/contacts/common/model/RawContactModifier;->hasEditTypes(Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;ZLandroid/util/SparseIntArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 3

    const/high16 v2, -0x80000000

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v0

    :cond_1
    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 4

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    :cond_1
    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-static {v0}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "vnd.android.cursor.item/photo"

    iget-object v5, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "data15"

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditField;

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;",
            "Lcom/android/contacts/common/model/dataitem/DataKind;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v6, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    iget v2, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    :cond_1
    :goto_1
    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    iget-object v6, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/common/model/RawContactModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V
    .locals 21

    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v6, v12, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    check-cast v12, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    invoke-virtual {v9, v6, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_3
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_3

    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v3, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/model/account/AccountType$EventEditType;

    new-instance v15, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Ljava/text/ParsePosition;-><init>(I)V

    const/16 v19, 0x0

    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v11, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    if-nez v10, :cond_4

    const/16 v19, 0x1

    sget-object v3, Lcom/android/contacts/common/util/CommonDateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v11, v15}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    :cond_4
    if-eqz v10, :cond_6

    if-eqz v19, :cond_6

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/common/model/account/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/contacts/common/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    if-nez p3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    const-string v3, "data1"

    sget-object v6, Lcom/android/contacts/common/util/CommonDateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_1
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 19

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v16, v0

    const-string v17, "data2"

    invoke-virtual/range {v16 .. v17}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    if-eqz v5, :cond_3

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    const-string v16, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v17, v0

    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->specificMax:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_4
    if-nez v5, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_5
    if-nez v5, :cond_6

    sget-object v16, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/model/ValuesDelta;

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_8

    if-ge v11, v13, :cond_0

    :cond_8
    invoke-virtual {v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v15

    if-eqz v15, :cond_7

    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    if-eqz v5, :cond_b

    move-object v12, v5

    const-string v17, "data2"

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "data3"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_9
    :goto_2
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    if-ltz v10, :cond_a

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ge v3, v10, :cond_7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    add-int/lit8 v18, v3, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_a
    invoke-static {v15}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_b
    const/4 v12, 0x0

    const-string v17, "data2"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v12, v9

    goto :goto_2
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 5

    iget-object v3, p2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, p2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public static migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 24

    const-string v19, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureEntryMaxSize(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/model/account/AccountType$EditField;

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v20, "data1"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v14, 0x1

    :cond_3
    const-string v20, "data4"

    iget-object v0, v5, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_4
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/account/AccountType$EditType;

    iget v0, v6, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_6
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v8}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v18

    if-eqz v18, :cond_6

    const-string v19, "data2"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    const-string v21, "data2"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    const-string v19, "data2"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-nez v19, :cond_7

    const-string v19, "data3"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_7
    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_b

    if-nez v14, :cond_8

    const-string v19, "data1"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v15, :cond_a

    const-string v19, "data4"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-static/range {v18 .. v18}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/contacts/common/model/account/AccountType$EditType;->rawValue:I

    goto :goto_3

    :cond_a
    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-eqz v14, :cond_8

    sget-object v19, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v21, "data10"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x1

    const-string v21, "data9"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x2

    const-string v21, "data8"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x3

    const-string v21, "data7"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x4

    const-string v21, "data6"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x5

    const-string v21, "data4"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x6

    const-string v21, "data5"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v13

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    aget-object v7, v13, v19

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_c

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    :cond_d
    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v21, "data5"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x1

    const-string v21, "data4"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x2

    const-string v21, "data6"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x3

    const-string v21, "data7"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x4

    const-string v21, "data8"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x5

    const-string v21, "data9"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    const/16 v19, 0x6

    const-string v21, "data10"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v13, v19

    goto/16 :goto_5

    :cond_e
    const-string v19, "data1"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v19, "data5"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data4"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data6"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data7"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data8"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data9"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v19, "data10"

    invoke-virtual/range {v18 .. v19}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 8

    if-ne p4, p3, :cond_3

    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v3, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, p1, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    invoke-virtual {p2, v7}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_1

    :cond_3
    invoke-virtual {p4}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-boolean v6, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->editable:Z

    if-eqz v6, :cond_4

    iget-object v3, v2, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    const-string v6, "#displayName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "#phoneticName"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p0, p1, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_5
    const-string v6, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migratePostal(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_6
    const-string v6, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-static {p1, p2, v2, v6}, Lcom/android/contacts/common/model/RawContactModifier;->migrateEvent(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_8
    sget-object v6, Lcom/android/contacts/common/model/RawContactModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p1, p2, v2}, Lcom/android/contacts/common/model/RawContactModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V

    goto :goto_2

    :cond_9
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected editable mime-type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_a
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)V
    .locals 16

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v13, "data1"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v5, 0x1

    :cond_3
    const-string v13, "#phoneticName"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v7, 0x1

    :cond_4
    const-string v13, "data9"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v6, 0x1

    :cond_5
    const-string v13, "data8"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v9, 0x1

    :cond_6
    const-string v13, "data7"

    iget-object v14, v2, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    const-string v12, "data1"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_a

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    invoke-static {v0, v1, v11}, Lcom/android/contacts/common/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    const-string v12, "data1"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_8
    const-string v12, "#phoneticName"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_e

    if-nez v7, :cond_9

    const/4 v12, 0x0

    invoke-static {v4, v12}, Lcom/android/contacts/common/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    move-result-object v10

    const-string v12, "#phoneticName"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v6, :cond_b

    const-string v12, "data9"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v9, :cond_c

    const-string v12, "data8"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    if-eqz v8, :cond_d

    const-string v12, "data7"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    invoke-static {v11}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    :cond_a
    if-eqz v5, :cond_8

    const-string v12, "data1"

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/contacts/common/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v13, Lcom/android/contacts/common/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    array-length v14, v13

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v14, :cond_8

    aget-object v3, v13, v12

    invoke-virtual {v11, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_b
    const-string v12, "data9"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v12, "data8"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v12, "data7"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    if-eqz v7, :cond_f

    const-string v12, "#phoneticName"

    const-string v13, "data9"

    invoke-virtual {v11, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "data8"

    invoke-virtual {v11, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "data7"

    invoke-virtual {v11, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/android/contacts/common/util/NameConverter;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-nez v6, :cond_10

    const-string v12, "data9"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_10
    if-nez v9, :cond_11

    const-string v12, "data8"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_11
    if-nez v8, :cond_9

    const-string v12, "data7"

    invoke-virtual {v11, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 9

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/common/model/RawContactModifier;->getBestValidType(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;ZI)Lcom/android/contacts/common/model/account/AccountType$EditType;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Lcom/android/contacts/common/model/account/AccountType$EditType;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, v3, Lcom/android/contacts/common/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/high16 v8, -0x80000000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 18

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    invoke-static/range {p1 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Lcom/android/contacts/common/model/RawContactModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v12, 0x1

    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v14

    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v13

    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->canInsert(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/common/model/RawContactModifier;->insertChild(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v9

    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 16

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/model/RawContactModifier;->ensureKindExists(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v8

    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v12

    const/4 v15, 0x0

    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v12, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v4, "data1"

    iget-object v5, v11, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v15, 0x1

    :cond_3
    if-eqz v15, :cond_5

    if-eqz v8, :cond_5

    const-string v2, "data1"

    invoke-virtual {v8, v2, v13}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/contacts/common/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v14, v2}, Lcom/android/contacts/common/util/NameConverter;->parsePhoneticName(Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;)Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    move-result-object v10

    const-string v2, "data9"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data8"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data7"

    invoke-virtual {v10}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_4

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v8, :cond_6

    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/common/model/account/AccountType;Lcom/android/contacts/common/model/RawContactDelta;Landroid/os/Bundle;)V
    .locals 10

    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v1

    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/model/RawContactModifier;->parseExtras(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/dataitem/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/contacts/common/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/common/model/account/AccountType$EditField;

    const-string v2, "data1"

    iget-object v3, v8, Lcom/android/contacts/common/model/account/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x1

    :cond_1
    if-nez v9, :cond_2

    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->putNull(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private static parseValues(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            "Lcom/android/contacts/common/model/account/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v10, "mimetype"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "formattedPhoneNumber"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v10, "data2"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "data3"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "data2"

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p1, v6}, Lcom/android/contacts/common/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-static {v8}, Lcom/android/contacts/common/model/ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget v10, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_4
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v2, v8, v5}, Lcom/android/contacts/common/model/RawContactModifier;->areEqual(Lcom/android/contacts/common/model/ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v0, 0x0

    :cond_6
    iget v10, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_7

    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/contacts/common/model/dataitem/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_7
    if-eqz v0, :cond_8

    invoke-static {v4, v3, v5}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    :cond_8
    if-eqz v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    const/4 v0, 0x1

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {v2, v5}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v0, 0x0

    :cond_c
    if-eqz v0, :cond_d

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_2

    :cond_d
    if-eqz v0, :cond_e

    invoke-static {v4, v3, v5}, Lcom/android/contacts/common/model/RawContactModifier;->adjustType(Lcom/android/contacts/common/model/ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v0

    :cond_e
    if-eqz v0, :cond_f

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto/16 :goto_0

    :cond_f
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_10
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v2, v5}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    sget-object v10, Lcom/android/contacts/common/model/RawContactModifier;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V
    .locals 14

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/model/dataitem/DataKind;

    iget-object v7, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isUpdate()Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_2
    const/4 v8, 0x1

    :goto_1
    if-nez v8, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const-string v11, "com.google"

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v12

    const-string v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v11, "vnd.android.cursor.item/photo"

    iget-object v12, v6, Lcom/android/contacts/common/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v3, :cond_5

    const/4 v4, 0x1

    :goto_2
    invoke-static {v1, v6}, Lcom/android/contacts/common/model/RawContactModifier;->isEmpty(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/dataitem/DataKind;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isFromTemplate()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_7
    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->markDeleted()V

    :cond_8
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/AccountTypeManager;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "data_set"

    invoke-virtual {v4, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/contacts/common/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/account/AccountType;)V

    goto :goto_0

    :cond_0
    return-void
.end method
