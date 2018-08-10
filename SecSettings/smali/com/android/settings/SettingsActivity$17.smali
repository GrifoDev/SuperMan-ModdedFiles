.class Lcom/android/settings/SettingsActivity$17;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initializeLayoutBySplitBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v2}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get3(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v1, v0, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get10(Lcom/android/settings/SettingsActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/SettingsActivity$17;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->-get7(Lcom/android/settings/SettingsActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getX()F

    move-result v0

    goto :goto_0
.end method
