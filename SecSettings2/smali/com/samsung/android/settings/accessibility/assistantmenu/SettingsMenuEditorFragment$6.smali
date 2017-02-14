.class Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "SettingsMenuEditorFragment"

    const-string/jumbo v2, "[c] #2 onAnimationEnd!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get3(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsGridViewAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    rem-int/2addr v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    const/4 v2, 0x1

    invoke-static {v1, v3, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap5(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;ZI)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$6;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get0(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)I

    move-result v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
