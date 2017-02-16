.class Landroid/widget/ListView$FocusSelector;
.super Ljava/lang/Object;
.source "ListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusSelector"
.end annotation


# static fields
.field private static final STATE_REQUEST_FOCUS:I = 0x3

.field private static final STATE_SET_SELECTION:I = 0x1

.field private static final STATE_WAIT_FOR_LAYOUT:I = 0x2


# instance fields
.field private mAction:I

.field private mPosition:I

.field private mPositionTop:I

.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    .prologue
    .line 1178
    iput-object p1, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$FocusSelector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ListView$FocusSelector;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method onLayoutComplete()V
    .locals 2

    .prologue
    .line 1221
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1222
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1220
    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1199
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1200
    iget-object v2, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v3, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget v4, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    .line 1201
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1203
    iget v2, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    iget-object v3, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    iget v3, v3, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v1, v2, v3

    .line 1204
    .local v1, "childIndex":I
    iget-object v2, p0, Landroid/widget/ListView$FocusSelector;->this$0:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1205
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1206
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1208
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    goto :goto_0
.end method

.method setupFocusIfValid(I)Ljava/lang/Runnable;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1213
    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    if-eq p1, v0, :cond_1

    .line 1214
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1216
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1217
    return-object p0
.end method

.method setupForSetSelection(II)Landroid/widget/ListView$FocusSelector;
    .locals 1
    .param p1, "position"    # I
    .param p2, "top"    # I

    .prologue
    .line 1192
    iput p1, p0, Landroid/widget/ListView$FocusSelector;->mPosition:I

    .line 1193
    iput p2, p0, Landroid/widget/ListView$FocusSelector;->mPositionTop:I

    .line 1194
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ListView$FocusSelector;->mAction:I

    .line 1195
    return-object p0
.end method
