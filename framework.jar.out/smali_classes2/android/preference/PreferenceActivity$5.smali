.class Landroid/preference/PreferenceActivity$5;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get2(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get6(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get4(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    :goto_0
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get5(Landroid/preference/PreferenceActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v1, v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get10(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-get8(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    goto :goto_0
.end method
