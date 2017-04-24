.class Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v2, p1}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-set0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;Z)Z

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->-wrap0(Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;)V

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setFocusable(Z)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setFocusableInTouchMode(Z)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v2, v2, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility$2;->this$1:Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;

    iget-object v3, v3, Lcom/android/systemui/volume/SecVolumeDialog$Accessibility;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080a9b

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->-get15(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    return-void
.end method
