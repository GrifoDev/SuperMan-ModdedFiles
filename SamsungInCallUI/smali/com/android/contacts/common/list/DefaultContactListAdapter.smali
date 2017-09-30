.class public Lcom/android/contacts/common/list/DefaultContactListAdapter;
.super Lcom/android/contacts/common/list/ContactListAdapter;


# direct methods
.method private H()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/net/Uri$Builder;Ljava/lang/String;J)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "directory"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    const-string v0, "limit"

    invoke-virtual {p0, p3, p4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->b(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    const-string v0, "deferred_snippeting"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-void
.end method

.method private b(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 4

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p4, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->H()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/CursorLoader;J)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->v()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ProfileAndContactsLoader;->a(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/a/b/a;->a(Landroid/content/Context;)Lcom/android/contacts/a/b/a;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->i(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->o()I

    move-result v1

    if-ne v1, v5, :cond_6

    if-nez v0, :cond_5

    const-string v0, "sort_key"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/android/contacts/common/compat/ContactsCompat;->a()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Landroid/net/Uri$Builder;Ljava/lang/String;J)V

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->i(Z)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    const-string v0, "Search__order_strequent_results_first"

    invoke-virtual {v2, v0, v4}, Lcom/android/contacts/a/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "(CASE WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 259200 THEN 0  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 604800 THEN 1  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 1209600 THEN 2  WHEN (strftime(\'%s\', \'now\') - last_time_contacted/1000) < 2592000 THEN 3  ELSE 4 END), times_contacted DESC, starred DESC"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->y()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->i(Z)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->b(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sort_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    if-nez v0, :cond_7

    const-string v0, "sort_key_alt"

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sort_key_alt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Landroid/content/CursorLoader;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, -0x6

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iget v1, p4, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->A()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    :goto_0
    cmp-long v1, p2, v6

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    if-eqz p4, :cond_3

    iget v1, p4, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_3

    iget v1, p4, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-eq v1, v4, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget v1, p4, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    if-nez v1, :cond_2

    invoke-virtual {p4, v0}, Lcom/android/contacts/common/list/ContactListFilter;->a(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    return-void

    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->B()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v9, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactListAdapter;->a(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->b(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->b(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->c(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    :goto_2
    return-void

    :cond_2
    move-object v0, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->b(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, v9}, Lcom/android/contacts/common/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method
