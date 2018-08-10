.class Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;
.super Ljava/lang/Object;
.source "LocaleListEditor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleListEditor;->configureDragAndDrop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get5(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get5(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get3(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocaleListEditor"

    const-string/jumbo v2, "onPreDraw)setDragGrabHandlePadding(END_Padding)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get1(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-get5(Lcom/samsung/android/settings/localepicker/LocaleListEditor;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-virtual {v3}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v0, v3

    invoke-virtual {v2, v5, v5, v0, v5}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/localepicker/LocaleListEditor$12;->this$0:Lcom/samsung/android/settings/localepicker/LocaleListEditor;

    invoke-static {v0, v5}, Lcom/samsung/android/settings/localepicker/LocaleListEditor;->-set0(Lcom/samsung/android/settings/localepicker/LocaleListEditor;Z)Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
