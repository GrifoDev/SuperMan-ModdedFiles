.class Lcom/android/settings/fingerprint/FingerprintSettings$4;
.super Ljava/lang/Object;
.source "FingerprintSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-set3(Landroid/widget/ListView;)Landroid/widget/ListView;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get4()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get4()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f11036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-set0(Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get1()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get1()Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get1()Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$4$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method
