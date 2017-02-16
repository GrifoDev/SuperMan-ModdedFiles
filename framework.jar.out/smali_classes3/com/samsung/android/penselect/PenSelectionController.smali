.class public Lcom/samsung/android/penselect/PenSelectionController;
.super Ljava/lang/Object;
.source "PenSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PenSelectController"

.field private static sInstance:Lcom/samsung/android/penselect/PenSelectionController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/penselect/PenSelectionController;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController;-><init>()V

    sput-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    .line 49
    :cond_0
    sget-object v0, Lcom/samsung/android/penselect/PenSelectionController;->sInstance:Lcom/samsung/android/penselect/PenSelectionController;

    return-object v0
.end method

.method private getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "contents"    # Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    .prologue
    .line 60
    const/4 v2, 0x0

    .line 62
    .local v2, "haveContents":Z
    invoke-direct {p0, p2}, Lcom/samsung/android/penselect/PenSelectionController;->isVisibleView(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    instance-of v7, p2, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    move-object v5, p2

    .line 64
    nop

    nop

    .line 66
    .local v5, "textView":Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 67
    invoke-virtual {v5}, Landroid/widget/TextView;->getMultiSelectionText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 68
    .local v4, "selectedText":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 69
    iget-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    .line 74
    :goto_0
    const/4 v2, 0x1

    .line 90
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_0
    return v2

    .line 72
    .restart local v4    # "selectedText":Ljava/lang/CharSequence;
    .restart local v5    # "textView":Landroid/widget/TextView;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p3, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    goto :goto_0

    .line 78
    .end local v4    # "selectedText":Ljava/lang/CharSequence;
    .end local v5    # "textView":Landroid/widget/TextView;
    :cond_2
    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_0

    move-object v6, p2

    .line 79
    nop

    nop

    .line 80
    .local v6, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 82
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 83
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    const/4 v2, 0x1

    .line 82
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isVisibleView(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rectSrc"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    return v4

    .line 188
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 189
    .local v1, "screenOffsetOfView":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v4

    aget v3, v1, v6

    .line 192
    aget v4, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 191
    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method public clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .prologue
    .line 102
    move-object v5, p2

    .line 104
    .local v5, "view":Landroid/view/View;
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    move-object v3, p2

    .line 105
    nop

    nop

    .line 107
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v3}, Landroid/widget/TextView;->clearMultiSelection()Z

    .line 119
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    const/4 v6, 0x1

    return v6

    .line 110
    :cond_1
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v4, p2

    .line 111
    nop

    nop

    .line 112
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 114
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 115
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/penselect/PenSelectionController;->clearAllPenSelection(Landroid/content/Context;Landroid/view/View;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 150
    move-object v6, p2

    .line 152
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/penselect/PenSelectionController;->checkRectInView(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 153
    instance-of v7, p2, Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    move-object v5, p2

    .line 154
    nop

    nop

    .line 155
    .local v5, "vg":Landroid/view/ViewGroup;
    const/4 v4, 0x0

    .line 156
    .local v4, "retView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 158
    .local v2, "childCount":I
    if-nez v2, :cond_1

    .line 159
    instance-of v7, p2, Landroid/webkit/WebView;

    if-eqz v7, :cond_0

    .line 160
    return-object p2

    .line 162
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 163
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v7

    const/4 v8, -0x2

    if-le v7, v8, :cond_1

    .line 164
    return-object p2

    .line 167
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v3, v2, -0x1

    .end local v4    # "retView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_2

    .line 168
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 169
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v1, p3}, Lcom/samsung/android/penselect/PenSelectionController;->findTargetTextView(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v4

    .line 170
    .local v4, "retView":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 174
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "retView":Landroid/view/View;
    :cond_2
    return-object v4

    .line 167
    .restart local v1    # "child":Landroid/view/View;
    .restart local v4    # "retView":Landroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 177
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "retView":Landroid/view/View;
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_4
    return-object p2

    .line 180
    :cond_5
    return-object v8
.end method

.method public getPenSelectionContents(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;

    invoke-direct {v0}, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;-><init>()V

    .line 96
    .local v0, "contents":Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/penselect/PenSelectionController;->getPenSelectionContents(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;)Z

    .line 97
    iget-object v1, v0, Lcom/samsung/android/penselect/PenSelectionController$PenSelectionContents;->mContentStr:Ljava/lang/String;

    return-object v1
.end method

.method public isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "topMostView"    # Landroid/view/View;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v7, 0x1

    .line 124
    move-object v5, p2

    .line 126
    .local v5, "view":Landroid/view/View;
    instance-of v6, p2, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v3, p2

    .line 127
    nop

    nop

    .line 129
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->hasMultiSelection()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v3, p3, p4}, Landroid/widget/TextView;->isMultiSelectionLinkArea(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 131
    return v7

    .line 134
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_0
    instance-of v6, p2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v4, p2

    .line 135
    nop

    nop

    .line 136
    .local v4, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 138
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 139
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 141
    return v7

    .line 138
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "vg":Landroid/view/ViewGroup;
    :cond_2
    const/4 v6, 0x0

    return v6
.end method
