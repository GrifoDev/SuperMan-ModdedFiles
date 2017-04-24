.class public Lcom/cmdm/control/util/PhoneAction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ServiceIsStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getContactsMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "display_name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "photo_id"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "contact_id"

    aput-object v5, v4, v3

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    iput-object v11, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    const-string v3, "1"

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v16, :cond_1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " "

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    :cond_1
    new-instance v14, Lcom/cmdm/control/util/mobile/ValidationPhone;

    invoke-direct {v14}, Lcom/cmdm/control/util/mobile/ValidationPhone;-><init>()V

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/cmdm/control/util/mobile/ValidationPhone;->validation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_4

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v9

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    :goto_0
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/cmdm/control/bean/ContactInfo;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v13

    :cond_4
    const-string v3, "no"

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNumContactsMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cmdm/control/bean/ContactInfo;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "display_name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "photo_id"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "contact_id"

    aput-object v5, v4, v3

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    iput-object v11, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    const-string v3, "1"

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    if-eqz v16, :cond_1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, " "

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    :cond_1
    new-instance v14, Lcom/cmdm/control/util/mobile/ValidationPhone;

    invoke-direct {v14}, Lcom/cmdm/control/util/mobile/ValidationPhone;-><init>()V

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/cmdm/control/util/mobile/ValidationPhone;->validation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_4

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v9

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v13

    :cond_4
    const-string v3, "no"

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    goto :goto_0
.end method
