.class public Lcom/android/contacts/common/model/dataitem/PhoneDataItem;
.super Lcom/android/contacts/common/model/dataitem/DataItem;


# direct methods
.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/model/dataitem/DataItem;-><init>(Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->a()Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "formattedPhoneNumber"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->a()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data1"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/model/dataitem/PhoneDataItem;->a()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "data4"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
