.class Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;
.super Ljava/lang/Object;
.source "MdfReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

.field final synthetic val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# direct methods
.method constructor <init>(Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->this$0:Lcom/samsung/android/security/mdf/MdfService/MdfReceiver;

    iput-object p2, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfReceiver$1;->val$mdfPolicy:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sendSurveyLogMode()V

    return-void
.end method
