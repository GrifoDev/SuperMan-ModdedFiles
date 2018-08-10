.class Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$2;
.super Ljava/lang/Object;
.source "SecRedactionInterstitial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$2;->this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$2;->this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->finish()V

    return-void
.end method
