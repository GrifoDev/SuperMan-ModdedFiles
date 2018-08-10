.class Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initIntroSoftKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-set0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap3(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
