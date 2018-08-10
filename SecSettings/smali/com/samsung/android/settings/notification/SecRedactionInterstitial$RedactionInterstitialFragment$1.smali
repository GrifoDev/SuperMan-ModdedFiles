.class Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;
.super Landroid/database/ContentObserver;
.source "SecRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;->this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;->this$1:Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->-wrap0(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;)V

    return-void
.end method
