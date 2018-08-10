.class Landroid/widget/TextView$MoreInfoHPW;
.super Lcom/samsung/android/widget/SemHoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .locals 2

    iput-object p1, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/widget/SemHoverPopupWindow;-><init>(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "MoreInfoHPW"

    const-string/jumbo v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/TextView;

    invoke-static {p1}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-wrap1(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-get9(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/TextView;->-get9(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_0
.end method

.method protected makeDefaultContentView()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7011214

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView$MoreInfoHPW;->isUspFeature()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x103012b

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    :goto_0
    const v5, 0x1090079

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mInitialMaxLine:I

    iput v2, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    :goto_1
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v3, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentText:Ljava/lang/CharSequence;

    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_3
    iput-object v4, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    return-void

    :cond_1
    iget v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mLastOrientation:I

    if-ne v2, v5, :cond_0

    iget-object v4, p0, Landroid/widget/TextView$MoreInfoHPW;->mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->this$0:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/widget/TextView$MoreInfoHPW;->mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3
.end method

.method protected setInstanceByType(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3231

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mPopupGravity:I

    const v0, 0x10302f7

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mAnimationStyle:I

    const/16 v0, 0x12c

    iput v0, p0, Landroid/widget/TextView$MoreInfoHPW;->mHoverDetectTimeMS:I

    :cond_0
    return-void
.end method
