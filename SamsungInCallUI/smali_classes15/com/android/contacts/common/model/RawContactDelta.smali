.class public Lcom/android/contacts/common/model/RawContactDelta;
.super Ljava/lang/Object;
.source "RawContactDelta.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "EntityDelta"


# instance fields
.field private mContactsQueryUri:Landroid/net/Uri;

.field private final mEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValues:Lcom/android/contacts/common/model/ValuesDelta;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 645
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/RawContactDelta;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 1
    .param p1, "values"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 75
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    .line 81
    iput-object p1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 82
    return-void
.end method

.method private buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;
    .locals 7

    .prologue
    .line 433
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v4

    .line 434
    .local v4, "isContactInsert":Z
    const/4 v2, 0x0

    .line 435
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-nez v4, :cond_2

    .line 437
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 438
    .local v0, "beforeId":Ljava/lang/Long;
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 439
    .local v1, "beforeVersion":Ljava/lang/Long;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move-object v3, v2

    .line 444
    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    :goto_0
    return-object v3

    .line 440
    .end local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v0    # "beforeId":Ljava/lang/Long;
    .restart local v1    # "beforeVersion":Ljava/lang/Long;
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 442
    const-string v5, "version"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .end local v0    # "beforeId":Ljava/lang/Long;
    .end local v1    # "beforeVersion":Ljava/lang/Long;
    :cond_2
    move-object v3, v2

    .line 444
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "builder":Landroid/content/ContentProviderOperation$Builder;
    goto :goto_0
.end method

.method private containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z
    .locals 5
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 348
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 349
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 351
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 354
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static fromBefore(Lcom/android/contacts/common/model/RawContact;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 4
    .param p0, "before"    # Lcom/android/contacts/common/model/RawContact;

    .prologue
    .line 89
    new-instance v0, Lcom/android/contacts/common/model/RawContactDelta;

    invoke-direct {v0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 90
    .local v0, "rawContactDelta":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    iput-object v2, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 91
    iget-object v2, v0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/model/ValuesDelta;->setIdColumn(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 93
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/contacts/common/model/ValuesDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0

    .line 95
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-object v0
.end method

.method private getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "lazyCreate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 249
    .local v0, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 250
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_0
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/common/model/RawContactDelta;Lcom/android/contacts/common/model/RawContactDelta;)Lcom/android/contacts/common/model/RawContactDelta;
    .locals 9
    .param p0, "local"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p1, "remote"    # Lcom/android/contacts/common/model/RawContactDelta;

    .prologue
    .line 106
    iget-object v5, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 107
    .local v5, "remoteValues":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez p0, :cond_2

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/contacts/common/model/ValuesDelta;->isTransient()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 139
    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    return-object p0

    .line 110
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_2
    if-nez p0, :cond_3

    new-instance p0, Lcom/android/contacts/common/model/RawContactDelta;

    .end local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;-><init>()V

    .line 121
    .restart local p0    # "local":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v7, p1, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-static {v6, v7}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 124
    iget-object v6, p1, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 125
    .local v3, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    .line 126
    .local v4, "remoteEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    .line 129
    .local v0, "childId":Ljava/lang/Long;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v1

    .line 130
    .local v1, "localEntry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/common/model/ValuesDelta;->mergeAfter(Lcom/android/contacts/common/model/ValuesDelta;Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v2

    .line 132
    .local v2, "merged":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method private possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p2, "builder"    # Landroid/content/ContentProviderOperation$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/content/ContentProviderOperation$Builder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    .line 395
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_0
    return-void
.end method

.method private possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V
    .locals 3
    .param p2, "bw"    # Lcom/android/contacts/common/model/BuilderWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;",
            "Lcom/android/contacts/common/model/BuilderWrapper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/contacts/common/model/BuilderWrapper;->getType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    :cond_0
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 2
    .param p1, "entry"    # Lcom/android/contacts/common/model/ValuesDelta;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/android/contacts/common/model/ValuesDelta;->getMimetype()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    return-object p1
.end method

.method public buildAssert(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 416
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_0
    return-void
.end method

.method public buildAssertWrapper(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-direct {p0}, Lcom/android/contacts/common/model/RawContactDelta;->buildAssertHelper()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 427
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    if-eqz v0, :cond_0

    .line 428
    new-instance v1, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_0
    return-void
.end method

.method public buildDiff(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 453
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 455
    .local v4, "firstIndex":I
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v6

    .line 456
    .local v6, "isContactInsert":Z
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    .line 457
    .local v5, "isContactDelete":Z
    if-nez v6, :cond_4

    if-nez v5, :cond_4

    const/4 v7, 0x1

    .line 459
    .local v7, "isContactUpdate":Z
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v9}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 463
    .local v1, "beforeId":Ljava/lang/Long;
    if-eqz v6, :cond_0

    .line 467
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v10, "aggregation_mode"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 471
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 472
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    .line 475
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 476
    .local v8, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    .line 478
    .local v3, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v5, :cond_2

    .line 481
    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 482
    sget-object v11, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "data"

    invoke-static {v11, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 488
    :goto_2
    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 489
    if-eqz v6, :cond_6

    .line 491
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 500
    :cond_3
    :goto_3
    invoke-direct {p0, p1, v2}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAdd(Ljava/util/ArrayList;Landroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 457
    .end local v1    # "beforeId":Ljava/lang/Long;
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v7    # "isContactUpdate":Z
    .end local v8    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 485
    .restart local v1    # "beforeId":Ljava/lang/Long;
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v7    # "isContactUpdate":Z
    .restart local v8    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_5
    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiff(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    goto :goto_2

    .line 494
    :cond_6
    const-string v11, "raw_contact_id"

    invoke-virtual {v2, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 496
    :cond_7
    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 498
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "When parent insert, child must be also"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 504
    .end local v3    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v4, :cond_a

    const/4 v0, 0x1

    .line 505
    .local v0, "addedOperations":Z
    :goto_4
    if-eqz v0, :cond_b

    if-eqz v7, :cond_b

    .line 507
    const/4 v9, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 508
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p1, v4, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 511
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 512
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_9
    :goto_5
    return-void

    .line 504
    .end local v0    # "addedOperations":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 513
    .restart local v0    # "addedOperations":Z
    :cond_b
    if-eqz v6, :cond_9

    .line 515
    iget-object v9, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 516
    const-string v9, "aggregation_mode"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 517
    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 518
    const/4 v9, 0x0

    invoke-virtual {v2, v9, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 519
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method public buildDiffWrapper(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/CPOWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "buildInto":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/CPOWrapper;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 530
    .local v5, "firstIndex":I
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v7

    .line 531
    .local v7, "isContactInsert":Z
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v6

    .line 532
    .local v6, "isContactDelete":Z
    if-nez v7, :cond_4

    if-nez v6, :cond_4

    const/4 v8, 0x1

    .line 534
    .local v8, "isContactUpdate":Z
    :goto_0
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v10}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    .line 536
    .local v1, "beforeId":Ljava/lang/Long;
    if-eqz v7, :cond_0

    .line 540
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    const-string v11, "aggregation_mode"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/android/contacts/common/model/ValuesDelta;->put(Ljava/lang/String;I)V

    .line 544
    :cond_0
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v11, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v3

    .line 545
    .local v3, "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V

    .line 548
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 549
    .local v9, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    .line 551
    .local v4, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-nez v6, :cond_2

    .line 554
    iget-object v12, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    sget-object v13, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 555
    sget-object v12, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v13, "data"

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v3

    .line 561
    :goto_2
    invoke-virtual {v4}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 562
    if-eqz v7, :cond_6

    .line 564
    invoke-virtual {v3}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "raw_contact_id"

    invoke-virtual {v12, v13, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 573
    :cond_3
    :goto_3
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/common/model/RawContactDelta;->possibleAddWrapper(Ljava/util/ArrayList;Lcom/android/contacts/common/model/BuilderWrapper;)V

    goto :goto_1

    .line 532
    .end local v1    # "beforeId":Ljava/lang/Long;
    .end local v3    # "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    .end local v4    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v8    # "isContactUpdate":Z
    .end local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 558
    .restart local v1    # "beforeId":Ljava/lang/Long;
    .restart local v3    # "bw":Lcom/android/contacts/common/model/BuilderWrapper;
    .restart local v4    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .restart local v8    # "isContactUpdate":Z
    .restart local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_5
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v12}, Lcom/android/contacts/common/model/ValuesDelta;->buildDiffWrapper(Landroid/net/Uri;)Lcom/android/contacts/common/model/BuilderWrapper;

    move-result-object v3

    goto :goto_2

    .line 567
    :cond_6
    invoke-virtual {v3}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    const-string v13, "raw_contact_id"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3

    .line 569
    :cond_7
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/BuilderWrapper;->getBuilder()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 571
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "When parent insert, child must be also"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 577
    .end local v4    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v9    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v5, :cond_a

    const/4 v0, 0x1

    .line 578
    .local v0, "addedOperations":Z
    :goto_4
    if-eqz v0, :cond_b

    if-eqz v8, :cond_b

    .line 580
    const/4 v10, 0x2

    .line 581
    invoke-virtual {p0, v1, v10}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 582
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v10, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v5, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 585
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/contacts/common/model/RawContactDelta;->buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 586
    new-instance v10, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :cond_9
    :goto_5
    return-void

    .line 577
    .end local v0    # "addedOperations":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_4

    .line 587
    .restart local v0    # "addedOperations":Z
    :cond_b
    if-eqz v7, :cond_9

    .line 589
    iget-object v10, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 590
    .restart local v2    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v10, "aggregation_mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 591
    const-string v10, "_id=?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 592
    const/4 v10, 0x0

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 593
    new-instance v10, Lcom/android/contacts/common/model/CPOWrapper;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    const/4 v12, 0x2

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/model/CPOWrapper;-><init>(Landroid/content/ContentProviderOperation;I)V

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method protected buildSetAggregationMode(Ljava/lang/Long;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p1, "beforeId"    # Ljava/lang/Long;
    .param p2, "mode"    # I

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 603
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "aggregation_mode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 605
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 611
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 328
    instance-of v4, p1, Lcom/android/contacts/common/model/RawContactDelta;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 329
    check-cast v2, Lcom/android/contacts/common/model/RawContactDelta;

    .line 332
    .local v2, "other":Lcom/android/contacts/common/model/RawContactDelta;
    iget-object v4, v2, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    iget-object v5, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/model/ValuesDelta;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 344
    .end local v2    # "other":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_0
    :goto_0
    return v3

    .line 334
    .restart local v2    # "other":Lcom/android/contacts/common/model/RawContactDelta;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 335
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 337
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-direct {v2, v0}, Lcom/android/contacts/common/model/RawContactDelta;->containsEntry(Lcom/android/contacts/common/model/ValuesDelta;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 342
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType(Lcom/android/contacts/common/model/AccountTypeManager;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 2
    .param p1, "manager"    # Lcom/android/contacts/common/model/AccountTypeManager;

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getAccountType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getDataSet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 285
    .local v2, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 286
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 287
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isDelete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 288
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_2
    return-object v2
.end method

.method public getDataSet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "data_set"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/Long;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "childId"    # Ljava/lang/Long;

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p1, :cond_0

    move-object v0, v2

    .line 312
    :goto_0
    return-object v0

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 306
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 307
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_3
    move-object v0, v2

    .line 312
    goto :goto_0
.end method

.method public getEntryCount(Z)I
    .locals 4
    .param p1, "onlyVisible"    # Z

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 321
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 322
    goto :goto_0

    .line 323
    .end local v1    # "mimeType":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/model/ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMimeEntriesCount(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "onlyVisible"    # Z

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 262
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 270
    :cond_0
    return v1

    .line 264
    :cond_1
    const/4 v1, 0x0

    .line 265
    .local v1, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 267
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    if-eqz p2, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 268
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 269
    goto :goto_0
.end method

.method public getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 6
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-direct {p0, p1, v5}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 156
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-object v2

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 159
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    .line 160
    goto :goto_0

    .line 165
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 214
    .local v1, "entityValues":Landroid/content/ContentValues;
    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "type":Ljava/lang/String;
    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "dataSet":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    return-object v3
.end method

.method public getRawContactId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/model/ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/model/RawContactDelta;->getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    return-object v0
.end method

.method public getSuperPrimaryEntry(Ljava/lang/String;Z)Lcom/android/contacts/common/model/ValuesDelta;
    .locals 7
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "forceSelection"    # Z
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0, p1, v6}, Lcom/android/contacts/common/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-object v3

    .line 189
    :cond_1
    const/4 v2, 0x0

    .line 190
    .local v2, "primary":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 191
    .local v0, "entry":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isSuperPrimary()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v0

    .line 192
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isPrimary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 194
    move-object v2, v0

    goto :goto_1

    .line 198
    .end local v0    # "entry":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_4
    if-eqz p2, :cond_0

    .line 203
    if-eqz v2, :cond_5

    move-object v3, v2

    .line 204
    goto :goto_0

    .line 206
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/model/ValuesDelta;

    goto :goto_0
.end method

.method public getValues()Lcom/android/contacts/common/model/ValuesDelta;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    return-object v0
.end method

.method public hasMimeEntries(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isContactInsert()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isInsert()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/common/model/RawContactDelta;->getValues()Lcom/android/contacts/common/model/ValuesDelta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->isVisible()Z

    move-result v0

    return v0
.end method

.method public markDeleted()V
    .locals 5

    .prologue
    .line 361
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v2}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    .line 362
    iget-object v2, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 363
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 364
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/common/model/ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 367
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 628
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 629
    .local v2, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 630
    .local v3, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/ValuesDelta;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    .line 631
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 632
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 633
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 634
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/model/RawContactDelta;->addEntry(Lcom/android/contacts/common/model/ValuesDelta;)Lcom/android/contacts/common/model/ValuesDelta;

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    :cond_0
    return-void
.end method

.method public setProfileQueryUri()V
    .locals 1

    .prologue
    .line 642
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    .line 643
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v3, "\n("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v3, "Uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    const-string v3, ", Values="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/ValuesDelta;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v3, ", Entries={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 379
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/model/ValuesDelta;

    .line 380
    .local v1, "child":Lcom/android/contacts/common/model/ValuesDelta;
    const-string v5, "\n\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/model/ValuesDelta;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 376
    .end local v1    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v2    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    const-string v3, "null"

    goto :goto_0

    .line 384
    :cond_2
    const-string v3, "\n})\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 616
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/model/RawContactDelta;->getEntryCount(Z)I

    move-result v2

    .line 617
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mValues:Lcom/android/contacts/common/model/ValuesDelta;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 619
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mContactsQueryUri:Landroid/net/Uri;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 620
    iget-object v3, p0, Lcom/android/contacts/common/model/RawContactDelta;->mEntries:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 621
    .local v1, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/ValuesDelta;

    .line 622
    .local v0, "child":Lcom/android/contacts/common/model/ValuesDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 625
    .end local v0    # "child":Lcom/android/contacts/common/model/ValuesDelta;
    .end local v1    # "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/common/model/ValuesDelta;>;"
    :cond_1
    return-void
.end method
