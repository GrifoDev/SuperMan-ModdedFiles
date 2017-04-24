.class public Lcom/android/contacts/common/model/RawContactDeltaList;
.super Ljava/util/ArrayList;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/common/model/RawContactDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/RawContactDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v5, "type"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aget v0, p3, p1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-ltz v5, :cond_0

    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    const-string v7, "_id"

    invoke-virtual {v5, v7}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    aget v1, p3, p2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v10

    if-ltz v5, :cond_2

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_1
    return-object v2

    :cond_0
    if-ltz v0, :cond_1

    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    :cond_1
    move-object v2, v6

    goto :goto_1

    :cond_2
    if-ltz v1, :cond_3

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    :cond_3
    move-object v2, v6

    goto :goto_1
.end method

.method private buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;[I)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2, v3, p2}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffHelper(II[I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProviderOperation;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lcom/android/contacts/common/model/RawContactDeltaList;"
        }
    .end annotation

    new-instance v0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->addAll(Ljava/util/Iterator;)V

    :cond_0
    return-object v0
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/common/model/RawContactDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDeltaList;Lcom/android/contacts/common/model/RawContactDeltaList;)Lcom/android/contacts/common/model/RawContactDeltaList;
    .locals 6

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/common/model/RawContactDeltaList;

    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public addAll(Ljava/util/Iterator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Landroid/content/Entity;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/content/Entity;

    invoke-static {v1}, Lcom/android/contacts/common/model/RawContact;->createFrom(Landroid/content/Entity;)Lcom/android/contacts/common/model/RawContact;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/android/contacts/common/model/RawContactDelta;->fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    check-cast v1, Lcom/android/contacts/common/model/RawContact;

    move-object v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    sget-boolean v15, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: list="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v12

    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v15

    new-array v3, v15, [I

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v9

    add-int/lit8 v14, v11, 0x1

    if-eqz v9, :cond_2

    move v15, v7

    :goto_2
    aput v15, v3, v11

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDelta;->buildDiff(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    aget-wide v20, v17, v15

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-eqz v19, :cond_3

    const-string v19, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_4
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    goto :goto_2

    :cond_3
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_4
    if-nez v9, :cond_5

    move v11, v14

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v15, :cond_6

    move v11, v14

    goto :goto_1

    :cond_6
    const-wide/16 v18, -0x1

    cmp-long v15, v12, v18

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v15, "raw_contact_id1"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "raw_contact_id2"

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move v11, v14

    goto/16 :goto_1

    :cond_7
    const/4 v15, -0x1

    if-ne v8, v15, :cond_8

    move v8, v7

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v15, "raw_contact_id1"

    invoke-virtual {v4, v15, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "raw_contact_id2"

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v2, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_b
    sget-boolean v15, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v15, :cond_c

    sget-object v15, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: ops="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v6
.end method

.method public buildDiffWrapper()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;"
        }
    .end annotation

    sget-boolean v15, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiffWrapper: list="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v12

    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertWrapper(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v15

    new-array v3, v15, [I

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5}, Lcom/android/contacts/common/model/RawContactDelta;->isContactInsert()Z

    move-result v9

    add-int/lit8 v14, v11, 0x1

    if-eqz v9, :cond_2

    move v15, v7

    :goto_2
    aput v15, v3, v11

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/RawContactDelta;->buildDiffWrapper(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v15, v0, :cond_4

    aget-wide v20, v17, v15

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-wide/16 v20, -0x1

    cmp-long v19, v12, v20

    if-eqz v19, :cond_3

    const-string v19, "raw_contact_id2"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :goto_4
    new-instance v19, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v20

    const/16 v21, 0x2

    invoke-direct/range {v19 .. v21}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, -0x1

    goto :goto_2

    :cond_3
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    :cond_4
    if-nez v9, :cond_5

    move v11, v14

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v15, :cond_6

    move v11, v14

    goto :goto_1

    :cond_6
    const-wide/16 v18, -0x1

    cmp-long v15, v12, v18

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v15, "raw_contact_id1"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v15, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "raw_contact_id2"

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    new-instance v15, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move v11, v14

    goto/16 :goto_1

    :cond_7
    const/4 v15, -0x1

    if-ne v8, v15, :cond_8

    move v8, v7

    goto :goto_5

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v15, "raw_contact_id1"

    invoke-virtual {v4, v15, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v15, "raw_contact_id2"

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    new-instance v15, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->buildSplitContactDiffWrapper(Ljava/util/ArrayList;[I)V

    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v2, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_b
    sget-boolean v15, Lcom/android/contacts/common/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v15, :cond_c

    sget-object v15, Lcom/android/contacts/common/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "buildDiff: ops="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Lcom/android/contacts/common/model/RawContactDeltaList;->diffToStringWrapper(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object v6
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 8

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    goto :goto_0
.end method

.method public getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/RawContactDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v7

    if-nez v7, :cond_1

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v3, v1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    move-object v1, v3

    goto :goto_0

    :cond_6
    move-object v1, v4

    goto :goto_0
.end method

.method public indexOfFirstWritableRawContact(Landroid/content/Context;)I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5

    const/4 v3, -0x1

    if-nez p1, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Join=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], Values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-boolean v2, p0, Lcom/android/contacts/common/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
