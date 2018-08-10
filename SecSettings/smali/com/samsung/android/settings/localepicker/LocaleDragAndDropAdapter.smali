.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;,
        Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private mFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

.field private mLocalesSetLast:Landroid/os/LocaleList;

.field private mLocalesToSetNext:Landroid/os/LocaleList;

.field private mNofiticationDialog:Landroid/app/AlertDialog;

.field private mNumberFormatter:Ljava/text/NumberFormat;

.field private mRemoveMode:Z

.field private mShowingAddDialog:Z

.field private mTempAddLocaleId:Ljava/lang/String;

.field private mTempFeedItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    iput-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocaleDragAndDropAdapter"

    const-string/jumbo v1, "init localeList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempFeedItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->copyList(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    :cond_0
    return-void
.end method

.method private copyList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v2, "LocaleDragAndDropAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "List is null. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getContentView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0d007e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a01bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f13031d

    invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    return-object v2
.end method

.method private getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/util/Locale;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "LocaleDragAndDropAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lang["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/os/LocaleList;

    invoke-direct {v4, v3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v4
.end method

.method private showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f120f56

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getContentView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$2;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    const v4, 0x7f121872

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$3;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    const v4, 0x7f120e82

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$4;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNofiticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method addLocale(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    return-void
.end method

.method public doTheUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->updateLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method getCheckedCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    return v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mDragEnabled:Z

    goto :goto_0
.end method

.method getIndexByTitle(Ljava/lang/String;)I
    .locals 5

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v5, 0x0

    if-nez p2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0298

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;->getLocaleDragCell()Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setLabelAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setLocalized(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    add-int/lit8 v7, p1, 0x1

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setMiniLabel(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setShowCheckbox(Z)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setShowMiniLabel(Z)V

    iget-boolean v6, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v5

    :cond_0
    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setChecked(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;

    invoke-direct {v6, p0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;-><init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/samsung/android/settings/localepicker/LocaleDragCell;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getDragEnabled()Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->setDragHandlerPadding(Z)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$CustomViewHolder;

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initFeedItemList()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempFeedItemList:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->copyList(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getLocaleList(Ljava/util/List;)Landroid/os/LocaleList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    return-void
.end method

.method moveItem(II)V
    .locals 7

    const/4 v6, 0x0

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Negative position in moveItem %d -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method removeChecked()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "selectedLocales"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v4, "showingLocaleAddDialog"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "tempAddLocaleID"

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->showSetDefaultLocaleDialog(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    goto :goto_1
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "selectedLocales"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    if-nez v3, :cond_2

    const-string/jumbo v3, "showingLocaleAddDialog"

    iget-boolean v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mShowingAddDialog:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const-string/jumbo v3, "tempAddLocaleID"

    iget-object v4, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mTempAddLocaleId:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setChecked(IZ)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v0, p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    return-void
.end method

.method setRemoveMode(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mRemoveMode:Z

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mFeedItemList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateLocales(Landroid/os/LocaleList;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocaleDragAndDropAdapter"

    const-string/jumbo v1, "New lang list have not changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocales(Landroid/os/LocaleList;)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesSetLast:Landroid/os/LocaleList;

    iput-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mLocalesToSetNext:Landroid/os/LocaleList;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->mNumberFormatter:Ljava/text/NumberFormat;

    return-void
.end method
