.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnEnrollCancelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;->this$0:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->-wrap1(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    return-void
.end method
