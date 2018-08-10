.class public Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMenuRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationMenuItem"
.end annotation


# instance fields
.field mContentDescription:Ljava/lang/String;

.field mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

.field mMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070441

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f06011b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    new-instance v1, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setPadding(IIII)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setColorFilter(I)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setAlpha(F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    invoke-virtual {v5, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGutsView()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mGutsContent:Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$GutsContent;->getContentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getMenuView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationMenuItem;->mMenuView:Landroid/view/View;

    return-object v0
.end method
