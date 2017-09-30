.class public Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;

# interfaces
.implements Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/PhoneNumberListAdapter$Listener;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private d:Ljava/lang/String;

.field private e:Lcom/android/contacts/common/list/ContactListFilter;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Z

.field private i:Z

.field private j:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private k:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->a(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->j:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a_(I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method private a(IZ)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f(I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(Landroid/net/Uri;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e(Z)I

    move-result v2

    invoke-interface {v1, v0, p2, v2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->a(Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was clicked before"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adapter is ready. Ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "analytics_category"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics_action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "analytics_value"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    float-to-long v4, v0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v3, ""

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/a/a/a;->a(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private v()V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->u()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->l()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    invoke-static {v2, v0, v1}, Lcom/android/contacts/common/util/AccountFilterUtil;->a(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f04003b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->b(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->i:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->i(Z)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(IZ)V

    return-void
.end method

.method protected a(IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(IZ)V

    return-void
.end method

.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/net/Uri;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e(Z)I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->a(Landroid/net/Uri;ZI)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 1

    check-cast p1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->j:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->a(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    return-void
.end method

.method protected b(Landroid/net/Uri;Z)V
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->a(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const v0, 0x7f040039

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->g:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->v()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->t()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b(Z)V

    return-void
.end method

.method protected d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->h:Z

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->d()V

    return-void
.end method

.method protected d(I)V
    .locals 0

    return-void
.end method

.method protected e(Z)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->q(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f(I)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->r(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected g(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->s(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->a(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->a(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->c:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->a()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected r()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->r()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->b()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->l()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->a(Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->a(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V

    goto :goto_0
.end method

.method protected t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public u()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->e:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method
