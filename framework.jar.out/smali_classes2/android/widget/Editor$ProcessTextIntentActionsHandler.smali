.class final Landroid/widget/Editor$ProcessTextIntentActionsHandler;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessTextIntentActionsHandler"
.end annotation


# instance fields
.field private final mAccessibilityActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessibilityIntents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEditor:Landroid/widget/Editor;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$ProcessTextIntentActionsHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private createProcessTextIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;
    .locals 3

    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private fireIntent(Landroid/content/Intent;)Z
    .locals 3

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.extra.PROCESS_TEXT"

    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mEditor:Landroid/widget/Editor;

    invoke-static {v0, v2}, Landroid/widget/Editor;->-set2(Landroid/widget/Editor;Z)Z

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedActivities()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public initializeAccessibilityActions()V
    .locals 8

    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getSupportedActivities()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    add-int/lit8 v2, v1, 0x1

    const v5, 0x10000100

    add-int v0, v5, v1

    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-direct {p0, v3}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityActions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInitializeMenu(Landroid/view/Menu;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getSupportedActivities()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string/jumbo v10, "com.sec.android.app.translator"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string/jumbo v10, "com.google.android.apps.translate"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_0
    iget-object v10, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10809f3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v10, v3, 0xa

    invoke-direct {p0, v6}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->getLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {p1, v12, v12, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-direct {p0, v6}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/Intent;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_1

    iget-object v10, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10809f1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v0, v12, v12, v9, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public performAccessibilityAction(I)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->mAccessibilityIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public performMenuItemAction(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$ProcessTextIntentActionsHandler;->fireIntent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
