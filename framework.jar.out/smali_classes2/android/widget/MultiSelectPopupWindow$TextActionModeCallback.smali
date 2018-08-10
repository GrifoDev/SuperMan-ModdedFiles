.class Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextActionModeCallback"
.end annotation


# instance fields
.field private mHandleHeight:I

.field private final mSelectionBounds:Landroid/graphics/RectF;

.field private final mSelectionPath:Landroid/graphics/Path;

.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Z)V
    .locals 3

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/MultiSelectPopupWindow;->getSelectionController()Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-get0(Landroid/widget/MultiSelectPopupWindow$SelectionController;)Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-wrap0(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->-wrap1(Landroid/widget/MultiSelectPopupWindow$SelectionController;)V

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->-get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    invoke-static {p1}, Landroid/widget/MultiSelectPopupWindow;->-get2(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    :cond_1
    return-void
.end method

.method private populateMenuWithItems(Landroid/view/Menu;)V
    .locals 13

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    const v7, 0x10202c0

    const v8, 0x10401d1

    invoke-interface {p1, v11, v7, v11, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080a60

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const v7, 0x1020390

    const v8, 0x1040001

    invoke-interface {p1, v11, v7, v10, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080a62

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->-wrap4(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x1020392

    const/4 v8, 0x3

    const v9, 0x1040972

    invoke-interface {p1, v11, v7, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080a6c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->-wrap1(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x1020391

    const/4 v8, 0x4

    const v9, 0x10402ab

    invoke-interface {p1, v11, v7, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080a64

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string/jumbo v8, "text/plain"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v7}, Landroid/widget/MultiSelectPopupWindow;->-wrap2(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v3

    iget-object v7, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "com.sec.android.app.translator"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "com.google.android.apps.translate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v7, v1, 0x5

    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x1020393

    invoke-interface {p1, v11, v9, v7, v8}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080a6d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "text/plain"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v12}, Landroid/view/MenuItem;->setShowAsAction(I)V

    move v1, v2

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateSelectAllItem(Landroid/view/Menu;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x102038f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v2}, Landroid/widget/MultiSelectPopupWindow;->-wrap3(Landroid/widget/MultiSelectPopupWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    const v3, 0x104000d

    invoke-interface {p1, v2, v4, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080a6b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->onMultiSelectMenuItem(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->populateMenuWithItems(Landroid/view/Menu;)V

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-set2(Landroid/view/ActionMode;)Landroid/view/ActionMode;

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get3(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v0}, Landroid/widget/MultiSelectPopupWindow;->-get3(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$SelectionController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$SelectionController;->hide()V

    :cond_0
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ActionMode$Callback2;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050346

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050339

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "MultiSelectPopupWindow"

    const-string/jumbo v6, "getTextFormultiSelection() text is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionPath:Landroid/graphics/Path;

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    int-to-float v7, v0

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mHandleHeight:I

    add-int/2addr v7, v1

    int-to-float v7, v7

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    :cond_3
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v3

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->-get5()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    iget-object v5, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    int-to-float v6, v3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget-object v6, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget-object v7, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iget-object v8, p0, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->mSelectionBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {p3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    invoke-direct {p0, p2}, Landroid/widget/MultiSelectPopupWindow$TextActionModeCallback;->updateSelectAllItem(Landroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method
