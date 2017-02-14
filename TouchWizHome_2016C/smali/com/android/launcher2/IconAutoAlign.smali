.class public Lcom/android/launcher2/IconAutoAlign;
.super Landroid/widget/FrameLayout;
.source "IconAutoAlign.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mItemComparator_AUTO_ALIGN:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlienTextView:Landroid/widget/TextView;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher2/IconAutoAlign$1;

    invoke-direct {v0}, Lcom/android/launcher2/IconAutoAlign$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/IconAutoAlign;->mItemComparator_AUTO_ALIGN:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/IconAutoAlign;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private IconAutoAlign(Z)Z
    .locals 30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/IconAutoAlign;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher2/IconAutoAlign;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/CellLayout;

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    if-eqz v2, :cond_8

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v5

    filled-new-array {v4, v5}, [I

    move-result-object v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Z

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    move-object/from16 v24, v26

    check-cast v24, Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v27, v0

    :goto_1
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v2, v7

    move/from16 v0, v27

    if-ge v0, v2, :cond_0

    move/from16 v0, v27

    if-ge v0, v4, :cond_0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v28, v0

    :goto_2
    move-object/from16 v0, v24

    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, v24

    iget v7, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v2, v7

    move/from16 v0, v28

    if-ge v0, v2, :cond_2

    move/from16 v0, v28

    if-ge v0, v5, :cond_2

    aget-object v2, v3, v27

    const/4 v7, 0x1

    aput-boolean v7, v2, v28

    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    :cond_3
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconAutoAlign;->sortByAutoAlign(Ljava/util/List;)V

    const/16 v21, 0x1

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_5
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher2/BaseItem;

    move-object/from16 v6, v23

    check-cast v6, Lcom/android/launcher2/HomeItem;

    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/IconAutoAlign;->findEmptyCell([[ZIILcom/android/launcher2/HomeItem;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v21, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/CellLayout;->setIconAutoAlign()V

    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/IconAutoAlign;->getContext()Landroid/content/Context;

    move-result-object v8

    const-wide/16 v10, -0x64

    iget v12, v6, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v13, v6, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v14, v6, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v15, v6, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v0, v6, Lcom/android/launcher2/HomeItem;->spanY:I

    move/from16 v16, v0

    const-string v17, "IconAutoAlign"

    move-object v9, v6

    invoke-static/range {v8 .. v17}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private findEmptyCell([[ZIILcom/android/launcher2/HomeItem;Z)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    aget-object v4, p1, v0

    aget-boolean v4, v4, v1

    if-nez v4, :cond_3

    aget-object v4, p1, v0

    aput-boolean v3, v4, v1

    iget v4, p4, Lcom/android/launcher2/HomeItem;->cellX:I

    if-ne v0, v4, :cond_1

    iget v4, p4, Lcom/android/launcher2/HomeItem;->cellY:I

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_2
    return v2

    :cond_1
    if-eqz p5, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iput v0, p4, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v1, p4, Lcom/android/launcher2/HomeItem;->cellY:I

    move v2, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public changeTextColor(I)V
    .locals 4

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/IconAutoAlign;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/IconAutoAlign;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public checkIconAutoAlign(Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/launcher2/IconAutoAlign;->IconAutoAlign(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "ATAN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/IconAutoAlign;->checkIconAutoAlign(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/IconAutoAlign;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/IconAutoAlign;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090289

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconAutoAlign;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconAutoAlign;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p0, p0}, Lcom/android/launcher2/IconAutoAlign;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10007e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/IconAutoAlign;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/IconAutoAlign;->mAlienTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public sortByAutoAlign(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/IconAutoAlign;->mItemComparator_AUTO_ALIGN:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method
