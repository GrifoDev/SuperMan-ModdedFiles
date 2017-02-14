.class public Lcom/android/launcher2/popup/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final CATEGORY_MASK:I = -0x10000

.field private static final CATEGORY_SHIFT:I = 0x10

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/popup/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    invoke-direct {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8

    invoke-static {p3}, Lcom/android/launcher2/popup/MenuBuilder;->getOrdering(I)I

    move-result v5

    new-instance v0, Lcom/android/launcher2/popup/MenuItemImpl;

    iget v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/popup/MenuItemImpl;-><init>(Lcom/android/launcher2/popup/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/launcher2/popup/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v0, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v2, :cond_2

    invoke-interface {v0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v2

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3

    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->removeGroup(I)V

    :cond_0
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_4

    move-object/from16 v10, p6

    :goto_3
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/launcher2/popup/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_3

    :cond_5
    return v3
.end method

.method public addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/launcher2/popup/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuItemImpl;

    new-instance v1, Lcom/android/launcher2/popup/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/launcher2/popup/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setSubMenu(Lcom/android/launcher2/popup/SubMenuBuilder;)V

    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    return-void
.end method

.method final close(Z)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eq v3, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v1, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v0, p2

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_1
    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 12

    const/4 v8, 0x0

    const/4 v11, 0x0

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v7, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    const/16 v10, 0x43

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 9

    iget-boolean v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/popup/MenuPresenter;

    if-nez v4, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Lcom/android/launcher2/popup/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->isActionButton()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->flagActionItems()V

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/launcher2/popup/MenuBuilder;
    .locals 0

    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    iget-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method onItemVisibleChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchPresenterUpdate(Z)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->invoke()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/SubMenuBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, p3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v2, v3, 0x1

    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    return-void
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p3}, Lcom/android/launcher2/popup/MenuItemImpl;->setExclusiveCheckable(Z)V

    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :cond_0
    return-void
.end method
