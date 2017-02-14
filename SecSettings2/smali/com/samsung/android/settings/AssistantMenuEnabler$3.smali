.class Lcom/samsung/android/settings/AssistantMenuEnabler$3;
.super Ljava/lang/Object;
.source "AssistantMenuEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuEnabler;->showExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get1(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return v1
.end method
