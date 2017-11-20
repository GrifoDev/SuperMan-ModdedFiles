.class public Lcom/android/contacts/common/list/ContactTileAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileAdapter$ViewTypes;,
        Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;,
        Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field protected a:Landroid/database/Cursor;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field private k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private l:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private m:Landroid/content/Context;

.field private n:Landroid/content/res/Resources;

.field private o:Lcom/android/contacts/common/ContactPhotoManager;

.field private p:I

.field private q:I

.field private r:Z

.field private final s:I

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileAdapter;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/list/ContactTileAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->c(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/contacts/common/list/ContactTileAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    return-object v0
.end method

.method private a()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    const v1, 0x7f09059c

    invoke-static {v0, v1}, Lcom/android/contacts/common/MoreContactUtils;->a(Landroid/content/Context;I)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/TextView;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/MoreContactUtils;->a(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method private static a(Landroid/database/Cursor;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->t:I

    return v0
.end method

.method private c(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized viewType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->r:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040042

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f040041

    goto :goto_0

    :pswitch_2
    const v0, 0x7f04003f

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->o:Lcom/android/contacts/common/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic d(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->l:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-object v0
.end method

.method static synthetic e(Lcom/android/contacts/common/list/ContactTileAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->s:I

    return v0
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gt v0, p2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->f:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->e:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Lcom/android/contacts/common/list/ContactEntry;

    invoke-direct {v3}, Lcom/android/contacts/common/list/ContactEntry;-><init>()V

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->g:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_1
    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->a:Ljava/lang/String;

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->c:Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2
    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->f:Landroid/net/Uri;

    iput-object v7, v3, Lcom/android/contacts/common/list/ContactEntry;->h:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->g:Landroid/net/Uri;

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->q:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v3, Lcom/android/contacts/common/list/ContactEntry;->k:Z

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->h:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/contacts/common/ContactPresenceIconUtil;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_4
    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->i:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->i:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->i:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_5
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/contacts/common/ContactStatusUtil;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, v3, Lcom/android/contacts/common/list/ContactEntry;->c:Ljava/lang/String;

    move-object v1, v3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->n:Landroid/content/res/Resources;

    const v8, 0x7f0905f3

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_4
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->a:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    mul-int/2addr v1, p1

    sget-object v3, Lcom/android/contacts/common/list/ContactTileAdapter$1;->a:[I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v2

    :goto_1
    :pswitch_1
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v3

    if-ge p1, v3, :cond_1

    :goto_2
    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->c:I

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;I)Lcom/android/contacts/common/list/ContactEntry;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getCount()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/android/contacts/common/list/ContactTileAdapter$1;->a:[I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v1

    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->b:I

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    const/4 v1, 0x2

    const/4 v0, 0x0

    sget-object v2, Lcom/android/contacts/common/list/ContactTileAdapter$1;->a:[I

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized DisplayType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->k:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget v2, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v2

    if-ge p1, v2, :cond_0

    :goto_0
    :pswitch_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->getItemViewType(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a()Landroid/widget/TextView;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    if-nez p1, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(Landroid/widget/TextView;Z)V

    :goto_2
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    check-cast p2, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    if-nez p2, :cond_3

    new-instance p2, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->m:Landroid/content/Context;

    invoke-direct {p2, p0, v4, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;-><init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    :goto_3
    invoke-virtual {p2, v3, v1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->a(Ljava/util/ArrayList;Z)V

    move-object v0, p2

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter;->p:I

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->a(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
