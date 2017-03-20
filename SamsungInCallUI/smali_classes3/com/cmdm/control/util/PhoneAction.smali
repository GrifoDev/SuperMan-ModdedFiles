.class public Lcom/cmdm/control/util/PhoneAction;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ServiceIsStart(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 85
    .line 86
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 85
    check-cast v1, Landroid/app/ActivityManager;

    .line 88
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    const/16 v3, 0x1e

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 89
    .local v2, "mServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 94
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 90
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

    .line 91
    const/4 v3, 0x1

    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getContactsMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
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

    .prologue
    .line 22
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v13, "mContactMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 24
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 25
    const-string v5, "data1"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 26
    const-string v5, "display_name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    .line 27
    const-string v5, "photo_id"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    .line 28
    const-string v5, "contact_id"

    aput-object v5, v4, v3

    .line 30
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    .line 29
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 33
    .local v10, "contractsCursor":Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 34
    .local v15, "mobileSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 36
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 37
    .local v16, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 38
    .local v11, "displayname":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 39
    .local v17, "photo_id":Ljava/lang/Long;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 40
    .local v9, "contactid":I
    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    .line 42
    .local v8, "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    iput-object v11, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 43
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    .line 44
    const-string v3, "1"

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    .line 45
    if-eqz v16, :cond_1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    const-string v3, " "

    .line 47
    const-string v5, ""

    .line 46
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    .line 48
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/mobile/ValidationPhone;

    invoke-direct {v14}, Lcom/cmdm/control/util/mobile/ValidationPhone;-><init>()V

    .line 50
    .local v14, "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/cmdm/control/util/mobile/ValidationPhone;->validation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 51
    .local v12, "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 52
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

    .line 53
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    .line 56
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_4

    .line 58
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    int-to-long v6, v9

    .line 57
    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 60
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 61
    .local v18, "photostring":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    .line 65
    .end local v18    # "photostring":Ljava/lang/String;
    .end local v19    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 66
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 70
    invoke-virtual {v8}, Lcom/cmdm/control/bean/ContactInfo;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 77
    if-eqz v10, :cond_3

    .line 78
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 80
    .end local v8    # "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    .end local v9    # "contactid":I
    .end local v11    # "displayname":Ljava/lang/String;
    .end local v12    # "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    .end local v16    # "phoneNumber":Ljava/lang/String;
    .end local v17    # "photo_id":Ljava/lang/Long;
    :cond_3
    return-object v13

    .line 63
    .restart local v8    # "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    .restart local v9    # "contactid":I
    .restart local v11    # "displayname":Ljava/lang/String;
    .restart local v12    # "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    .restart local v16    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "photo_id":Ljava/lang/Long;
    :cond_4
    const-string v3, "no"

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNumContactsMap(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
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

    .prologue
    .line 99
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v13, "mContactMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/cmdm/control/bean/ContactInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    .local v2, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 102
    const-string v5, "data1"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    .line 103
    const-string v5, "display_name"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    .line 104
    const-string v5, "photo_id"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    .line 105
    const-string v5, "contact_id"

    aput-object v5, v4, v3

    .line 107
    .local v4, "projection":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    .line 106
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 110
    .local v10, "contractsCursor":Landroid/database/Cursor;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 111
    .local v15, "mobileSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 114
    .local v16, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 115
    .local v11, "displayname":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 116
    .local v17, "photo_id":Ljava/lang/Long;
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 118
    .local v9, "contactid":I
    new-instance v8, Lcom/cmdm/control/bean/ContactInfo;

    invoke-direct {v8}, Lcom/cmdm/control/bean/ContactInfo;-><init>()V

    .line 119
    .local v8, "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    iput-object v11, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    .line 120
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactname:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setNamePinyin(Ljava/lang/String;)V

    .line 121
    const-string v3, "1"

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->statu:Ljava/lang/String;

    .line 122
    if-eqz v16, :cond_1

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 124
    const-string v3, " "

    const-string v5, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 123
    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    .line 125
    :cond_1
    new-instance v14, Lcom/cmdm/control/util/mobile/ValidationPhone;

    invoke-direct {v14}, Lcom/cmdm/control/util/mobile/ValidationPhone;-><init>()V

    .line 127
    .local v14, "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->defaultcontactnum:Ljava/lang/String;

    invoke-virtual {v14, v3}, Lcom/cmdm/control/util/mobile/ValidationPhone;->validation(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 128
    .local v12, "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 129
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

    .line 130
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    .line 132
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactid:Ljava/lang/String;

    .line 133
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, v8, Lcom/cmdm/control/bean/ContactInfo;->contactnum:Ljava/lang/String;

    invoke-virtual {v13, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v3, v6, v20

    if-lez v3, :cond_4

    .line 141
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v9

    .line 140
    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 142
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "photostring":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    .line 148
    .end local v18    # "photostring":Ljava/lang/String;
    .end local v19    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    .line 112
    if-nez v3, :cond_0

    .line 149
    if-eqz v10, :cond_3

    .line 150
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 152
    .end local v8    # "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    .end local v9    # "contactid":I
    .end local v11    # "displayname":Ljava/lang/String;
    .end local v12    # "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    .end local v16    # "phoneNumber":Ljava/lang/String;
    .end local v17    # "photo_id":Ljava/lang/Long;
    :cond_3
    return-object v13

    .line 145
    .restart local v8    # "contactInfo":Lcom/cmdm/control/bean/ContactInfo;
    .restart local v9    # "contactid":I
    .restart local v11    # "displayname":Ljava/lang/String;
    .restart local v12    # "isIllegal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "mValTel":Lcom/cmdm/control/util/mobile/ValidationPhone;
    .restart local v16    # "phoneNumber":Ljava/lang/String;
    .restart local v17    # "photo_id":Ljava/lang/Long;
    :cond_4
    const-string v3, "no"

    invoke-virtual {v8, v3}, Lcom/cmdm/control/bean/ContactInfo;->setPhotoUri(Ljava/lang/String;)V

    goto :goto_0
.end method
