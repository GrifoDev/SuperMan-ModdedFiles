.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareProfile(Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;)Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;
    .locals 12

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    invoke-direct {v8, v11}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "vnd.sec.cursor.item/name_card"

    :try_start_0
    const-string v1, "email_checking"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-static {v11, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "email deleted count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    const-string v1, "organisation_checking"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-static {v11, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "organization deleted count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/organization"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    const-string v1, "date_checking"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-static {v11, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event deleted count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    :cond_2
    :goto_2
    const-string v1, "address_checking"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->isIndividualItemsEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v11, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteProfileDataByMimeType(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address deleted count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_4
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    const/4 v2, 0x0

    :try_start_2
    const-string v3, "mimetype != ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "vnd.sec.cursor.item/samsung_easysignup"

    aput-object v6, v4, v5

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v9

    :try_start_3
    const-string v2, "profile"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id ASC"

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    if-eqz v9, :cond_5

    if-nez v8, :cond_a

    :cond_5
    :try_start_4
    const-string v0, "a cursor is null"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    move-object v0, v7

    :goto_5
    return-object v0

    :cond_6
    :try_start_5
    const-string v1, "vnd.android.cursor.item/email_v2"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :try_start_6
    const-string v1, "vnd.android.cursor.item/organization"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_9
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->addOffEntry(Ljava/lang/String;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_a
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "Me profile is deleted"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v11}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearProfileTable(Landroid/content/Context;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setStatusMessage(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->initMultiField(ZZZZZZ)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;->setStatus(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_5

    :cond_b
    :try_start_8
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->havePhotoDeletedMimeType(Landroid/content/ContentResolver;)Z

    move-result v0

    invoke-interface {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->setHavePhotoDeletedMimeType(Z)V

    new-instance v0, Landroid/database/CursorJoiner;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v0, v9, v1, v8, v2}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorJoiner$Result;

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual {v0}, Landroid/database/CursorJoiner$Result;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added : id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mimeType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mimetype"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.sec.cursor.item/name_card"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v7, v8

    move-object v1, v9

    :goto_7
    :try_start_9
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    :goto_8
    invoke-interface {p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->getResult()Lcom/samsung/android/sdk/ssf/contact/io/ProfileInfo;

    move-result-object v0

    goto/16 :goto_5

    :cond_d
    :try_start_a
    invoke-interface {p0, v9, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :goto_9
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :pswitch_1
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted : id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mimeType= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "mimetype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mimetype"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "vnd.sec.cursor.item/name_card"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    invoke-interface {p0, v9, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_6

    :pswitch_2
    const-string v0, "data_version"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v2, "data_version"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "mimetype"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "vnd.sec.cursor.item/name_card"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v0, "Don\'t share mimetype : vnd.sec.cursor.item/name_card"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    if-le v0, v2, :cond_c

    const-string v0, "BOTH : dataVersion is updated"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mimetype"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;->isPhotoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0, v9, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_6

    :cond_10
    move v0, v10

    :goto_a
    const/16 v2, 0xf

    if-gt v0, v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-interface {p0, v9, v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator$ProfileChangeAction;->onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_12
    invoke-static {v9}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    invoke-static {v8}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/QueryHelper;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v7

    move-object v9, v7

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    move-object v8, v7

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v8, v7

    move-object v9, v1

    goto/16 :goto_9

    :catch_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_7

    :catch_4
    move-exception v0

    move-object v1, v9

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static havePhotoDeletedMimeType(Landroid/content/ContentResolver;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getProfileAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v3, "mimetype = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "vnd.android.cursor.item/photo_deleted"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_5

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lez v0, :cond_5

    move v0, v8

    :goto_0
    if-eqz v2, :cond_1

    if-eqz v6, :cond_2

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_2
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileComparator;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    :try_start_7
    throw v0

    :catch_3
    move-exception v0

    move-object v1, v0

    move v0, v7

    goto :goto_2

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :cond_5
    move v0, v7

    goto :goto_0
.end method
