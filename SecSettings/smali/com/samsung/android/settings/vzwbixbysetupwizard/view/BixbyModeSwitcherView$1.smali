.class Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;
.super Ljava/lang/Object;
.source "BixbyModeSwitcherView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isBixbyMode(Landroid/content/Context;)Z

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-static {v5, v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->setBixbyMode(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v4, 0x7f0a0957

    invoke-virtual {v0, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;

    invoke-virtual {v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/view/BixbyModeSwitcherView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method
