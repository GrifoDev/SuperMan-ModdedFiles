.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Landroid/content/Context;

.field private E:Landroid/app/LoaderManager;

.field private F:Landroid/os/Handler;

.field private G:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field protected a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ListView;

.field private r:I

.field private s:I

.field private t:Landroid/os/Parcelable;

.field private u:I

.field private v:I

.field private w:I

.field private x:Lcom/android/contacts/common/ContactPhotoManager;

.field private y:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->d:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->e:Z

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->w()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->i:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->n:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->w:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->F:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->G:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private b(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->F:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->F:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->F:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private d(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryPartition;->a(I)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->z:Z

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(ILcom/android/contacts/common/list/DirectoryPartition;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directoryId"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->F:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private u()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private w()I
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected abstract a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract a()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract a(IJ)V
.end method

.method protected a(ILandroid/database/Cursor;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->h()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->s()V

    goto :goto_0
.end method

.method protected a(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public a(Landroid/app/LoaderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->E:Landroid/app/LoaderManager;

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->q()V

    return-void
.end method

.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->n:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->m()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->c:Z

    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->d:Z

    const-string v0, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->e:Z

    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->f:Z

    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->g:Z

    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->h:Z

    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->i:I

    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->l:Z

    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->m:Z

    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->j:Ljava/lang/String;

    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->w:I

    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->A:Z

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->t:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->u()V

    :cond_1
    return-void
.end method

.method public a_(I)V
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected b(I)V
    .locals 1

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->u:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->l(I)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    const v2, 0x1020004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->u()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->q()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->a(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->h:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->h:Z

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->u()V

    :cond_0
    return-void
.end method

.method protected b(IJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    return-object v0
.end method

.method public c(I)V
    .locals 1

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->v:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m(I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->c:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->q()V

    return-void
.end method

.method protected d()V
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->r()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d()I

    move-result v3

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b(I)Lcom/android/contacts/common/list/CompositeCursorAdapter$Partition;

    move-result-object v0

    instance-of v4, v0, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_3

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->e()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->g()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->C:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d(I)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->C:Z

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->d:Z

    return-void
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->m()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->t()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->i()V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->C:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->z:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->E:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    return-object v0
.end method

.method protected h()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->a:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->c:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->g:Z

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    return v0
.end method

.method protected n()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->u:I

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->v:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader;->a(Z)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v0, "directoryId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "directoryId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Landroid/content/CursorLoader;J)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->l()Z

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(ZZ)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->p:Landroid/view/View;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->v()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->a(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->v()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(IJ)V

    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p3, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(IJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPause()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->r:I

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->s:I

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->t()V

    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->r:I

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->s:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->c:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "adjustSelectionBoundsEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->w:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->A:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->b()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->G:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->a(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->p()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->z:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->B:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->C:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->i()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->b()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->v()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected p()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->n()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->f()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(I)V

    move v0, v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->o()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/common/preference/ContactsPreferences;->c()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->y:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->c(I)V

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method protected q()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->D:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->x:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method protected r()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->d:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->d(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->e:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->e(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->f:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->f(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->k:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->u:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->l(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->v:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->m(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->b:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->j(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->l:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->c(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->w:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->k(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->o:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->A:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->h(Z)V

    goto :goto_0
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->t:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->q:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->t:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->t:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method
