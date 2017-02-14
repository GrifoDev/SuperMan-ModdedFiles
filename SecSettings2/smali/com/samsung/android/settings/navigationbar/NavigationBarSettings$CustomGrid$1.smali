.class Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;
.super Ljava/lang/Object;
.source "NavigationBarSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I

.field final synthetic val$selectedCheck:Landroid/widget/ImageView;

.field final synthetic val$selectedRing:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$selectedRing:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$selectedCheck:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    iget v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$position:I

    invoke-static {v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-set0(I)I

    iget v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$position:I

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    invoke-static {v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;)[I

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iget-object v5, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object v6, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iget-object v6, v6, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-virtual {v6}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->getSemColorPickerDialog()Lcom/samsung/android/app/SemColorPickerDialog;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iget-object v5, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    iget-object v5, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->mColorPickerDialog:Lcom/samsung/android/app/SemColorPickerDialog;

    invoke-virtual {v5}, Lcom/samsung/android/app/SemColorPickerDialog;->show()V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f1104a3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f1104a4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v5, 0x7f1104a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    iget-object v5, v5, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-wrap0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "navigationbar_color"

    iget-object v7, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->this$1:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;

    invoke-static {v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->-get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;)[I

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$position:I

    aget v7, v7, v8

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$selectedRing:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;->val$selectedCheck:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
