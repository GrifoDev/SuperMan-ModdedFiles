.class Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->startBixbySetupIntroAnimation()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap8(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    const/4 v0, 0x1

    return v0
.end method
