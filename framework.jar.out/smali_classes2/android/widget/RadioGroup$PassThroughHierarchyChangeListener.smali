.class Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "RadioGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RadioGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Landroid/widget/RadioGroup;


# direct methods
.method static synthetic -set0(Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method

.method private constructor <init>(Landroid/widget/RadioGroup;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RadioGroup;

    .prologue
    .line 362
    iput-object p1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/RadioGroup;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;-><init>(Landroid/widget/RadioGroup;)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 373
    .local v0, "id":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 374
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 375
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v1, p2

    .line 377
    check-cast v1, Landroid/widget/RadioButton;

    .line 378
    iget-object v2, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    invoke-static {v2}, Landroid/widget/RadioGroup;->-get1(Landroid/widget/RadioGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    .line 377
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 381
    .end local v0    # "id":I
    :cond_1
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 369
    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->this$0:Landroid/widget/RadioGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 391
    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeWidgetListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 394
    :cond_0
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Landroid/widget/RadioGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 389
    :cond_1
    return-void
.end method
