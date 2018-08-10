.class Lcom/android/keyguard/KeyguardSimPukTMOView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSimPukTMOView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukTMOView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukTMOView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukTMOView$1;->this$0:Lcom/android/keyguard/KeyguardSimPukTMOView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukTMOView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukTMOView;)V

    return-void
.end method
