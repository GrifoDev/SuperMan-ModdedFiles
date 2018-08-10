.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool",
            "<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private getEllipsisCount()I
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    return v2

    :cond_0
    return v3
.end method

.method private getInnerHeight(Landroid/widget/TextView;)I
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .locals 2

    sget-object v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v1
.end method


# virtual methods
.method public initFrom(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;)V

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    :cond_0
    return-void
.end method

.method public recycle()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reset()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v4, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v2

    invoke-direct {v1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getInnerHeight(Landroid/widget/TextView;)I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v3

    return v3
.end method
