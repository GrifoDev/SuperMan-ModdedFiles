.class Landroid/support/v7/preference/SeekBarPreference$2;
.super Ljava/lang/Object;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/SeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/SeekBarPreference;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/SeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference$2;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference$2;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-static {v0}, Landroid/support/v7/preference/SeekBarPreference;->-get0(Landroid/support/v7/preference/SeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-ne p2, v0, :cond_2

    :cond_1
    return v2

    :cond_2
    const/16 v0, 0x17

    if-eq p2, v0, :cond_3

    const/16 v0, 0x42

    if-ne p2, v0, :cond_4

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference$2;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-static {v0}, Landroid/support/v7/preference/SeekBarPreference;->-get2(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SeekBarPreference"

    const-string/jumbo v1, "SeekBar view is null and hence cannot be adjusted."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference$2;->this$0:Landroid/support/v7/preference/SeekBarPreference;

    invoke-static {v0}, Landroid/support/v7/preference/SeekBarPreference;->-get2(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
