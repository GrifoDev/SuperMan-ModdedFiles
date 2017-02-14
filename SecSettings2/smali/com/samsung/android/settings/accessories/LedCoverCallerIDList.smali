.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LedCoverCallerIDList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;,
        Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;
    }
.end annotation


# instance fields
.field final PROJECTION:[Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field private mContactCount:I

.field private mContactInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFromChangeAction:Z

.field private mIsInEditMode:Z

.field private mList:Landroid/widget/ListView;

.field public mListKeyListener:Landroid/view/View$OnKeyListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedContactTextView:Landroid/widget/TextView;

.field private mSelectedId:I

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    iput v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "lookup"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name_alt"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "data15"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$1;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mListKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    return-void
.end method

.method private cleanUpFloatableCheckboxList()V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110435

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setAlpha(F)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lt v2, v3, :cond_0

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110436

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private createContactList()V
    .locals 6

    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "createContactList()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    const v3, 0x7f040158

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private finishEditMode()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->cleanUpFloatableCheckboxList()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finish()V

    :cond_0
    return-void
.end method

.method private get1stCheckedContactName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getNumOfCheckedList()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private hideCheckBox()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$3;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method private setEditMode(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditModeActionBar(Z)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->hideCheckBox()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->showCheckBox()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    goto :goto_0
.end method

.method private setEditModeActionBar(Z)V
    .locals 6

    const/16 v1, 0xc

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, 0x10

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040159

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f11043a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllText:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$4;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f110439

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$5;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectActionView:Landroid/view/View;

    const v1, 0x7f11043b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "updateSelectMenu null!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private showCheckBox()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$2;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f110435

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method private updateContactDB(I)V
    .locals 10

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "_id IN ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_0

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_2

    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContactDB() [REMOVE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", selection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sec_led"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateContactDB() [CHANGE] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", selection : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "sec_led"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "LedCoverCallerIDList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SQL Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateContactList()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    :goto_0
    const-string/jumbo v3, "sec_led IS ? AND (photo_id = _id OR photo_id IS NULL)"

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "data_groupby"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "groupby"

    const-string/jumbo v4, "contact_id"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "contact_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "display_name"

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string/jumbo v4, "data15"

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x0

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContactList() Selected ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-lez v0, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-direct {v1, p0, v7, v9, v8}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContactList() contact_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", display_name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    const-string/jumbo v0, "LedCoverCallerIDList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQL Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void
.end method

.method private updateListDescription()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b02fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0324

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateOptionMenusVisibility()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public makeContactChangedToastForAddContact(Ljava/lang/StringBuffer;)V
    .locals 18

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string/jumbo v4, "display_name"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string/jumbo v4, "sec_led"

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    const-string/jumbo v16, ""

    const/4 v11, 0x0

    const-string/jumbo v12, ""

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    :cond_0
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    if-eqz v9, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_2
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v1, 0x1

    if-lt v15, v1, :cond_3

    const/4 v1, 0x1

    if-ne v15, v1, :cond_9

    const v1, 0x7f0b0325

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v16, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    :goto_1
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "make Overwritten Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    if-lt v11, v1, :cond_4

    const/4 v1, 0x1

    if-ne v11, v1, :cond_a

    const v1, 0x7f0b0327

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v12, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "make alerady exist Toast [ADD] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_5
    :goto_3
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SQL Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-void

    :cond_7
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v15, v15, 0x1

    const-string/jumbo v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v11, v11, 0x1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    :cond_9
    const v1, 0x7f0b0326

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x0

    const v1, 0x7f0b0328

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "\n"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3
.end method

.method public makeContactChangedToastForChangeContact(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->get1stCheckedContactName()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    if-eq v3, p1, :cond_0

    if-ge v1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ne v1, v4, :cond_2

    const v3, 0x7f0b0325

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string/jumbo v3, "LedCoverCallerIDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "makeContactChangedToast() [CHANGE] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const v3, 0x7f0b0326

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public makeMaximumNumberReachedToast()V
    .locals 5

    const/4 v4, 0x0

    const v1, 0x7f0b0329

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeMaximumNumberReachedToast() [CHANGE] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "selected_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    const-string/jumbo v3, "contact_count"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    :cond_0
    const-string/jumbo v3, "LedCoverCallerIDList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onActivityCreated() Selected ID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", contact count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->createContactList()V

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    if-nez v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "additional"

    const-string/jumbo v4, "settings-phone-multi"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "support_tab"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "maxRecipientCount"

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "existingRecipientCount"

    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "excludeProfile"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v3, 0x3ec

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "LVCS"

    const-string/jumbo v6, "ADD"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "LedCoverCallerIDList"

    const-string/jumbo v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 14

    invoke-super/range {p0 .. p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() requestCode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0x3ec

    if-eq p1, v10, :cond_0

    const/16 v10, 0x3ed

    if-ne p1, v10, :cond_5

    :cond_0
    if-nez p3, :cond_2

    const/16 v10, 0x3ec

    if-ne p1, v10, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v10, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v4, 0x0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "_id IN ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v10, "\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v10, "\'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_3

    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() [ADD] sec_led : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", selection : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeContactChangedToastForAddContact(Ljava/lang/StringBuffer;)V

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v10, "sec_led"

    iget v11, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "SQL Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0x3ee

    if-ne p1, v10, :cond_7

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    if-eqz p3, :cond_1

    const-string/jumbo v10, "selected_id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v10, "contact_count"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v7

    add-int v10, v2, v7

    const/16 v11, 0x64

    if-le v10, v11, :cond_6

    const-string/jumbo v10, "LedCoverCallerIDList"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onActivityResult() selected_id : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", contact_count : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", numofchecked : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeMaximumNumberReachedToast()V

    goto/16 :goto_0

    :cond_6
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactDB(I)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->makeContactChangedToastForChangeContact(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->actionBar:Landroid/app/ActionBar;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0b041e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x2

    const v1, 0x7f0b0417

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0b18df

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x4

    const v1, 0x7f0b041f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateOptionMenusVisibility()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f040157

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1102ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f110435

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    :goto_0
    return v3

    :cond_0
    const v1, 0x7f110435

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->setChecked(Z)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    return v4

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.INTERACTION_LIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "additional"

    const-string/jumbo v3, "settings-phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "support_tab"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "maxRecipientCount"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "existingRecipientCount"

    iget v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactCount:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "excludeProfile"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3ed

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LVCS"

    const-string/jumbo v5, "ADD"

    invoke-static {v2, v3, v4, v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "Activity Not Found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->setEditMode(Z)V

    goto :goto_1

    :pswitch_2
    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "onOptionsItemSelected() action [CHANGE]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$LedCoverCallerIDSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "change_mode"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3ee

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo v2, "LedCoverCallerIDList"

    const-string/jumbo v3, "onOptionsItemSelected() action [REMOVE]"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactDB(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->finishEditMode()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "LedCoverCallerIDList"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mFromChangeAction:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateContactList()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactListAdapter:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateListDescription()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mIsInEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateSelectionState()V

    goto :goto_0
.end method

.method public updateActionButtonState()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v0

    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionButtonState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032a

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getNumOfCheckedList()I

    move-result v0

    const-string/jumbo v1, "LedCoverCallerIDList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b032a

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mContactInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectedContactTextView:Landroid/widget/TextView;

    const v2, 0x7f0b032b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public updateSelectionState()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateActionButtonState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->updateActionbarState()V

    return-void
.end method
