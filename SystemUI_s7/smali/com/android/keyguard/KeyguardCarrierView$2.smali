.class Lcom/android/keyguard/KeyguardCarrierView$2;
.super Landroid/telephony/PhoneStateListener;
.source "KeyguardCarrierView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardCarrierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardCarrierView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierView$2;->this$0:Lcom/android/keyguard/KeyguardCarrierView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCarrierView;->-wrap1(Lcom/android/keyguard/KeyguardCarrierView;)V

    return-void
.end method
