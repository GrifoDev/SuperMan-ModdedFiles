.class public Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "CallerInfo"


# instance fields
.field public contactExists:Z

.field public contactIdOrZero:J

.field public contactRefUri:Landroid/net/Uri;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public numberLabel:Ljava/lang/String;

.field public numberType:I

.field public phoneLabel:Ljava/lang/String;

.field public photoUri:Landroid/net/Uri;

.field public ringtoneUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;)Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    if-eqz p3, :cond_6

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactExists:Z

    const-string v0, "CallerInfo"

    const-string v1, "getCallerInfo() based on cursor..."

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "display_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    :cond_0
    const-string v0, "number"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    :cond_1
    const-string v0, "label"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    const-string v1, "type"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberType:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberLabel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberType:I

    iget-object v2, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->phoneLabel:Ljava/lang/String;

    :cond_2
    invoke-static {p1, p2}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I

    move-result v0

    if-eq v0, v4, :cond_3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v2

    if-nez v2, :cond_3

    iput-wide v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactIdOrZero:J

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==> got info.contactIdOrZero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "photo_uri"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->photoUri:Landroid/net/Uri;

    :goto_1
    const-string v0, "custom_ringtone"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->ringtoneUri:Landroid/net/Uri;

    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactExists:Z

    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    iput-object p1, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->contactRefUri:Landroid/net/Uri;

    return-object p3

    :cond_6
    new-instance p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;

    invoke-direct {p3}, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;-><init>()V

    goto/16 :goto_0

    :cond_7
    iput-object v5, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->photoUri:Landroid/net/Uri;

    goto :goto_1

    :cond_8
    iput-object v5, p3, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->ringtoneUri:Landroid/net/Uri;

    goto :goto_2
.end method

.method private static getColumnIndexForPersonId(Landroid/net/Uri;Landroid/database/Cursor;)I
    .locals 5

    const-string v0, "CallerInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- getColumnIndexForPersonId: contactRef URI = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string v2, "content://com.android.contacts/data/phones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "CallerInfo"

    const-string v1, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_1
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> Using column \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' (columnIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") for person_id lookup..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const-string v2, "content://com.android.contacts/data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "CallerInfo"

    const-string v1, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v2, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "CallerInfo"

    const-string v1, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v2, "CallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected prefix for contactRef \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/remotecall/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " { "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", phoneNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/remotecall/contact/RemoteCallerInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "non-null - "

    goto :goto_0

    :cond_1
    const-string v0, "non-null - "

    goto :goto_1
.end method
