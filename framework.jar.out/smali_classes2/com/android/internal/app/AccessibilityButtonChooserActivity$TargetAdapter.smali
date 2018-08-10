.class Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessibilityButtonChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AccessibilityButtonChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TargetAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;-><init>(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->-get0(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget-object v5, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x1090019

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/app/AccessibilityButtonChooserActivity$TargetAdapter;->this$0:Lcom/android/internal/app/AccessibilityButtonChooserActivity;

    invoke-static {v5}, Lcom/android/internal/app/AccessibilityButtonChooserActivity;->-get0(Lcom/android/internal/app/AccessibilityButtonChooserActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;

    const v5, 0x10201a7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v5, 0x10201a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/internal/app/AccessibilityButtonChooserActivity$AccessibilityButtonTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v3
.end method
