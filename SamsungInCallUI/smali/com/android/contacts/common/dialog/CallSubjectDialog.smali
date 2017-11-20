.class public Lcom/android/contacts/common/dialog/CallSubjectDialog;
.super Landroid/app/Activity;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private final B:Landroid/view/View$OnClickListener;

.field private final C:Landroid/view/View$OnClickListener;

.field private final D:Landroid/view/View$OnClickListener;

.field private E:Landroid/widget/AdapterView$OnItemClickListener;

.field private a:I

.field private b:Ljava/nio/charset/Charset;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/QuickContactBadge;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ListView;

.field private m:I

.field private n:I

.field private o:Landroid/content/SharedPreferences;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:J

.field private r:Landroid/net/Uri;

.field private s:Landroid/net/Uri;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Landroid/telecom/PhoneAccountHandle;

.field private final z:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$1;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->z:Landroid/text/TextWatcher;

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$2;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$3;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$4;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$5;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog$6;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->E:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "subject_history_count"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subject_history_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private a()V
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->s:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->q:J

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->r:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->s:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->t:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->u:Z

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g:Landroid/widget/TextView;

    const v1, 0x7f09050c

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->x:Ljava/lang/String;

    aput-object v3, v2, v8

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->w:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, v9}, Landroid/widget/QuickContactBadge;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(JLandroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p6, :cond_2

    const/4 v1, 0x2

    :goto_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/android/contacts/common/util/UriUtils;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v6, p5, v0, v1, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_3

    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    iget v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->n:I

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    :goto_1
    return-void

    :cond_2
    move v1, v5

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    move-wide v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/contacts/common/dialog/CallSubjectDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c()V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/dialog/CallSubjectDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/android/contacts/common/dialog/CallSubjectDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Z)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->o:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subject_history_item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "subject_history_count"

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private a(Z)V
    .locals 4

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    if-eqz p1, :cond_3

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f040030

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->p:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/contacts/common/dialog/CallSubjectDialog$7;-><init>(Lcom/android/contacts/common/dialog/CallSubjectDialog;Landroid/view/ViewTreeObserver;IZ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "CallSubjectDialog"

    const-string v1, "Arguments cannot be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "PHOTO_ID"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->q:J

    const-string v0, "PHOTO_URI"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->r:Landroid/net/Uri;

    const-string v0, "CONTACT_URI"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->s:Landroid/net/Uri;

    const-string v0, "NAME_OR_NUMBER"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->t:Ljava/lang/String;

    const-string v0, "IS_BUSINESS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->u:Z

    const-string v0, "NUMBER"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->v:Ljava/lang/String;

    const-string v0, "DISPLAY_NUMBER"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->w:Ljava/lang/String;

    const-string v0, "NUMBER_LABEL"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->x:Ljava/lang/String;

    const-string v0, "PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->y:Landroid/telecom/PhoneAccountHandle;

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    return-object v0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b:Ljava/nio/charset/Charset;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->i:Landroid/widget/TextView;

    const v2, 0x7f09050b

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->v:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->y:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_0

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iget-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->y:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/compat/PhoneAccountSdkCompat;->a(Landroid/telecom/PhoneAccount;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.telecom.extra.CALL_SUBJECT_MAX_LENGTH"

    iget v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    const-string v1, "android.telecom.extra.CALL_SUBJECT_CHARACTER_ENCODING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b:Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v1, "CallSubjectDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b:Ljava/nio/charset/Charset;

    goto :goto_0

    :cond_2
    iput-object v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b:Ljava/nio/charset/Charset;

    goto :goto_0
.end method

.method static synthetic e(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/telecom/PhoneAccountHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->y:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method static synthetic f(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/android/contacts/common/dialog/CallSubjectDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->d:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/android/contacts/common/dialog/CallSubjectDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a:I

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0f0039

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a:I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->o:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a03f6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->n:I

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->b()V

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->d()V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->o:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a(Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->p:Ljava/util/List;

    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setLayout(II)V

    const v0, 0x7f100127

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100128

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->d:Landroid/view/View;

    const v0, 0x7f100129

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->e:Landroid/widget/QuickContactBadge;

    const v0, 0x7f10012a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->f:Landroid/widget/TextView;

    const v0, 0x7f10012b

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->g:Landroid/widget/TextView;

    const v0, 0x7f10012c

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->z:Landroid/text/TextWatcher;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->m:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->h:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const v0, 0x7f10012d

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->i:Landroid/widget/TextView;

    const v0, 0x7f10012e

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->j:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f10012f

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f100130

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->E:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/contacts/common/dialog/CallSubjectDialog;->l:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->a()V

    invoke-direct {p0}, Lcom/android/contacts/common/dialog/CallSubjectDialog;->c()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method
