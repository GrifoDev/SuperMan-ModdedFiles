.class Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QuickOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickOptionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/launcher2/QuickOptionsPopup$OptionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/QuickOptionsPopup$OptionItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/QuickOptionsPopup;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/QuickOptionsPopup;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/QuickOptionsPopup$OptionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;->items:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/QuickOptionsPopup;Landroid/content/Context;ILjava/util/List;Lcom/android/launcher2/QuickOptionsPopup$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;-><init>(Lcom/android/launcher2/QuickOptionsPopup;Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;->this$0:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-static {v3}, Lcom/android/launcher2/QuickOptionsPopup;->access$000(Lcom/android/launcher2/QuickOptionsPopup;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040040

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;->items:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    if-eqz v1, :cond_1

    const v3, 0x7f1100dc

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v3, 0x7f1100dd

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$100(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$200(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method
