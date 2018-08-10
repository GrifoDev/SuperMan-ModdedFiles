.class public Landroid/provider/ContactsInternal;
.super Ljava/lang/Object;
.source "ContactsInternal.java"


# static fields
.field private static final CONTACTS_URI_LOOKUP:I = 0x3e9

.field private static final CONTACTS_URI_LOOKUP_ID:I = 0x3e8

.field private static final sContactsUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    sget-object v0, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v1, "com.android.contacts"

    const-string/jumbo v2, "contacts/lookup/*/#"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v9

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_2

    sget-wide v10, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    :goto_1
    const/4 v9, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string/jumbo v9, "directory"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    const-wide/32 v12, 0x3b9aca00

    :goto_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    :cond_0
    const/4 v9, 0x0

    return v9

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    goto :goto_1

    :cond_3
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto :goto_2

    :cond_4
    invoke-static {v10, v11}, Landroid/provider/ContactsContract$Contacts;->isEnterpriseContactId(J)Z

    move-result v9

    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid enterprise contact id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    invoke-static {v12, v13}, Landroid/provider/ContactsContract$Directory;->isEnterpriseDirectoryId(J)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Invalid enterprise directory id: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    const-class v9, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    sget-object v9, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    sget-wide v18, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    sub-long v4, v10, v18

    const-wide/32 v18, 0x3b9aca00

    sub-long v7, v12, v18

    move-object/from16 v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/admin/DevicePolicyManager;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    const/4 v9, 0x1

    return v9
.end method

.method public static startQuickContactWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsInternal;->sContactsUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroid/provider/ContactsInternal;->startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Landroid/provider/ContactsInternal;->maybeStartManagedQuickContact(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static startQuickContactWithErrorToastForUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const v1, 0x1040878

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
