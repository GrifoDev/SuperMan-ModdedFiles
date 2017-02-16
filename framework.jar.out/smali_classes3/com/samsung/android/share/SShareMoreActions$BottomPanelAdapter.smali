.class final Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareMoreActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BottomPanelAdapter"
.end annotation


# instance fields
.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field layout:I

.field final synthetic this$0:Lcom/samsung/android/share/SShareMoreActions;


# direct methods
.method public constructor <init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/share/SShareMoreActions;
    .param p2, "pContext"    # Landroid/content/Context;
    .param p3, "pLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p4, "pArSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/share/SShareMoreActions$ActionItem;>;"
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 330
    iput-object p2, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->context:Landroid/content/Context;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->context:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 332
    iput-object p4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    .line 333
    iput p3, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->layout:I

    .line 329
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v0, v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemActionId(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget v0, v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->id:I

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 345
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 354
    move v2, p1

    .line 355
    .local v2, "pos":I
    if-nez p2, :cond_0

    .line 356
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->layout:I

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 358
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->-get1(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 359
    .local v0, "fontScale":F
    const v4, 0x3f99999a    # 1.2f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 360
    const v0, 0x3f99999a    # 1.2f

    .line 363
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->-get2(Lcom/samsung/android/share/SShareMoreActions;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 364
    const v4, 0x10807fe

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 367
    :cond_2
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 369
    .local v1, "img":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget v4, v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    const v4, 0x1020090

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 371
    .local v3, "txt":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-static {v5}, Lcom/samsung/android/share/SShareMoreActions;->-get1(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502c7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/share/SShareMoreActions;->-set0(Lcom/samsung/android/share/SShareMoreActions;F)F

    .line 372
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->-get0(Lcom/samsung/android/share/SShareMoreActions;)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 373
    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v4, v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    return-object p2
.end method
