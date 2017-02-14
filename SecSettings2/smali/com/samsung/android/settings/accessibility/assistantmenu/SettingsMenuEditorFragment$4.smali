.class Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;
.super Ljava/lang/Object;
.source "SettingsMenuEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const v2, 0x7f020349

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mControlbartouchListener_ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02034a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mControlbartouchListener_ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    const-string/jumbo v1, "mControlbartouchListener_ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "SettingsMenuEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mControlbartouchListener_ACTION_MOVE_Y"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$4;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
