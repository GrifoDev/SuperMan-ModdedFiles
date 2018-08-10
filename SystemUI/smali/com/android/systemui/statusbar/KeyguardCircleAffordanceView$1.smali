.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;
.super Ljava/lang/Object;
.source "KeyguardCircleAffordanceView.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get22(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get6()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601d1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setColorFilter(Landroid/graphics/PorterDuffColorFilter;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get4(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get9(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get6()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601d0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SHORTCUT_CUE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->-get0(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/AffordanceArrowContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/AffordanceArrowContainer;->setColorFilter(Landroid/graphics/PorterDuffColorFilter;)V

    goto :goto_0
.end method
