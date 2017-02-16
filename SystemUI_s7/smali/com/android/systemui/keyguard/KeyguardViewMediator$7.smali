.class Lcom/android/systemui/keyguard/KeyguardViewMediator$7;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->handleSetBendedPendingIntent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$fIntent:Landroid/content/Intent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$pIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$pIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$notificationKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$fIntent:Landroid/content/Intent;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$7;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$7$1;->start()V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$pIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$7;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
