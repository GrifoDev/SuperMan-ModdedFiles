.class Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/agif/AgifTabIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AgifTabImageView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/agif/AgifTabIndicator;


# direct methods
.method public constructor <init>(Lcom/android/incallui/agif/AgifTabIndicator;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/agif/AgifTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/agif/AgifTabIndicator;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(I)V
    .locals 6

    const v2, 0x8000

    invoke-super {p0, p1}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    if-eq v2, p1, :cond_0

    const/16 v0, 0x80

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-static {v0}, Lcom/android/incallui/agif/AgifTabIndicator;->access$000(Lcom/android/incallui/agif/AgifTabIndicator;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v2, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0900b9

    :goto_0
    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifTabIndicator;->access$000(Lcom/android/incallui/agif/AgifTabIndicator;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0900d5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/agif/AgifTabIndicator$AgifTabImageView;->this$0:Lcom/android/incallui/agif/AgifTabIndicator;

    invoke-static {v4}, Lcom/android/incallui/agif/AgifTabIndicator;->access$000(Lcom/android/incallui/agif/AgifTabIndicator;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f0900b8

    goto :goto_0
.end method
