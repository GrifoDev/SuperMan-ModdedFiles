.class Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;
.super Landroid/widget/CompoundButton;
.source "QuickViewWorkspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickViewWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkAsHomeButton"
.end annotation


# static fields
.field private static LP:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090238

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    sget-object v1, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->LP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f020086

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setPadding(IIII)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public toggle()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewWorkspace$MarkAsHomeButton;->getParent()Landroid/view/ViewParent;

    :cond_0
    return-void
.end method
