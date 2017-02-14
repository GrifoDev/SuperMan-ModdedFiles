.class Lcom/samsung/android/settings/KnoxFingerprintNotice$2;
.super Ljava/lang/Object;
.source "KnoxFingerprintNotice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/KnoxFingerprintNotice;->setBiometricSetupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/KnoxFingerprintNotice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxFingerprintNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;->this$0:Lcom/samsung/android/settings/KnoxFingerprintNotice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;->this$0:Lcom/samsung/android/settings/KnoxFingerprintNotice;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->-wrap0(Lcom/samsung/android/settings/KnoxFingerprintNotice;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;->this$0:Lcom/samsung/android/settings/KnoxFingerprintNotice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxFingerprintNotice$2;->this$0:Lcom/samsung/android/settings/KnoxFingerprintNotice;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxFingerprintNotice;->finish()V

    return-void
.end method
