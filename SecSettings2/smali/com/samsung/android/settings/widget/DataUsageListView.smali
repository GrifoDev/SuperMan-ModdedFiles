.class public Lcom/samsung/android/settings/widget/DataUsageListView;
.super Landroid/widget/ListView;
.source "DataUsageListView.java"


# static fields
.field public static mSelector:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mRestoreFocus:Z

.field private mSelected:Z

.field private mTemFocusView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mSelected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mSelected:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/DataUsageListView;->setSelection(I)V

    const-string/jumbo v0, "DataUsageListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/DataUsageListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/widget/DataUsageListView;->mSelector:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mTemFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mTemFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/widget/DataUsageListView;->mRestoreFocus:Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method
