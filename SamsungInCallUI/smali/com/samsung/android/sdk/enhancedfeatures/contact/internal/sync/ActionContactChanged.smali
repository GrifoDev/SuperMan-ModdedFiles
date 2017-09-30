.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactComparator$ContactChangeAction;


# static fields
.field private static final DELIMITER:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String;

.field private static changedContactIds:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static newContactIds:Ljava/lang/String;


# instance fields
.field private agentCPO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;",
            ">;"
        }
    .end annotation
.end field

.field private isStarredChanged:Z

.field public mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->newContactIds:Ljava/lang/String;

    return-void
.end method

.method private deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V
    .locals 7

    const-string v0, "conatct_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMsisdn(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onDeleteContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_NOT_NORMALIZED_NUMBER:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string v2, "contacts_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->contactExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMsisdn(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    invoke-interface {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;->onInsertContactForDuplicateNumber(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteCoreAppsContactIfCan() can find "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so should not delete coreapps contact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ContactQueryHelper;->canFindContactByMSISDN(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdsByMSISDN(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawID.length : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteCoreAppsContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteCoreAppsContactIfCan() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CoreApps contact\'s raw id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static declared-synchronized insertCoreAppsContact(Ljava/util/List;Z)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;",
            ">;Z)",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;"
        }
    .end annotation

    const-class v12, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;

    monitor-enter v12

    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    new-instance v14, Landroid/support/v4/c/e;

    invoke-direct {v14}, Landroid/support/v4/c/e;-><init>()V

    new-instance v15, Landroid/support/v4/c/e;

    invoke-direct {v15}, Landroid/support/v4/c/e;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    move-object v8, v0

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->updateContactsId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setId(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setMsisdn(Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->DELETE:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is D"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteCoreAppsContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is W"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setAddreses(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setEvents(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setMails(Ljava/util/List;)V

    new-instance v5, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    const-string v6, ""

    const-string v7, ""

    const-string v10, ""

    invoke-direct {v5, v6, v7, v10}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V

    const-string v5, ""

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setStatus(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setUrl(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v8, v5}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->setDevice_idx(Ljava/lang/String;)V

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "There is already duid"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->UPDATE:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is U"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    int-to-long v6, v4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v6, v7, v5}, Landroid/support/v4/c/e;->b(JLjava/lang/Object;)V

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v9, 0x1

    :cond_7
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    const-string v5, ""

    :cond_9
    const-string v6, "sync_raw_contacts"

    invoke-static {v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v6

    const-string v7, "raw_contact_number"

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v5

    const-string v6, "raw_contact_duid"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v2

    move v11, v4

    :goto_1
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v2

    if-gez v2, :cond_a

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    :cond_a
    if-eqz v10, :cond_18

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string v4, "mimetype"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_2
    const-string v4, "mimetype"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v4, "data1"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v4, "data2"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    const-string v4, "data3"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_b
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "data10"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_c
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    const-string v4, "data4"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_d
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    const-string v4, "data5"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_e
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDevice_idx()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    const-string v4, "data6"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDevice_idx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_f
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatusTimestamp()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    const-string v4, "timestamp"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatusTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_10
    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v10, :cond_12

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v4, "data10"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    if-eqz v10, :cond_13

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v2, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v5, "data5"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1b

    if-eqz v10, :cond_14

    const-string v2, "mimetype"

    const/4 v4, 0x3

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_15
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-nez v10, :cond_1a

    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    :goto_5
    const-string v6, "data1"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data2"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data3"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data14"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD14()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data15"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD15()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v15, v6, v7, v3}, Landroid/support/v4/c/e;->b(JLjava/lang/Object;)V

    move v10, v2

    move v11, v4

    goto/16 :goto_1

    :cond_17
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_2

    :cond_18
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    goto/16 :goto_2

    :cond_19
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    :cond_1a
    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    goto/16 :goto_5

    :cond_1b
    const-string v2, "entry.getEvent()is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    if-eqz v10, :cond_1d

    const-string v2, "mimetype"

    const/4 v4, 0x2

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    if-nez v10, :cond_1e

    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    :goto_7
    const-string v6, "data1"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data2"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data3"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data4"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data5"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPoBox()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data6"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data7"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data8"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getRegion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data9"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPostCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data10"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1e
    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    goto :goto_7

    :cond_1f
    const-string v2, "entry.getEvent()is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_23

    if-eqz v10, :cond_21

    const-string v2, "mimetype"

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    if-nez v10, :cond_22

    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    :goto_9
    const-string v6, "data1"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data2"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data3"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_22
    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "mimetype"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    goto :goto_9

    :cond_23
    const-string v2, "entry.getMail()is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v2

    if-eqz v2, :cond_2b

    if-eqz v10, :cond_2a

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string v4, "mimetype"

    const/4 v5, 0x4

    const-string v6, "data2"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_a
    const-string v4, "mimetype"

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v5, "data2"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v5, "data1"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getCompany()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getPosition()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    const-string v4, "data4"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_25
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getDepartment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    const-string v4, "data5"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getDepartment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :cond_26
    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_27

    if-eqz v10, :cond_2d

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const-string v4, "mimetype"

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->isDataAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    :goto_c
    const-string v4, "mimetype"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "data1"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    :cond_27
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAppList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2f

    if-eqz v10, :cond_28

    const-string v2, "mimetype"

    const/16 v4, 0x8

    invoke-static {v3, v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->buildDataOpForDelete(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAppList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;

    if-nez v10, :cond_2e

    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    :goto_e
    const-string v6, "mimetype"

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data1"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v6, "data2"

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getSvcId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   svcId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getSvcId()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_a

    :cond_2a
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_a

    :cond_2b
    const-string v2, "entry.getOrganization()is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2c
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_c

    :cond_2d
    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id"

    invoke-virtual {v2, v4, v11}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValueBackReference(Ljava/lang/String;I)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    goto/16 :goto_c

    :cond_2e
    const-string v4, "sync_data"

    invoke-static {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v6, "contact_id"

    invoke-virtual {v4, v6, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    goto/16 :goto_e

    :cond_2f
    const-string v2, "entry.getAppList() is null"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4b

    if-eqz v10, :cond_4b

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v4

    const-string v2, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v2, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const-string v5, "data3"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_10
    if-eqz v10, :cond_49

    const/4 v4, 0x0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_37

    :cond_31
    const/4 v4, 0x0

    :cond_32
    :goto_11
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    sget-object v6, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-ne v4, v2, :cond_33

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    :cond_33
    const/4 v2, 0x1

    :goto_12
    if-eqz v2, :cond_34

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    if-eqz v10, :cond_35

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_35
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3d

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_3d

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create rawid and insert details except presence, batch size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatchWithBackReference(Ljava/util/ArrayList;)[J

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish some batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    invoke-virtual {v14}, Landroid/support/v4/c/e;->b()I

    move-result v2

    if-ge v3, v2, :cond_3c

    invoke-virtual {v14, v3}, Landroid/support/v4/c/e;->a(I)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Landroid/support/v4/c/e;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v2, v6

    aget-wide v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v8, v9, v2}, Landroid/support/v4/c/e;->b(JLjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_13

    :cond_36
    :try_start_3
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f

    :cond_37
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_38

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    add-int/lit8 v2, v4, 0x1

    :goto_15
    move v4, v2

    goto :goto_14

    :cond_38
    const/4 v4, 0x1

    goto/16 :goto_11

    :cond_39
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3b

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3a
    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    const-string v5, "sync_data"

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v5

    const-string v6, "contact_id = ? AND mimetype = ? AND data3 = ?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v2

    invoke-static {v5, v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_16

    :cond_3b
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->WITHDRAW:Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/Constant$SetContactType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    const-string v2, "sync_data"

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    move-result-object v2

    const-string v4, "contact_id = ? AND mimetype = ? AND data3 != ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/4 v2, 0x2

    :goto_17
    if-lez v4, :cond_35

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/ImageFileManager;->deleteUserProfile(Landroid/content/Context;Ljava/lang/String;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_3c
    :try_start_4
    invoke-virtual {v14}, Landroid/support/v4/c/e;->c()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3d
    :goto_18
    move v4, v11

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_6
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_18

    :catchall_1
    move-exception v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    throw v2

    :cond_3e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-lez v2, :cond_40

    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create rawid and insert details except presence, batch size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v13}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatchWithBackReference(Ljava/util/ArrayList;)[J

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finish some batch, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    invoke-virtual {v14}, Landroid/support/v4/c/e;->b()I

    move-result v2

    if-ge v3, v2, :cond_3f

    invoke-virtual {v14, v3}, Landroid/support/v4/c/e;->a(I)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Landroid/support/v4/c/e;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-int v2, v6

    aget-wide v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v8, v9, v2}, Landroid/support/v4/c/e;->b(JLjava/lang/Object;)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_19

    :cond_3f
    invoke-virtual {v14}, Landroid/support/v4/c/e;->c()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    :cond_40
    :goto_1a
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_41
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v15, v2, v3, v4}, Landroid/support/v4/c/e;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImageTimestamp()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V

    :cond_44
    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_41

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_41

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-virtual {v8}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_45
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_45

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v4

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImageTimestamp()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertProfileImageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1b

    :catch_1
    move-exception v2

    :try_start_a
    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1a

    :catchall_2
    move-exception v2

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    throw v2

    :cond_46
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, ";"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    :cond_47
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, ";"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->newContactIds:Ljava/lang/String;

    :cond_48
    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getImageInfoList(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v2

    monitor-exit v12

    return-object v2

    :cond_49
    move v2, v5

    goto/16 :goto_12

    :cond_4a
    move v2, v4

    goto/16 :goto_15

    :cond_4b
    move v5, v9

    goto/16 :goto_10
.end method

.method private static updateContactsId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public applyBatch()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->applyBatch(Ljava/util/ArrayList;)[J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getChangedContactIds()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->changedContactIds:Ljava/lang/String;

    return-object v0
.end method

.method public getNewContactIds()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->newContactIds:Ljava/lang/String;

    return-object v0
.end method

.method public ifOrNotUploadFavorites()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getPrivacySettings()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public onChanged(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->updateContact(Landroid/content/Context;Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V

    return-void
.end method

.method public onDeleted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->deleteContact(Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->deleteCoreAppsContactIfCan(Landroid/database/Cursor;)V

    return-void
.end method

.method public onInserted(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->agentCPO:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->insertContact(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setStarredChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->isStarredChanged:Z

    return-void
.end method

.method public setSyncListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ActionContactChanged;->mSyncListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;

    return-void
.end method
