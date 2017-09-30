.class public Lcom/android/contacts/common/list/PhoneNumberListAdapter;
.super Lcom/android/contacts/common/list/ContactEntryListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;,
        Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/common/list/DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private final e:Ljava/lang/CharSequence;

.field private final f:Ljava/lang/String;

.field private g:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private h:Z

.field private i:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    const v0, 0x7f0905cd

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->i(I)V

    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->e:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/contacts/common/GeoUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->f:Ljava/lang/String;

    invoke-static {}, Lcom/android/contacts/common/extensions/ExtensionsFactory;->a()Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a:Landroid/content/Context;

    invoke-interface {v0, v3}, Lcom/android/contacts/common/extensions/ExtendedPhoneDirectoriesManager;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c:Ljava/util/List;

    :goto_0
    invoke-static {p1}, Lcom/android/contacts/common/CallUtil;->a(Landroid/content/Context;)I

    move-result v3

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->j:Z

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->k:Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private a(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V
    .locals 5

    if-eqz p5, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v2, p5, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p5, Lcom/android/contacts/common/list/ContactListFilter;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :pswitch_1
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

    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    invoke-virtual {p5, p2}, Lcom/android/contacts/common/list/ContactListFilter;->a(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private d(J)Lcom/android/contacts/common/list/DirectoryPartition;
    .locals 3

    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    return-object v0
.end method


# virtual methods
.method protected a(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c(J)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "encoded"

    invoke-virtual {v1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "displayName"

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic a(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/CursorLoader;J)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->j()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extended directory must have a content URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "limit"

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-static {p2, p3}, Lcom/android/contacts/common/compat/DirectoryCompat;->b(J)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->j()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->a()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v2, :cond_3

    const-string v0, "limit"

    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(J)Lcom/android/contacts/common/list/DirectoryPartition;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/DirectoryPartition;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "length(data1) < 1000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    const-string v0, "remove_duplicate_entries"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->n()I

    move-result v0

    if-ne v0, v7, :cond_a

    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->b:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->o()I

    move-result v0

    if-ne v0, v7, :cond_b

    const-string v0, "sort_key"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->h:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/contacts/common/compat/CallableCompat;->a()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/contacts/common/compat/PhoneCompat;->a()Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->h:Z

    if-eqz v0, :cond_8

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Callable;->CONTENT_URI:Landroid/net/Uri;

    :goto_5
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "directory"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->C()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "android.provider.extra.ADDRESS_BOOK_INDEX"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->y()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Landroid/content/CursorLoader;Landroid/net/Uri$Builder;JLcom/android/contacts/common/list/ContactListFilter;)V

    goto/16 :goto_2

    :cond_8
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    :cond_9
    const-string v0, "length(data1) < 1000"

    goto :goto_3

    :cond_a
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string v0, "sort_key_alt"

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/database/Cursor;)V
    .locals 13

    const-wide/16 v10, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->m()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d()I

    move-result v0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v1, v9

    if-eq v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    if-lez v9, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d()I

    move-result v12

    move v8, v7

    move v6, v7

    move-wide v4, v10

    :goto_0
    if-ge v8, v12, :cond_2

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    move-wide v0, v2

    :goto_1
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->b(J)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, v8, 0x1

    :goto_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v6, v2

    move-wide v4, v0

    goto :goto_0

    :cond_2
    add-long v0, v4, v10

    iput-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    move v1, v7

    :goto_3
    if-ge v1, v9, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p0, v6, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(ILcom/android/contacts/common/list/CompositeCursorAdapter$Partition;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/list/DirectoryPartition;->a(J)V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    move v2, v6

    goto :goto_2

    :cond_5
    move-wide v0, v4

    goto :goto_1
.end method

.method protected a(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/view/View;ILandroid/database/Cursor;I)V

    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-nez v0, :cond_4

    move v0, v2

    :goto_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    :cond_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {p0, v1, p3, v2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;I)V

    invoke-virtual {p0, v1, p4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(Lcom/android/contacts/common/list/ContactListItemView;I)V

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x6

    const/16 v5, 0x8

    const/4 v7, 0x5

    const/4 v8, 0x7

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;IIIII)V

    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->l()Z

    move-result v0

    invoke-virtual {p0, v1, p3, v0, p4}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView;)V

    invoke-virtual {v1, v3, v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(ZZ)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public a(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->g:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    return-void
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->b()V

    return-void
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/contacts/common/ContactsUtils;->a(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setWorkProfileIconEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->o(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :goto_1
    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->r()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v3, v6

    :goto_2
    if-nez v3, :cond_2

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->r()Z

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->p()Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->r()Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-wide v2, v0

    goto :goto_1
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setHighlightedPrefix(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ZI)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v0, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    if-eqz p3, :cond_5

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->j:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->k:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->k:Z

    if-nez v0, :cond_7

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->i:Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;

    invoke-virtual {p1, v1, v0, p4}, Lcom/android/contacts/common/list/ContactListItemView;->a(ZLcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;I)V

    :cond_4
    return-void

    :cond_5
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/contacts/common/GeoUtil;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method public b(ILandroid/database/Cursor;)Landroid/net/Uri;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->b(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v2, v3}, Lcom/android/contacts/common/compat/DirectoryCompat;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setQuickContactEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->g:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    return-object v0
.end method

.method protected b(Lcom/android/contacts/common/list/ContactListItemView;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->p(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->a:Z

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->c:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->n()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->a(Landroid/database/Cursor;II)V

    return-void
.end method

.method protected c(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->d:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->h:Z

    return-void
.end method

.method public q(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r(I)Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->f(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(ILandroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
