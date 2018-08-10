.class public Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$BaseItemIterator;,
        Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z


# instance fields
.field private mCellHeight:I

.field mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mRootLocationOnScreen:[I

.field mRunningTaskPositions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRootLocationOnScreen:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private checkRunningTaskPositionChanged(III)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Point;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private sendRunningTaskPosition()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRunningTaskPosition() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->updateTaskPositionInTaskBar(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Z)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->hasItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "[DS]CellLayoutChildren"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string/jumbo v3, "[DS]CellLayoutChildren"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addItem package="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "folder"

    :goto_0
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->MENU_APP:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->buildView(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v3, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;-><init>(I)V

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v2, "[DS]CellLayoutChildren"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addItem view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mType:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;->HOME_RUNNING_APPLICATION:Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem$Type;

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "com.samsung.android.incallui"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mContext:Landroid/content/Context;

    const v3, 0x7f01000a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ",  mscreen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mScreen:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public buildView(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;->buildView(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public cancelLongPress()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    if-nez p1, :cond_0

    return-object v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    if-eqz v4, :cond_2

    instance-of v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v4, :cond_1

    instance-of v4, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->isRunningAppItem()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v5, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mRunningTaskId:I

    if-ne v5, v4, :cond_2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    iget-object v5, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_1
    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-wide v4, v2, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    iget-wide v6, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v8
.end method

.method public getItemAt(I)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getItemById(J)Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-wide v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public hasItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapX:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapY:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->setup(IIIIZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellWidth:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapX:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->setX(I)V

    :cond_0
    iget v7, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->height:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    const/4 v13, 0x2

    new-array v9, v13, [I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getLocationOnScreen([I)V

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-boolean v13, v13, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v13, :cond_1

    iget v3, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    iget v13, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    sub-int v2, v3, v13

    :goto_1
    :try_start_0
    iget v13, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    move/from16 v0, p5

    invoke-virtual {v1, v2, v13, v3, v0}, Landroid/view/View;->layout(IIII)V

    instance-of v13, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v13, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getRunningTaskId()I

    move-result v10

    const/4 v13, -0x1

    if-eq v10, v13, :cond_0

    const/4 v13, 0x0

    aget v13, v9, v13

    add-int/2addr v13, v2

    iget v14, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    div-int/lit8 v14, v14, 0x2

    add-int v11, v13, v14

    const/4 v13, 0x1

    aget v13, v9, v13

    iget v14, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->y:I

    add-int v12, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->checkRunningTaskPositionChanged(III)Z

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateRunningTaskPosition(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget v2, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->x:I

    iget v13, v7, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->width:I

    add-int v3, v2, v13

    goto :goto_1

    :catch_0
    move-exception v5

    sget-boolean v13, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v13, :cond_0

    const-string/jumbo v13, "[DS]CellLayoutChildren"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "child layout exception. child tag : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v8, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->sendRunningTaskPosition()V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected onViewAddedInCLC(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutChildren"

    const-string/jumbo v1, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-interface {v1, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    return-void
.end method

.method public removeAllItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->removeAllViews()V

    return-void
.end method

.method public removeItem(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "[DS]CellLayoutChildren"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeItem :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->removeView(Landroid/view/View;)V

    instance-of v3, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/AppIconView;->getRunningTaskId()I

    move-result v1

    if-eq v1, v6, :cond_1

    invoke-virtual {p0, v1, v6, v7, v7}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateRunningTaskPosition(IIII)V

    :cond_1
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellWidth:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellHeight:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapX:I

    iput p4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapY:I

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCellDimensions. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", gapX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", gapY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setCellLayout(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method public setItemViewBuilder(Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mItemViewBuilder:Lcom/android/systemui/statusbar/phone/taskbar/data/ItemViewBuilder;

    return-void
.end method

.method public setItemVisibility(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getChildAt(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setMultiWindowManager(Lcom/samsung/android/multiwindow/MultiWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public setupLp(Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;)V
    .locals 6

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapX:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapY:I

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->setup(IIIIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellLayout:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayout;->mIsLayoutRTL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->getMeasuredWidth()I

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->screen:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mCellWidth:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mGapX:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren$LayoutParams;->setX(I)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateRunningTaskPosition(IIII)V
    .locals 3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public updateScrollingState(ZI)V
    .locals 5

    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->mRunningTaskPositions:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/graphics/Point;->offset(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->sendRunningTaskPosition()V

    :cond_1
    return-void
.end method
