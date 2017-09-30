.class public Lcom/android/contacts/common/model/dataitem/DataItem;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/contacts/common/Collapser$Collapsible;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/contacts/common/Collapser$Collapsible",
        "<",
        "Lcom/android/contacts/common/model/dataitem/DataItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->a:Landroid/content/ContentValues;

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/dataitem/DataItem;
    .locals 2

    const-string v0, "mimetype"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/GroupMembershipDataItem;-><init>(Landroid/content/ContentValues;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/StructuredNameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/contacts/common/model/dataitem/EmailDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/EmailDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/StructuredPostalDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_4
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/android/contacts/common/model/dataitem/ImDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/ImDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_5
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/OrganizationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_6
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/NicknameDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_7
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/android/contacts/common/model/dataitem/NoteDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/NoteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_8
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/WebsiteDataItem;-><init>(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_9
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v0, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/SipAddressDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v0, Lcom/android/contacts/common/model/dataitem/EventDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/EventDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_b
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v0, Lcom/android/contacts/common/model/dataitem/RelationDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/RelationDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_c
    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v0, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/IdentityDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_d
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/PhotoDataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    :cond_e
    new-instance v0, Lcom/android/contacts/common/model/dataitem/DataItem;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/model/dataitem/DataItem;->a:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
