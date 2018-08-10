.class Lcom/samsung/android/settings/easymode/EasyModeApp$4;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp;->initSwitchBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$4;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
