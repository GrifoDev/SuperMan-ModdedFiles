.class Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;
.super Ljava/lang/Object;
.source "FaceFasterRecognition.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;->this$1:Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;->this$1:Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->-wrap0(Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment$2;->this$1:Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceFasterRecognition$FaceFasterRecognitionFragment;->finish()V

    return-void
.end method
